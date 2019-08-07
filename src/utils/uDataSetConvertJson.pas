unit uDataSetConvertJson;

interface

uses
  System.SysUtils, System.Classes, Data.DB, System.json;

type
  TDataSetConvertJson = class
  private
    { Private declarations }
    class function toJson(const dataSet: TDataSet; const all: boolean=false; logs: TStrings = nil ): string; overload;
  public
    { Public declarations }
    //class function convert(const dataSet: TDataSet; const all: boolean=false; logs: TStrings = nil ): string; overload;
    class function row_json(const dataSet: TDataSet; logs: TStrings = nil ): string;
    class function rows_json(const dataSet: TDataSet; logs: TStrings = nil ): string;
  end;

implementation

uses variants;

class function TDataSetConvertJson.rows_json(const dataSet: TDataSet;
  logs: TStrings): string;
begin
  Result := toJson(dataSet, true, logs);
end;

class function TDataSetConvertJson.row_json(const dataSet: TDataSet;
  logs: TStrings): string;
begin
  Result := toJson(dataSet, false, logs);
end;

class function TDataSetConvertJson.toJson(const dataSet: TDataSet; const all: boolean;
  logs: TStrings): string;
  //0: string, 1:number, 2: datetime;
  {function isNumber(const ft: TFieldType): TJSONValue;
  begin
    if ft in [ftString] then begin
    end else if ft in [] then begin
    end;
  end;}

  function getJsonVal(const fld: TField): TJSONValue;
  var fieldName: string;
    dt: TFieldType;
  begin
    fieldName := fld.FieldName;
    dt := fld.DataType;
    if (fld.Value = null) then begin
      Result := TJSONNull.Create;
    end else if dt in [ftString, ftMemo, ftFmtMemo, ftFixedChar, ftWideString,
      ftFixedWideChar, ftWideMemo] then begin
      Result := TJSONString.Create(fld.value);
    end else if dt in [ftSmallint, ftInteger, ftWord,
      ftBytes, ftVarBytes, ftAutoInc, ftLargeint,
        ftLongWord, ftShortint, ftByte] then begin
      Result := TJSONNumber.Create(fld.AsLargeInt);
    end else if dt in [ftFloat, ftCurrency, ftBCD, ftADT,
        ftSingle] then begin
      Result := TJSONNumber.Create(fld.value);
    end else if dt in [ftBoolean] then begin
      if fld.AsBoolean then begin
        Result := TJSONNumber.Create(1);
      end else begin
        Result := TJSONNumber.Create(0);
      end;
    end else if dt in [ftDate, ftTime, ftDateTime, ftTimeStamp] then begin
      Result := TJSONString.Create(
        formatDateTime('yyyy-mm-dd hh:nn:ss', fld.value));
    end else begin
      Result := TJSONString.Create(fld.value);
    end;
  end;

  procedure rowToJson(jsonObj: TJSONObject);
  var J: integer;
    fld: TField;
  begin
    for J := 0 to dataSet.FieldCount - 1 do begin
      fld := dataSet.Fields[J];
      if assigned(logs) then begin
        logs.Add(fld.FieldName + ': ' + IntToStr( Integer(fld.DataType) ) );
      end;
      if fld.IsNull then begin
        jsonObj.AddPair(fld.FieldName, TJSONNull.Create);
        continue;
      end;
      jsonObj.AddPair(fld.FieldName, getJsonVal(fld));
    end;
  end;

  function rowsAllToJson(): string;
  var jsonArr: TJSONArray;
    jo: TJSONObject;
  begin
    jsonArr := TJSONArray.Create();
    try
      dataSet.First;
      while not dataSet.Eof do begin
        jo := TJSONObject.Create;
        rowToJson(jo);
        jsonArr.AddElement(jo);
        dataSet.Next;
      end;
      Result := jsonArr.ToJSON;
    finally
      jsonArr.Free;
    end;
  end;

  function rjson(): string;
  var jsonObj: TJSONObject;
  begin
    jsonObj := TJSONObject.Create;
    try
      rowToJson(jsonObj);
      Result := jsonObj.ToJSON;
    finally
      jsonObj.Free;
    end;
  end;

  {function tox(const S: string): string;
  var ss: TStringStream;
  begin
    ss := TStringStream.Create(S, TEncoding.UTF8);
    try
      ss.WriteString(S);
      Result := ss.DataString;
    finally
      ss.Free;
    end;
  end;}
var str: string;
begin
  if not all then begin
    str := rjson();
  end else begin
    str := rowsAllToJson();
  end;
  Result := str;
end;

{class function TDataSetConvertJson.convert(const dataSet: TDataSet; const useData: boolean; logs: TStrings): string;

  function getData(const jsonData: TJSONObject):  TJSONObject;
  var
    jsonObj: TJSONObject;
  begin
    jsonObj := TJSONObject.Create;
    jsonObj.AddPair('state', TJSONNumber.Create(0));
    jsonObj.AddPair('msg', TJSONString.Create(''));
    jsonObj.AddPair('data', jsonData);
    Result := jsonObj;
  end;

begin
  if dataSet.Active = false then begin
    exit;
  end;
  Result := toJson(dataSet, all, logs);
end;}

end.
