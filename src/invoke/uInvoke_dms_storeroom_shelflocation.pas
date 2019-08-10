unit uInvoke_dms_storeroom_shelflocation;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TInvoke_dms_storeroom_shelflocation = class(TInvokeBase)
  private
  public
//    class function insert(const json: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<Integer>; overload;
    class function insert(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
//    class function insert(const json: string; var msg, data: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
//    class function insert(const data: TDataSet;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<Integer>; overload;
  end;

implementation

{ TInvoke_dms_storeroom_shelflocation }

//class function TInvoke_dms_storeroom_shelflocation.insert(const json: string;
//  const tmConn, tmUpdate: integer): TReturnDTO<Integer>;
//begin
//  Result := inherited post<integer>('api/dms/import/dms_storeroom_shelflocation/insert',
//    json, tmConn, tmUpdate);
//end;}

class function TInvoke_dms_storeroom_shelflocation.insert(const json: string;
  var msg: string; const tmConn, tmUpdate: integer): boolean;
begin
  Result := inherited post('api/dms/import/dms_storeroom_shelflocation/insert',
    json, msg, tmConn, tmUpdate);
end;

//class function TInvoke_dms_storeroom_shelflocation.insert(const json: string;
//  var msg, data: string; const tmConn, tmUpdate: integer): boolean;
//begin
//  Result := inherited post('api/dms/import/dms_storeroom_shelflocation/insert',
//    json, msg, data, tmConn, tmUpdate);
//end;

//class function TInvoke_dms_storeroom_shelflocation.insert(const data: TDataSet;
//  const tmConn, tmUpdate: integer): TReturnDTO<Integer>;
//begin
//  Result := inherited post<integer>('api/dms/import/dms_storeroom_shelflocation/insert',
//    data, tmConn, tmUpdate);
//end;

end.

