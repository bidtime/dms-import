unit uFrameUrlResult;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FireDAC.VCLUI.Memo, Vcl.ExtCtrls, uUploadDTO, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, System.JSON.Types;

type
  TframeUrlResult = class(TFrame)
    Label11: TLabel;
    Label12: TLabel;
    memoCtx: TMemo;
    edtUrl: TEdit;
    btnPost: TButton;
    Splitter1: TSplitter;
    memoResult: TMemo;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    dataset: TClientDataSet;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    btnImport: TButton;
    cbxRows: TCheckBox;
    procedure btnImportClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure cbxExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function Serialize<T>(const u: T; const fm: TJsonFormatting=TJsonFormatting.None): string; static;
    class function Deserialize<T>(const S: string): T; static;
    //procedure server(const srvPort: string);
    procedure postA<K>(const rst: K); overload;
    procedure addLog(const S: string); overload;
    procedure addLog(const b: boolean; const data, msg: string); overload;
    function postDataSet(const json: string; var msg:string): boolean; virtual; abstract;
    class function row_json(const dataSet: TDataSet; logs: TStrings = nil ): string;
  end;

implementation

uses uCharSplit, uHttpPostData, uJsonSUtils, OleServer, Excel2000,
  ADODB, Comobj, uDataSetConvertJson, uExcelReadUtils;

{$R *.dfm}

procedure TframeUrlResult.btnImportClick(Sender: TObject);
begin
  if opendialog1.Execute then begin  //关联到文件
//    if opendialog1.FileName='' then
//       abort;
//      wbook.workbooks.Open(opendialog1.FileName);
//    end;
    TExcelReadUtils.importExcel(opendialog1.FileName, self.dataset);
  end;
end;

procedure TframeUrlResult.btnPostClick(Sender: TObject);

  function doPostJson(const json: string): boolean;
  var msg: string;
  begin
    // convert remove reson field
    Result := postDataSet(json, msg);
    self.addlog(Result, json, msg);
    if not Result then begin
      // msg, reson, 刘明, 2019-08-11
      //反写reson
    end;
  end;

  procedure postDataSetx();
    function doPostData(dataSet: TDataSet): boolean;
    var msg: string;
      json: string;
    begin
      // convert remove reson field
      json := TDataSetConvertJson.row_json(dataset);
      self.memoCtx.Text := json;
      Result := doPostJson(json);
    end;

  begin
    if (not dataSet.Active) then begin
      ShowMessage('请先导入excel数据');
      Exit;
    end;
    if (dataSet.RecordCount<=0) then begin
      ShowMessage('当前无数据');
      Exit;
    end;
    //
    if not self.cbxRows.Checked then begin
      if not doPostData(dataSet) then begin
      end;
    end else begin
      dataSet.First;
      while not dataset.eof do begin
        if not doPostData(dataSet) then begin
        end;
        dataset.Next;
      end;
    end;
  end;
begin
  if self.btnImport.Enabled then begin
    postDataSetx;
  end else begin
    doPostJson(self.memoCtx.Text);
  end;
end;

procedure TframeUrlResult.cbxExcelClick(Sender: TObject);
begin
  self.btnImport.Enabled := TCheckBox(Sender).Checked;
end;

procedure TframeUrlResult.addLog(const S: string);
begin
  self.memoResult.Lines.Add('  ' + S);
end;

class function TframeUrlResult.Serialize<T>(const u: T;
  const fm: TJsonFormatting): string;
begin
  Result := TJsonSUtils.Serialize<T>(u, fm);
end;

class function TframeUrlResult.Deserialize<T>(const S: string): T;
begin
  Result := TJsonSUtils.Deserialize<T>(S);
end;

procedure TframeUrlResult.addlog(const b: boolean; const data, msg: string);
//var msg, data: string;
  //b: boolean;
begin
  //b := rst.success;
  //self.memoResult.Lines.Add('url:' + self.edtUrl.Text);
  //self.memoResult.Lines.Add('ctx:' + self.memoCtx.Text);
  self.memoResult.Lines.Add('  ----  ');
  self.memoResult.Lines.Add('  rst:' + BoolToStr(b, true));
  self.memoResult.Lines.Add('  msg:' + msg);
  self.memoResult.Lines.Add('  data:' + data);
  //self.memoResult.Lines.Add('  ' + TJsonSUtils.Serialize(rst));
  self.memoResult.Lines.Add('  ----  ');
end;

class function TframeUrlResult.row_json(const dataSet: TDataSet;
  logs: TStrings): string;
begin
  Result := TDataSetConvertJson.row_json(dataSet, logs);
end;

procedure TframeUrlResult.postA<K>(const rst: K);
//var msg, data: string;
  //b: boolean;
begin
  //b := rst.success;
  //self.memoResult.Lines.Add('url:' + self.edtUrl.Text);
  //self.memoResult.Lines.Add('ctx:' + self.memoCtx.Text);
  self.memoResult.Lines.Add('  ----  ');
  //self.memoResult.Lines.Add('  rst:' + BoolToStr(rst.success, true));
  //self.memoResult.Lines.Add('  msg:' + rst.msg);
  //self.memoResult.Lines.Add('  data:' + rst.data);
  self.memoResult.Lines.Add('  ' + TJsonSUtils.Serialize(rst));
  self.memoResult.Lines.Add('  ----  ');
end;

{procedure TframeUrlResult.server(const srvPort: string);
  function getUrl(S: string; srvPort: string): string;
  var tmp: string;
  begin
    if S.StartsWith('/') then begin
      S := S.Substring(1, S.Length);
    end;
    if not srvPort.EndsWith('/') then begin
      //srvPort := srvPort.Substring(0, S.Length - 1);
      srvPort := srvPort + '/';
    end;
    if S.startsWith('http') then begin
      if srvPort.StartsWith('http') then begin
        tmp := TCharSplit.getSplitIdx(srvPort, '/', 2);
        Result := TCharSplit.setSplitIdx(S, '/', 2, tmp);
      end else begin
        Result := TCharSplit.setSplitIdx(S, '/', 2, srvPort);
      end;
    end else begin
      Result := srvPort + S;
    end;
  end;
begin
  self.edtUrl.text := getUrl(self.edtUrl.Text, srvPort);
end;}

end.
