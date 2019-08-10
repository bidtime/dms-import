unit uExcelReadUtils;

interface

uses
  Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, System.JSON.Types;

type
  TExcelReadUtils = class
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure importExcel(const fName: string; dataSet: TClientDataSet);
  end;

implementation

uses OleServer, Excel2000, Comobj, windows, Forms;

class procedure TExcelReadUtils.importExcel(const fName: string; dataSet: TClientDataSet);
VAR
  I,J,i1:INTEGER;
  col,row:integer;
  MsExcel,WBook,WSheet:OLEVARIANT;
begin
  DataSet.Close;
  try
    MsExcel:= CreateOleObject('Excel.Application');
    WBook:=MsExcel.Application;
    wbook.workbooks.Open(fName);
    WBook.Visible:= false;
    WSheet:=WBook.worksheets[1];
  except begin
      Application.Messagebox('您取消了操作或 Excel   没有安装!','ERROR!', MB_ICONERROR + mb_Ok);
      exit;
    end;
  end;

  row:=WSheet.UsedRange.Rows.Count;      //行
  col:=WSheet.UsedRange.columns.Count;     //列
  if (row=1) or (col = 0)  then
  begin
    Application.Messagebox('该excel文件没有数据！请确认!', 'ERROR!', MB_ICONERROR + mb_Ok);
    //showmessage('该excel文件没有数据！请确认');
    exit;
  end;

  //创建字段名表
  DataSet.FieldDefs.Clear;
  for i:=1 to col do
    begin
    with DataSet.FieldDefs.AddFieldDef do
      begin
      Name := WSheet.cells[1,i].Value;
      Size := 50;
      DataType := ftString;
      end;
    end;
  //动态创建数据集
  DataSet.CreateDataSet;
  //激活和打开该数据集
  DataSet.Open;
  //-------------
  with DataSet do
  begin
    open;
    for i:=1 to row-1 do    //要增加的行数
    begin
      if DataSet.RecordCount<>0 then   //  存在，加入临时表  ，退出本次循环
      begin
        DataSet.Append ;
        for i1:=1 to col do
           begin
           DataSet.FieldByName(WSheet.cells[1,i1].Value).AsString := WSheet.cells[i+1,i1].Value;
           end;

        DataSet.Post;
        continue;
      end;
      Append; //不存在，继续
      for j:=0 to col-1 do   //列
      begin

        Fields[j].Value:= WSheet.cells[i+1,j+1].Value;
      end;
      Post;
    end;
  end;
  wbook.workbooks.close;
end;

end.
