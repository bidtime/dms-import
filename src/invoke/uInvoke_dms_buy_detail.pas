unit uInvoke_dms_buy_detail;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TInvoke_dms_buy_detail = class(TInvokeBase)
  private
  public
    class function insert(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
  end;

implementation

{ TInvoke_dms_buy_detail }

class function TInvoke_dms_buy_detail.insert(const json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
begin
  Result := inherited post('api/dms/import/dms_buy_detail/insert',
    json, msg, tmConn, tmUpdate);
end;

end.

