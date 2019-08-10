unit uframe_dms_finance_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  Tframe_dms_finance_client = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/dms_finance_client/insert

{
	"id": 53,
	"store_id": 1,
	"client_code": "501",
	"client_name": "client_name",
	"short_name": "short_name",
	"retrieval_code": "501",
	"address": "address",
	"postcode": "postcode",
	"prov": 1,
	"city": 1,
	"phone": "phone",
	"fax": "fax",
	"register_address": "register_address",
	"work_address": "work_address",
	"business_register": "business_register",
	"tax_register": "tax_register",
	"finance_name": "finance_name",
	"finance_phone": "finance_phone",
	"main_name": "main_name",
	"main_phone": "main_phone",
	"main_duty": "main_duty",
	"reserve_name": "reserve_name",
	"reserve_phone": "reserve_phone",
	"reserve_duty": "reserve_duty",
	"account_period": "account_period",
	"temp_period": "temp_period",
	"max_debt": 1,
	"temp_debt": 1,
	"receivable": 1,
	"acc_receivable": 1,
	"acc_receipt": 1,
	"status": 1,
	"creator": 1,
	"create_time": "2019-08-07 23:26:11",
	"account_opener": "account_opener",
	"account_name": "account_name",
	"account_num": "account_num"
}

end.
