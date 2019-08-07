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
  uJsonSUtils in 'src\utils\uJsonSUtils.pas',
  uHttpPostData in 'src\utils\uHttpPostData.pas',
  uCharSplit in '..\delphiutils\src\utils\uCharSplit.pas',
  uFrmLogin in 'src\frame\uFrmLogin.pas' {frameLogin: TFrame},
  uFrameUrlResult in 'src\frame\uFrameUrlResult.pas' {frameUrlResult: TFrame},
  uframe_storeroom_shelflocation in 'src\frame\uframe_storeroom_shelflocation.pas' {frame_dms_storeroom_shelflocation: TFrame},
  uframe_dms_repair_workhour in 'src\frame\uframe_dms_repair_workhour.pas' {frame_dms_repair_workhour: TFrame},
  uframe_dms_his_repair_order in 'src\frame\uframe_dms_his_repair_order.pas' {frame_dms_his_repair_order: TFrame},
  uframe_dms_his_repair_order_product in 'src\frame\uframe_dms_his_repair_order_product.pas' {frame_dms_his_repair_order_product: TFrame},
  uframe_dms_his_repair_order_workhours in 'src\frame\uframe_dms_his_repair_order_workhours.pas' {frame_dms_his_repair_order_workhours: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TdmCarGoods, dmCarGoods);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
