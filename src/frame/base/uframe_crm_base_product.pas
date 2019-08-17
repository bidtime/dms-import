unit uframe_crm_base_product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameUrlResult, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  Tframe_crm_base_product = class(TframeUrlResult)
  private
    { Private declarations }
  public
    { Public declarations }
    function postDataSet(const json: string; var msg:string): boolean; override;
  end;

implementation

uses uInvoke_crm_base_product;

{$R *.dfm}

// api/dms/import/crm_base_product/insert

{
	"act_count": 1,
	"apply_serie": "apply_serie",
	"apply_type": "apply_type",
	"bar_code": "bar_code",
	"base_num": 1,
	"brief_desc": "brief_desc",
	"c_time": 1,
	"car_model": "car_model",
	"code": "489",
	"cost_type": "other",
	"createTime": 1566021881654,
	"creatorId": 1,
	"creatorName": "1",
	"delFlag": 0,
	"desc": "desc",
	"edate": 1566021881654,
	"figure": "figure",
	"good_type_id": 1,
	"good_unit_id": 1,
	"grade_1": 1,
	"grade_2": 1,
	"grade_3": 1,
	"heavy_buyer_price": 1,
	"index_code": "index_code",
	"install_way": 1,
	"is_common": 1,
	"is_fav": 1,
	"is_free": 1,
	"is_member_discount": "1",
	"is_weixin": 1,
	"last_buy_price": 1,
	"last_price": 1,
	"last_price_notax": 1,
	"load_index": "load_index",
	"location_name": "location_name",
	"maintain_cycle": 1,
	"mall_price": 1,
	"model": "model",
	"modifierId": 1,
	"modifierName": "1",
	"modifyTime": 1566021881654,
	"name": "name",
	"name_trim": "name_trim",
	"oil_capacity": "oil_capacity",
	"oil_class": "oil_class",
	"oil_viscosity": "oil_viscosity",
	"origin": "origin",
	"origin_price": 1,
	"pic1": "pic1",
	"pic2": "pic2",
	"pic3": "pic3",
	"platform": 1,
	"pmodel": 1,
	"points": 1,
	"points_to_money": 1,
	"product_brand": 1,
	"product_type_id": 1,
	"proxy_count": 1,
	"ptype": "deposit",
	"refund_count": 1,
	"repair_price": 1,
	"rest_payment": 1,
	"sales_price": 1,
	"sdate": 1566021881654,
	"send_type": 1,
	"speed_level": "speed_level",
	"status": 1,
	"stock_lowest": 1,
	"supplier_id": 1,
	"tire_diameter": "tire_diameter",
	"tire_flat": "tire_flat",
	"tire_speed_level": "tire_speed_level",
	"tire_width": "tire_width",
	"unit": "unit",
	"vid": 1,
	"weixin_mall_type": 1,
	"work_hour": 1
}

{ Tframe_crm_base_product }

function Tframe_crm_base_product.postDataSet(const json: string;
  var msg: string): boolean;
begin
  Result := TInvoke_crm_base_product.insert(json, msg);
end;

end.
