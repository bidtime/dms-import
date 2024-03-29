unit uframe_dms_his_repair_order_product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  Tframe_dms_his_repair_order_product = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
    function postDataSet(const json: string; var msg:string): boolean; override;
  end;

implementation
uses uInvoke_dms_his_repair_order_product;
{$R *.dfm}

// api/dms/import/dms_his_repair_order_product/insert

{
	"id": 3,
	"store_id": 1,
	"order_no": "802",
	"product_code": "product_code",
	"product_name": "product_name",
	"product_model": "product_model",
	"product_price": 1,
	"product_amount": 1,
	"worker_name": "worker_name",
	"dispatcher": 1,
	"oper_time": "2019-08-07 20:46:07",
	"create_time": "2019-08-07 20:46:07"
}

{ Tframe_dms_his_repair_order_product }

function Tframe_dms_his_repair_order_product.postDataSet(const json: string;
  var msg: string): boolean;
begin
  Result := TInvoke_dms_his_repair_order_product.insert(json, msg);
end;

end.
