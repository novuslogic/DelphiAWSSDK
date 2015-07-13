unit Amazon.SignatureV4;

interface

Uses Classes, Amazon.Utils, SysUtils, IdGlobal, Amazon.Interfaces, Amazon.Request;

const
   awsALGORITHM = 'AWS4-HMAC-SHA256';
   awsSIGN = 'AWS4';
   awsContent_typeV4 = 'application/x-amz-json-1.0';

function GetSignatureV4Key(aSecret_Access_Key, adateStamp, aregionName, aserviceName: UTF8String): TidBytes;
function GetSignatureV4(aSignatureV4Key: TidBytes; aString_to_sign: UTF8String): UTF8String;

type
   TAmazonSignatureV4 = class(TInterfacedObject,IAmazonSignature)
     protected
     private
       fsmethod: UTF8String;
       fscontent_type: UTF8String;
       fsresponse: UTF8String;
       fscanonical_uri: UTF8String;
       fscanonical_queryString: UTF8String;
       fscanonical_headers: UTF8String;
       fssigned_headers: UTF8String;
       fspayload_hash: UTF8String;
       fscanonical_request: UTF8String;
       fsalgorithm: UTF8String;
       fscredential_scope: UTF8String;
       fsString_to_sign: UTF8String;
       fSignatureV4Key: TidBytes;
       fsSignature: UTF8String;
     public
       function Signature(aRequest: IAmazonRequest): UTF8String;
     end;



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

function TAmazonSignatureV4.Signature(aRequest: IAmazonRequest): UTF8String;
begin
  fsmethod := 'POST';

  fsContent_type := awsContent_typeV4;

  fscanonical_uri := '/';

  fscanonical_querystring := '';

  fscanonical_headers := 'content-type:' + fscontent_type + char(10) + 'host:' + aRequest.host + char(10)  + 'x-amz-date:' +
      aRequest.amz_date + char(10)  + 'x-amz-target:' + aRequest.target + char(10);

  fssigned_headers := 'content-type;host;x-amz-date;x-amz-target';

  fspayload_hash := HashSHA256(aRequest.request_parameters);

  fscanonical_request := fsmethod + char(10)  + fscanonical_uri + char(10)  + fscanonical_querystring + char(10)  + fscanonical_headers + char(10)  + fssigned_headers + char(10)  + fspayload_hash;

  fsalgorithm := awsALGORITHM;
  fscredential_scope := aRequest.date_stamp + '/' + aRequest.region + '/' + aRequest.service + '/' + 'aws4_request';

  fsstring_to_sign := fsalgorithm + char(10)  +  aRequest.amz_date + char(10)  +  fscredential_scope + char(10)  +  HashSHA256(fscanonical_request);

  fSignatureV4Key := GetSignatureV4Key(aRequest.secret_key, aRequest.date_stamp, aRequest.region, aRequest.service);

  result :=  GetSignatureV4(fSignatureV4Key, fsstring_to_sign );
end;


end.
