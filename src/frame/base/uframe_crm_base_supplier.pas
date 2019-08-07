unit uframe_crm_base_supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tframe_crm_base_supplier = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/crm_base_supplier/insert

{
	"id": 191,
	"store_id": 1,
	"supplier_store_id": 1,
	"name": "name",
	"code": "653",
	"tel": "tel",
	"mobile": "mobile",
	"fax": "fax",
	"mail": "mail",
	"cdate": "2019-08-08 00:00:00",
	"postcode": "postcode",
	"website": "website",
	"linkman": "linkman",
	"business_id": 1,
	"business_num": "business_num",
	"boss": "boss",
	"province": 1,
	"city": 1,
	"address": "address",
	"bank": "bank",
	"account": "account",
	"open_date": "2019-08-08 00:00:00",
	"business_scope": "business_scope",
	"payable": 1,
	"acc_payable": 1,
	"acc_payment": 1,
	"remark": "",
	"status": 1,
	"is_del": 1,
	"type": 1
}

end.
