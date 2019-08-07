unit uframe_dms_repair_workhour;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tframe_dms_repair_workhour = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/dms_repair_workhour/insert

{
	"id": 13,
	"store_id": 1,
	"workhour_code": "88",
	"workhour_name": "workhour_name",
	"review_workhour": 1,
	"review_price": 1,
	"rated_workhour": 1,
	"rated_price": 1,
	"is_universal": "0",
	"is_discount": "0",
	"is_sheetmetal": "0",
	"retrieval_code": "retrieval_code",
	"state": "0",
	"workhour_level": "C",
	"creator": 1,
	"create_time": "2019-08-07 19:32:12",
	"is_wash_car": "0"
}

end.
