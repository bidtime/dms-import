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
      Application.Messagebox('��ȡ���˲����� Excel   û�а�װ!','ERROR!', MB_ICONERROR + mb_Ok);
      exit;
    end;
  end;

  row:=WSheet.UsedRange.Rows.Count;      //��
  col:=WSheet.UsedRange.columns.Count;     //��
  if (row=1) or (col = 0)  then
  begin
    Application.Messagebox('��excel�ļ�û�����ݣ���ȷ��!', 'ERROR!', MB_ICONERROR + mb_Ok);
    //showmessage('��excel�ļ�û�����ݣ���ȷ��');
    exit;
  end;

  //�����ֶ�����
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
  //��̬�������ݼ�
  DataSet.CreateDataSet;
  //����ʹ򿪸����ݼ�
  DataSet.Open;
  //-------------
  with DataSet do
  begin
    open;
    for i:=1 to row-1 do    //Ҫ���ӵ�����
    begin
      if DataSet.RecordCount<>0 then   //  ���ڣ�������ʱ��  ���˳�����ѭ��
      begin
        DataSet.Append ;
        for i1:=1 to col do
           begin
           DataSet.FieldByName(WSheet.cells[1,i1].Value).AsString := WSheet.cells[i+1,i1].Value;
           end;

        DataSet.Post;
        continue;
      end;
      Append; //�����ڣ�����
      for j:=0 to col-1 do   //��
      begin

        Fields[j].Value:= WSheet.cells[i+1,j+1].Value;
      end;
      Post;
    end;
  end;
  wbook.workbooks.close;
end;

end.
