unit uInvoke_crm_member_car;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TInvoke_crm_member_car = class(TInvokeBase)
  private
  public
    class function insert(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
//    class function insert(const data: TDataSet; var msg: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
  end;

implementation

{ TInvoke_crm_member_car }

class function TInvoke_crm_member_car.insert(const json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
begin
  Result := inherited post('api/dms/import/crm_member_car/insert',
    json, msg, tmConn, tmUpdate);
end;

//class function TInvoke_crm_member_car.insert(const json: string; var msg: string;
//  const tmConn, tmUpdate: integer): TReturnDTO<TReturnData>;
//var dto: TReturnDTO<Integer>;
//begin
//  dto := inherited post<integer>('api/dms/import/crm_member_car/insert',
//    json, msg, tmConn, tmUpdate);
//  Result;
//end;

//class function TInvoke_crm_member_car.insert(const data: TDataSet; var msg: string;
//  const tmConn, tmUpdate: integer): boolean;
////var dto: TReturnDTO<Integer>;
//begin
//  //post<integer>('api/dms/import/crm_member_car/insert',
//  //  row_json(data), tmConn, tmUpdate);
//  Result := inherited post<integer>('api/dms/import/crm_member_car/insert',
//    data, msg, tmConn, tmUpdate);
//end;

end.

