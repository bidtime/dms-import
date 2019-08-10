unit uframe_dms_buy_detail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  Tframe_dms_buy_detail = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/dms_buy_detail/insert

{
	"id": 142,
	"store_id": 1,
	"buy_number": "201928080005",
	"product_id": 1,
	"cost_price": "1",
	"cost_price_notax": "1",
	"buy_count": 1,
	"add_rate": 1,
	"amount": "1",
	"amount_notax": "1",
	"location_id": 1,
	"location_name": "location_name",
	"desc": null,
	"c_time": "2019-08-08 01:28:07",
	"status": 1
}

end.
