unit uInvoke_dms_his_repair_order_workhours;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TInvoke_dms_his_repair_order_workhours = class(TInvokeBase)
  private
  public
    class function insert(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
//    class function insert(const data: TDataSet; var msg: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
  end;

implementation

{ TInvoke_dms_his_repair_order_workhours }

class function TInvoke_dms_his_repair_order_workhours.insert(const json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
begin
  Result := inherited post('api/dms/import/dms_his_repair_order_workhours/insert',
    json, msg, tmConn, tmUpdate);
end;

//class function TInvoke_dms_his_repair_order_workhours.insert(const json: string; var msg: string;
//  const tmConn, tmUpdate: integer): TReturnDTO<TReturnData>;
//var dto: TReturnDTO<Integer>;
//begin
//  dto := inherited post<integer>('api/dms/import/dms_his_repair_order_workhours/insert',
//    json, msg, tmConn, tmUpdate);
//  Result;
//end;

//class function TInvoke_dms_his_repair_order_workhours.insert(const data: TDataSet; var msg: string;
//  const tmConn, tmUpdate: integer): boolean;
////var dto: TReturnDTO<Integer>;
//begin
//  //post<integer>('api/dms/import/dms_his_repair_order_workhours/insert',
//  //  row_json(data), tmConn, tmUpdate);
//  Result := inherited post<integer>('api/dms/import/dms_his_repair_order_workhours/insert',
//    data, msg, tmConn, tmUpdate);
//end;

end.

