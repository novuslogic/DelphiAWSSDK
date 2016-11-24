{$I ..\DelphiAWSSDK.inc}
{$I ..\DelphiVersions.Inc}
unit Amazon.Utils;

interface

uses Classes,IdDateTimeStamp, Soap.XSBuiltIns, System.SysUtils, System.DateUtils, idGlobal,
     IdHMACSHA1, IdSSLOpenSSL, IdHashSHA, IdHashMessageDigest, idHash,
     Windows, Data.DBXJSONReflect,
     {$IFDEF DELPHIXE8_UP}
     System.JSON,
     {$ENDIF}
     Data.DBXJSON;



function DateTimeToISO8601(const aDateTime: TDateTime): string;
procedure GetAWSDate_Stamp(const aDateTime: Tdatetime; var aamz_date, adate_stamp: UTF8String);
function UTCNow: TDateTime;
function HmacSHA256Ex(const AKey: TidBytes;aStr: UTF8String): TidBytes;
function BytesToHex(const Bytes: array of byte): string;
function HexToBytes(const S: String): TidBytes;
function HashSHA256(aStr: String): String;
function GetAWSUserDir: UTF8String;
function GetAWSHost(aendpoint: UTF8String): UTF8String;
function DoubleQuotedStr(const S: UTF8String): UTF8String;
function DeepCopy(aValue: TObject): TObject;

implementation

function DoubleQuotedStr(const S: UTF8String): UTF8String;
begin
  Result := S;
  Result := '"' + Result + '"';
end;


function DateTimeToISO8601(const aDateTime: TDateTime): string;
Var
  D: TXSDateTime;
  Year, Month, Day: Word;
  Hour, Min, Sec, MSec: Word;
  FDateTime: TDateTime;
begin
  DecodeDate(aDateTime, Year, Month, Day);
  DecodeTime(aDateTime, Hour, Min, Sec, MSec);

  FDateTime := EncodeDateTime(Year, Month, Day, Hour, Min, Sec,  MSec);

  D := TXSDateTime.Create;
  D.AsDateTime := FDateTime;

  Result := D.NativeToXS;

  D.Free;
end;


//http://docs.aws.amazon.com/general/latest/gr/sigv4-date-handling.html

procedure GetAWSDate_Stamp(const aDateTime: Tdatetime; var aamz_date, adate_stamp: UTF8String);
begin
  aamz_date := FormatDateTime('YYYYMMDD"T"HHMMSS"Z"', aDateTime);

  adate_stamp := FormatDateTime('YYYYMMDD', aDateTime);
end;


function UTCNow: TDateTime;
begin
  Result := TTimeZone.Local.ToUniversalTime(Now);
end;

function HmacSHA256Ex(const AKey: TidBytes;aStr: UTF8String): TidBytes;
Var
  FHMACSHA256: TIdHMACSHA256;
begin
  if not IdSSLOpenSSL.LoadOpenSSLLibrary then Exit;

  FHMACSHA256:= TIdHMACSHA256.Create;
  try
    FHMACSHA256.Key := aKey;

    Result := FHMACSHA256.HashValue(ToBytes(AStr));
  finally
    FHMACSHA256.Free;
  end;
end;

function BytesToHex(const Bytes: array of byte): string;
const
  HexSymbols = '0123456789ABCDEF';
var
  i: integer;
  lsOutput: String;
begin
  SetLength(lsOutput, 2*Length(Bytes));
  for i :=  0 to Length(Bytes)-1 do begin
    LsOutput[1 + 2*i + 0] := HexSymbols[1 + Bytes[i] shr 4];
    lsOutput[1 + 2*i + 1] := HexSymbols[1 + Bytes[i] and $0F];
  end;

  Result := Lowercase(lsOutput);
end;

function HexToBytes(const S: String): TidBytes;
begin
  SetLength(Result, Length(S) div 2);
  SetLength(Result, HexToBin(PChar(S), Pointer(Result), Length(Result)));
end;

function HashSHA256(aStr: String): String;
var
  FHashSHA256: TIdHashSHA256;
begin

  if not IdSSLOpenSSL.LoadOpenSSLLibrary then Exit;

  FHashSHA256:= TIdHashSHA256.Create;
  try
    Result := Lowercase(FHashSHA256.HashStringAsHex(UTF8String(AStr)));
 finally
    FHashSHA256.Free;
  end;
end;

function GetAWSUserDir: UTF8String;
begin
  Result := GetEnvironmentVariable('USERPROFILE') + '\.aws';

  if Not DirectoryExists(Result) then Result := '';

end;

function GetAWSHost(aendpoint: UTF8String): UTF8String;
var
   fsnewhost: UTF8String;
begin
  fsnewhost := StringReplace(aendpoint, 'http://', '',
                              [rfReplaceAll, rfIgnoreCase]);

  fsnewhost := StringReplace(fsnewhost, 'https://', '',
                              [rfReplaceAll, rfIgnoreCase]);

  result := StringReplace(fsnewhost, '/', '',
                              [rfReplaceAll, rfIgnoreCase]);

end;


function DeepCopy(aValue: TObject): TObject;
var
  MarshalObj: TJSONMarshal;
  UnMarshalObj: TJSONUnMarshal;
  JSONValue: TJSONValue;
begin
  Result:= nil;
  MarshalObj := TJSONMarshal.Create;
  UnMarshalObj := TJSONUnMarshal.Create;
  try
    JSONValue := MarshalObj.Marshal(aValue);
    try
      if Assigned(JSONValue) then
        Result:= UnMarshalObj.Unmarshal(JSONValue);
    finally
      JSONValue.Free;
    end;
  finally
    MarshalObj.Free;
    UnMarshalObj.Free;
  end;
end;



end.
