unit uFrameUrlResult;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FireDAC.VCLUI.Memo, Vcl.ExtCtrls;

type
  TframeUrlResult = class(TFrame)
    Label11: TLabel;
    Label12: TLabel;
    memoCtx: TMemo;
    edtUrl: TEdit;
    Button2: TButton;
    Splitter1: TSplitter;
    memoResult: TMemo;
    GroupBox1: TGroupBox;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure server(const srvPort: string);
  end;

implementation

uses uCharSplit, uHttpPostData;

{$R *.dfm}

procedure TframeUrlResult.Button2Click(Sender: TObject);
var msg, data: string;
  b: boolean;
begin
  b := THttpPostData.post(self.edtUrl.Text, self.memoCtx.Text, 5000, 20000, msg, data);
  self.memoResult.Lines.Add('url:' + self.edtUrl.Text);
  self.memoResult.Lines.Add('ctx:' + self.memoCtx.Text);
  self.memoResult.Lines.Add('  ----  ');
  self.memoResult.Lines.Add('  rst:' + BoolToStr(b, true));
  self.memoResult.Lines.Add('  msg:' + msg);
  self.memoResult.Lines.Add('  data:' + data);
  self.memoResult.Lines.Add('  ----  ');
end;

procedure TframeUrlResult.server(const srvPort: string);
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
end;

end.
