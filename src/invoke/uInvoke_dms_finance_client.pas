unit uInvoke_dms_finance_client;

interface

uses classes, uUploadDTO, uInvokeBase, db;

type
  TInvoke_dms_finance_client = class(TInvokeBase)
  private
  public
    class function insert(const json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
//    class function insert(const data: TDataSet; var msg: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload;
  end;

implementation

{ TInvoke_dms_finance_client }

class function TInvoke_dms_finance_client.insert(const json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
begin
  Result := inherited post('api/dms/import/dms_finance_client/insert',
    json, msg, tmConn, tmUpdate);
end;

//class function TInvoke_dms_finance_client.insert(const json: string; var msg: string;
//  const tmConn, tmUpdate: integer): TReturnDTO<TReturnData>;
//var dto: TReturnDTO<Integer>;
//begin
//  dto := inherited post<integer>('api/dms/import/dms_finance_client/insert',
//    json, msg, tmConn, tmUpdate);
//  Result;
//end;

//class function TInvoke_dms_finance_client.insert(const data: TDataSet; var msg: string;
//  const tmConn, tmUpdate: integer): boolean;
////var dto: TReturnDTO<Integer>;
//begin
//  //post<integer>('api/dms/import/dms_finance_client/insert',
//  //  row_json(data), tmConn, tmUpdate);
//  Result := inherited post<integer>('api/dms/import/dms_finance_client/insert',
//    data, msg, tmConn, tmUpdate);
//end;

end.

