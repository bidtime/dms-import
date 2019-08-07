unit uHttpPostData;

interface

uses
  Classes;

type
  THttpPostData = class
  public
    class function post(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer): boolean; overload;
    class function post(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer; var msg: string): boolean; overload;
    class function post(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer; var msg, data: string): boolean; overload;
  end;

implementation

uses System.JSON.Serializers, SysUtils, uUploadDTO, uHttpUtils, StrUtils, uLog4me;

{ THttpPostData }

class function THttpPostData.post(const url: string; const json: string;
  const tmConn: integer; const tmUpdate: integer; var msg: string): boolean;
var S: string;
begin
  Result := false;
  try
    S := THttpUtils.postJson(url, json, tmConn, tmUpdate);
    Result := TReturnDTOUtils.success(S, msg);
    if Result then begin
      log4info(format('�ϴ����ݳɹ�: %s, %s ', [url, json]));
    end else begin
      log4info(format('�ϴ�����ʧ��: %s, %s, %s ', [url, msg, json]));
    end;
  except
    on E: Exception do begin
      log4error(format('�ϴ����ݳ���: %s, %s, %s ', [url, e.Message, json]));
    end;
  end;
end;

class function THttpPostData.post(const url: string; const json: string;
  const tmConn: integer; const tmUpdate: integer; var msg, data: string): boolean;
var S: string;
begin
  Result := false;
  try
    S := THttpUtils.postJson(url, json, tmConn, tmUpdate);
    Result := TReturnDTOUtils.success(S, msg, data);
    if Result then begin
      log4info(format('�ϴ����ݳɹ�: %s, %s ', [url, json]));
    end else begin
      log4info(format('�ϴ�����ʧ��: %s, %s, %s ', [url, msg, json]));
    end;
  except
    on E: Exception do begin
      log4error(format('�ϴ����ݳ���: %s, %s, %s ', [url, e.Message, json]));
    end;
  end;
end;

class function THttpPostData.post(const url, json: string; const tmConn,
  tmUpdate: integer): boolean;
var msg: string;
begin
  Result := THttpPostData.post(url, json, tmConn, tmUpdate, msg);
end;

end.


