unit uframe_dms_buy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tframe_dms_buy = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/dms_buy/insert

{
	"id": 76,
	"buy_number": "201934060003",
	"store_id": 1,
	"contact_name": "contact_name",
	"contact_phone": "contact_phone",
	"buy_type_id": 1,
	"supplier_id": 1,
	"require_reach_date": "require_reach_date",
	"act_type": 1,
	"is_sale_proxy": 1,
	"act_name": "act_name",
	"creator": 1,
	"c_time": "2019-08-06 16:34:40",
	"buyer_id": 1,
	"buy_time": "2019-08-06 16:34:40",
	"executor": 1,
	"exec_time": "2019-08-06 16:34:40",
	"cashier": 1,
	"cashier_time": "2019-08-06 16:34:40",
	"receipts_no": "receipts_no",
	"status": 1,
	"desc": null,
	"app_number": "app_number",
	"generate_from": "generate_from",
	"original_number": "original_number",
	"delivery_address": "delivery_address",
	"delivery_way_id": 1,
	"recipient_name": "recipient_name",
	"recipient_mobile": "recipient_mobile"
}

end.
