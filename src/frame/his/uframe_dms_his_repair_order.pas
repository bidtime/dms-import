unit uframe_dms_his_repair_order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  Tframe_dms_his_repair_order = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
    function postDataSet(const json: string; var msg:string): boolean; override;
  end;

implementation

uses uInvoke_dms_his_repair_order;

{$R *.dfm}

// api/dms/import/dms_his_repair_order/insert

{
	"id": 22,
	"store_id": 1,
	"order_no": "order_no",
	"repair_type": "repair_type",
	"custom_name": "custom_name",
	"custom_mobile": "custom_mobile",
	"repair_time": "2019-08-07 00:00:00",
	"plate_no": "plate_no",
	"model_name": "model_name",
	"mileage": 1,
	"consultant_name": "consultant_name",
	"product_money": 1,
	"workhour_money": 1,
	"package_money": 1,
	"additional_money": 1,
	"total_discount": 1,
	"predict_date": "2019-08-07 00:00:00",
	"create_time": "2019-08-07 00:00:00"
}

{ Tframe_dms_his_repair_order }

function Tframe_dms_his_repair_order.postDataSet(const json: string;
  var msg: string): boolean;
begin
  Result := TInvoke_dms_his_repair_order.insert(json, msg);
end;

end.
