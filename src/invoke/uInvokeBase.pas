unit uInvokeBase;

interface

uses classes, uUploadDTO;

type
  TInvokeBase = class(TObject)
  private
    class function getWeb(const api: string): string; static;
  public
    class var G_WEBURL: string;
    class constructor Create;
    constructor Create;
    destructor Destroy; override;
    //
    class function post(const url, json: string; var msg: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload; static;
    class function post(const url, json: string; var msg, data: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): boolean; overload; static;
//    class function post<K>(const url: string; const json: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<K>; overload;
//    class function post<K>(const url: string; const json: string;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<K>; overload;
//    class function post<K>(const url: string; const data: TDataSet;
//      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<K>; overload;
//    class function post(const url: string; const data: TDataSet;
//      const tmConn: integer; const tmUpdate: integer; var msg: string): boolean; overload;
    class function get<K>(const url, params: string; const tmConn,
      tmUpdate: integer): TReturnDTO<K>; static;
  end;

implementation

uses SysUtils, uHttpPostData, uCharSplit, uDataSetConvertJson, db;

{ TCarType }

class constructor TInvokeBase.Create;
begin
end;

constructor TInvokeBase.Create;
begin
end;

destructor TInvokeBase.Destroy;
begin

end;

class function TInvokeBase.post(const url, json: string; var msg: string;
  const tmConn, tmUpdate: integer): boolean;
var data: string;
begin
  Result := TInvokeBase.post(url, json, msg, data, tmConn, tmUpdate);
end;

class function TInvokeBase.post(const url, json: string; var msg, data: string;
  const tmConn, tmUpdate: integer): boolean;
var full: string;
begin
  full := getWeb(url);
  Result := THttpPostData.post(full, json, tmConn, tmUpdate, msg, data);
end;

class function TInvokeBase.get<K>(const url, params: string; const tmConn,
  tmUpdate: integer): TReturnDTO<K>;
var full: string;
begin
  full := getWeb(url);
  Result := THttpPostData.get<K>(full, params, tmConn, tmUpdate);
end;

class function TInvokeBase.getWeb(const api: string): string;
  function getUrl(S: string; srvPort: string): string;
  var tmp: string;
  begin
    if S.StartsWith('/') then begin
      S := S.Substring(1, S.Length);
    end;
    if not srvPort.EndsWith('/') then begin
      //srvPort := srvPort.Substring(0, S.Length - 1);
      srvPort := srvPort + '/';
    end;
    if S.startsWith('http') then begin
      if srvPort.StartsWith('http') then begin
        tmp := TCharSplit.getSplitIdx(srvPort, '/', 2);
        Result := TCharSplit.setSplitIdx(S, '/', 2, tmp);
      end else begin
        Result := TCharSplit.setSplitIdx(S, '/', 2, srvPort);
      end;
    end else begin
      Result := srvPort + S;
    end;
  end;
begin
  Result := getUrl(api, G_WEBURL);
end;

//class function TInvokeBase.post(const url: string; const data: TDataSet;
//  const tmConn, tmUpdate: integer; var msg: string): boolean;
//var json:string;
//begin
//  json := TDataSetConvertJson.row_json(data);
//  Result := THttpPostData.post(url, json, tmConn, tmUpdate);
//end;

{class function TInvokeBase.post<K>(const url: string; const data: TDataSet;
  const tmConn, tmUpdate: integer): TReturnDTO<K>;
var json:string;
begin
  json := TDataSetConvertJson.row_json(data);
  Result := post<K>(url, json, tmConn, tmUpdate);
end;

class function TInvokeBase.post<K>(const url, json: string; const tmConn,
  tmUpdate: integer): TReturnDTO<K>;
var full: string;
begin
  full := getWeb(url);
  Result := THttpPostData.post<K>(full, json, tmConn, tmUpdate);
end;}

end.

