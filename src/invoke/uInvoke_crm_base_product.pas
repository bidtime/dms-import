unit uInvoke_crm_base_product;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TInvoke_crm_base_product = class(TInvokeBase)
  private
  public
    class function insert(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
  end;

implementation

{ TInvoke_crm_base_product }

class function TInvoke_crm_base_product.insert(const json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
begin
  Result := inherited post('api/dms/import/crm_base_product/insert',
    json, msg, tmConn, tmUpdate);
end;

end.

