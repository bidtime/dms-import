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
  uFrameUrlResult in 'src\frame\base\uFrameUrlResult.pas' {frameUrlResult: TFrame},
  uframe_dms_repair_workhour in 'src\frame\uframe_dms_repair_workhour.pas' {frame_dms_repair_workhour: TFrame},
  uframe_dms_his_repair_order in 'src\frame\his\uframe_dms_his_repair_order.pas' {frame_dms_his_repair_order: TFrame},
  uframe_dms_his_repair_order_product in 'src\frame\his\uframe_dms_his_repair_order_product.pas' {frame_dms_his_repair_order_product: TFrame},
  uframe_dms_his_repair_order_workhours in 'src\frame\his\uframe_dms_his_repair_order_workhours.pas' {frame_dms_his_repair_order_workhours: TFrame},
  uframe_dms_finance_client in 'src\frame\uframe_dms_finance_client.pas' {frame_dms_finance_client: TFrame},
  uframe_crm_base_product in 'src\frame\base\uframe_crm_base_product.pas' {frame_crm_base_product: TFrame},
  uframe_dms_storeroom_shelflocation in 'src\frame\base\uframe_dms_storeroom_shelflocation.pas' {frame_dms_storeroom_shelflocation: TFrame},
  uframe_dms_buy in 'src\frame\buy\uframe_dms_buy.pas' {frame_dms_buy: TFrame},
  uframe_dms_buy_detail in 'src\frame\buy\uframe_dms_buy_detail.pas' {frame_dms_buy_detail: TFrame},
  uframe_crm_base_supplier in 'src\frame\base\uframe_crm_base_supplier.pas' {frame_crm_base_supplier: TFrame},
  uInvokeBase in 'src\invoke\uInvokeBase.pas',
  uInvoke_dms_storeroom_shelflocation in 'src\invoke\uInvoke_dms_storeroom_shelflocation.pas',
  uInvoke_crm_base_supplier in 'src\invoke\uInvoke_crm_base_supplier.pas',
  uInvoke_crm_base_product in 'src\invoke\uInvoke_crm_base_product.pas',
  uExcelReadUtils in 'src\utils\uExcelReadUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TdmCarGoods, dmCarGoods);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
