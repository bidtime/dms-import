unit uHttpPostData;

interface

uses
  Classes, uUploadDTO;

type
  THttpPostData = class
  private
  public
    class function post(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer): boolean; overload;
    class function post(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer; var msg: string): boolean; overload;
    class function post(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer; var msg, data: string): boolean; overload;
    class function post<K>(const url: string; const json: string;
      const tmConn: integer; const tmUpdate: integer): TReturnDTO<K>; overload;
    class function get<K>(const url, params: string; const tmConn,
      tmUpdate: integer): TReturnDTO<K>; static;
  end;

implementation

uses System.JSON.Serializers, SysUtils, uHttpUtils, StrUtils, uLog4me;

{ THttpPostData }

class function THttpPostData.post(const url: string; const json: string;
  const tmConn: integer; const tmUpdate: integer; var msg: string): boolean;
var data: string;
begin
  Result := THttpPostData.post(url, json, tmConn, tmUpdate, msg, data);
end;

class function THttpPostData.post(const url: string; const json: string;
  const tmConn: integer; const tmUpdate: integer; var msg, data: string): boolean;
var dto: TReturnDTO<variant>;
begin
  dto := THttpPostData.post<variant>(url, json, tmConn, tmUpdate);
  msg := dto.msg;
  data := dto.data;
  Result := dto.success;
end;
{var S: string;
begin
  Result := false;
  try
    S := THttpUtils.postJson(url, json, tmConn, tmUpdate);
    Result := TReturnDTOUtils.success(S, msg, data);
    if Result then begin
      log4info(format('上传数据成功: %s, %s ', [url, json]));
    end else begin
      log4info(format('上传数据失败: %s, %s, %s ', [url, msg, json]));
    end;
  except
    on E: Exception do begin
      log4error(format('上传数据出错: %s, %s, %s ', [url, e.Message, json]));
    end;
  end;
end;}

class function THttpPostData.post<K>(const url: string; const json: string;
  const tmConn: integer; const tmUpdate: integer): TReturnDTO<K>;
var S: string;
begin
  try
    S := THttpUtils.postJson(url, json, tmConn, tmUpdate);
    Result := TReturnDTOUtils.tryDeSerialize<K>(S);
    if Result.success then begin
      log4info(format('post data成功: %s, %s ', [url, json]));
    end else begin
      log4info(format('post data失败: %s, %s, %s ', [url, Result.msg, json]));
      if Result.code<>0 then begin
        log4error(format('post data失败: %s, %s, %s ', [url, Result.msg, json]));
        raise TNoLoginException.Create(Result.msg);
      end else begin
        log4info(format('post data失败: %s, %s, %s ', [url, Result.msg, json]));
      end;
    end;
  except
    on E: Exception do begin
      log4error(format('post data出错: %s, %s, %s ', [url, e.Message, json]));
    end;
  end;
end;

class function THttpPostData.get<K>(const url, params: string;
  const tmConn: integer; const tmUpdate: integer): TReturnDTO<K>;
var S: string;
begin
  try
    S := THttpUtils.get(url, params, tmConn, tmUpdate);
    Result := TReturnDTOUtils.tryDeSerialize<K>(S);
    if Result.success then begin
      log4info(format('get data成功: %s, %s ', [url, params]));
    end else begin
      log4info(format('get data失败: %s, %s, %s ', [url, Result.msg, params]));
      if Result.code<>0 then begin
        raise Exception.Create(Result.msg);
      end;
    end;
  except
    on E: Exception do begin
      log4error(format('get data出错: %s, %s, %s ', [url, e.Message, params]));
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


