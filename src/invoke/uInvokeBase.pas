unit uInvokeBase;

interface

uses classes, uUploadDTO;

type
  TInvokeBase = class(TObject)
  private
    class function getWeb(const api: string): string; static;
//  public
//    Server: string;
//    Port: string;
  public
    class var G_WEBURL: string;
    class constructor Create;
    constructor Create;
    destructor Destroy; override;
    //
    //class function post<K>(const url: string; const json: string;
    //  const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<K>; overload;
    class function post<K>(const url: string; const json: string;
      const tmConn: integer=2000; const tmUpdate: integer=20000): TReturnDTO<K>; overload;
  end;

implementation

uses SysUtils, uHttpPostData, uCharSplit;

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

class function TInvokeBase.post<K>(const url, json: string; const tmConn,
  tmUpdate: integer): TReturnDTO<K>;
var full: string;
begin
  full := getWeb(url);
  Result := THttpPostData.post<K>(full, json, tmConn, tmUpdate);
end;

end.

