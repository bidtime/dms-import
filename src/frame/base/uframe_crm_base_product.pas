unit uframe_crm_base_product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tframe_crm_base_product = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/crm_base_product/insert

{
	"id": 46,
	"store_id": 0,
	"location_code": "1",
	"location_name": "",
	"location_area": "",
	"function_type": 0,
	"occupy_status": "0",
	"room_type": "втсп",
	"from_store_id": 0,
	"remark": "",
	"status": "1"
}

end.
