unit uInvokeUser;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TStoresInfo = record
  public
    id: integer;
    name: string;
  end;

  TInvoke_user = class(TInvokeBase)
  private
  public
    class function login(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
    class function getStores(const tmConn: integer=2000;
      const tmUpdate: integer=20000): TReturnDTO<TStoresInfo>; static;
  end;

implementation

{ TInvoke_crm_base_product }

class function TInvoke_user.login(const json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
begin
  Result := post('api/dms/import/user/login',
    json, msg, tmConn, tmUpdate);
end;

class function TInvoke_user.getStores(const tmConn, tmUpdate: integer): TReturnDTO<TStoresInfo>;
var dto: TReturnDTO<TStoresInfo>;
begin
  dto := get<TStoresInfo>('api/dms/import/user/getStores',
    '', tmConn, tmUpdate);
  Result := dto;
end;

end.

