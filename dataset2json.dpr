program dataset2json;

uses
  Vcl.Forms,
  uDmBase in 'src\dm\uDmBase.pas' {dmBase: TDataModule},
  uDmCarGoods in 'src\dm\uDmCarGoods.pas' {dmCarGoods: TDataModule},
  uFrmMain in 'src\uFrmMain.pas' {frmMain},
  uDbConfig in 'src\dm\uDbConfig.pas',
  uDataSetConvertJson in 'src\utils\uDataSetConvertJson.pas',
  uDataSetConvertSql in 'src\utils\uDataSetConvertSql.pas',
  uCommEvents in 'src\utils\uCommEvents.pas',
  uHttpUtils in 'src\utils\uHttpUtils.pas',
  uLogFile in 'src\utils\uLogFile.pas',
  uLog4me in 'src\utils\uLog4me.pas',
  uUploadDTO in 'src\utils\uUploadDTO.pas',
  uJsonSUtils in 'src\utils\uJsonSUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TdmCarGoods, dmCarGoods);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
