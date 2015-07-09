unit Amazon.SignatureV4;

interface

Uses Classes, Amazon.Utils, SysUtils, IdGlobal;

const
   awsALGORITHM = 'AWS4-HMAC-SHA256';
   awsSIGN = 'AWS4';

function GetSignatureV4Key(aSecret_Access_Key, adateStamp, aregionName, aserviceName: UTF8String): TidBytes;
function GetSignatureV4(aSignatureV4Key: TidBytes; aString_to_sign: UTF8String): UTF8String;

implementation

function GetSignatureV4Key(aSecret_Access_Key, adateStamp, aregionName, aserviceName: UTF8String): TidBytes;
Var
  kService: TidBytes;
  kRegion: TidBytes;
  kSecret: TidBytes;
  kDate: TidBytes;
  kSigning: TidBytes;
begin
   kSecret := ToBytes(UTF8Encode(awsSIGN + aSecret_Access_Key));
   kDate := HmacSHA256Ex(kSecret, adateStamp);
   kRegion := HmacSHA256Ex(kDate, aregionName );
   kService := HmacSHA256Ex(kRegion, aserviceName);
   kSigning := HmacSHA256Ex(kService, 'aws4_request');

   Result := kSigning;
end;

function GetSignatureV4(aSignatureV4Key: TidBytes; aString_to_sign: UTF8String): UTF8String;
begin
  Result :=BytesToHex(HmacSHA256Ex(aSignatureV4Key, aString_to_sign));
end;



end.
