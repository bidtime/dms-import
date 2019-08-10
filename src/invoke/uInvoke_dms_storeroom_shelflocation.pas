unit uInvoke_dms_storeroom_shelflocation;

interface

uses classes, uUploadDTO, uInvokeBase;

type
  TInvoke_dms_storeroom_shelflocation = class(TInvokeBase)
  private
  public
    class function insert<K>(const json: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<K>;
  end;

implementation

{ TCarType }

class function TInvoke_dms_storeroom_shelflocation.insert<K>(const json: string;
  const tmConn, tmUpdate: integer): TReturnDTO<K>;
begin
  Result := inherited post<K>('api/dms/import/dms_storeroom_shelflocation/insert',
    json, tmConn, tmUpdate);
end;

end.

