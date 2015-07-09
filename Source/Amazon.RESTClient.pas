unit Amazon.RESTClient;

interface

uses IdSSLOpenSSL, IPPeerAPI, IdHttp, classes, SysUtils, IdStack, IdGlobal,
     IPPeerClient;

type
  TAmazonRESTClient = class
  private
    fsContent_type: string;
    fiErrorCode: Integer;
    fsErrorMessage: String;
  protected
    FIdHttp: IIPHTTP;

    function GetResponseCode: Integer;
    function GetResponseText: String;
  public
    constructor Create;
    destructor Destory;

    procedure AddHeader(aName, aValue: UTF8String);

    procedure Post(aUrl: string; aRequest: UTF8String);

    property ResponseCode: Integer
      read GetResponseCode;

    property ResponseText: string
       read GetResponseText;

    property Content_type: String
      read fsContent_type
      write fsContent_type;

    property ErrorCode: Integer
      read fiErrorCode;

    property ErrorMessage: String
      read fsErrorMessage;
  end;


implementation

constructor TAmazonRESTClient.Create;
begin
  fsContent_type := '';
  fiErrorCode := 0;
  fsErrorMessage := '';

  FIdHttp := PeerFactory.CreatePeer('', IIPHTTP, nil) as IIPHTTP;
  FIdHttp.IOHandler := PeerFactory.CreatePeer('', IIPSSLIOHandlerSocketOpenSSL, nil) as IIPSSLIOHandlerSocketOpenSSL;

  FIdHttp.Request.CustomHeaders.FoldLines := false;
end;

destructor TAmazonRESTClient.Destory;
begin
  FreeandNil(FIdHttp);
end;

procedure TAmazonRESTClient.AddHeader(aName, aValue: UTF8String);
begin
  FIdHttp.Request.CustomHeaders.AddValue(aName,aValue);
end;


procedure TAmazonRESTClient.Post(aUrl: string; aRequest: UTF8String);
Var
   RBody: TStringStream;
begin

  try
    RBody := TStringStream.Create(aRequest);
    RBody.Position := 0;

    FIdHttp.Request.ContentType := Content_type;
   // FIdHttp.Request.ContentEncoding := 'utf-8';

    FIdHttp.DoPost(AUrl, RBody)


  except
    on E: EIdHTTPProtocolException do
    begin
      fiErrorCode := E.ErrorCode;
      fsErrorMessage := E.ErrorMessage;

      if E.ErrorCode = 404 then
        exit;
     (*
      retryMode := hrmRaise;
      if assigned(OnError) then
        OnError(e.Message, e.ErrorMessage, e.ErrorCode, retryMode);
      if retryMode = hrmRaise then
        raise EHTTPError.Create(e.Message, e.ErrorMessage, e.ErrorCode)
      else if retryMode = hrmRetry then
        Post(AUrl, AContent, AResponse);
        *)
    end;
    on E: EIdSocketError do
    begin
      fiErrorCode := E.LastError;
      fsErrorMessage := E.Message;

      FIdHttp.Disconnect;
      (*
      retryMode := hrmRaise;
      if assigned(OnConnectionLost) then
        OnConnectionLost(e, retryMode);
      if retryMode = hrmRaise then
        raise
      else if retryMode = hrmRetry then
        Post(AUrl, AContent, AResponse);
        *)
    end;
  end;
end;

function TAmazonRESTClient.GetResponseCode: Integer;
begin
  Result := FIdHttp.ResponseCode;
end;

function TAmazonRESTClient.GetResponseText: String;
begin
  Result := FIdHttp.ResponseText;
end;


end.
