unit uframe_dms_his_repair_order_workhours;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  Tframe_dms_his_repair_order_workhours = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

// api/dms/import/dms_his_repair_order_workhours/insert

{
	"id": 2,
	"store_id": 1,
	"order_no": "8",
	"workhour_code": "workhour_code",
	"workhour_name": "workhour_name",
	"rated_workhour": 1,
	"work_price": 1,
	"worker_name": "worker_name",
	"dispatcher": 1,
	"oper_time": "2019-08-07 20:55:53",
	"create_time": "2019-08-07 20:55:53"
}

end.
