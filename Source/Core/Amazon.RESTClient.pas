unit Amazon.RESTClient;

interface

uses IdSSLOpenSSL, IPPeerAPI, IdHttp, classes, SysUtils, IdStack, IdGlobal,
     IPPeerClient, Amazon.Interfaces;

type
  TAmazonRESTClient = class(TInterfacedObject,IAmazonRESTClient)
  private
    fsContent_type: string;
    fiErrorCode: Integer;
    fsErrorMessage: String;
  protected
    FIdHttp: IIPHTTP;

    function GetResponseCode: Integer;
    function GetResponseText: String;
    function GetContent_type: string;
    function GetErrorCode: integer;
    procedure SetContent_type(value: string);
    function GetErrorMessage: String;
  public
    constructor Create;
    destructor Destory;

    procedure AddHeader(aName, aValue: UTF8String);

    procedure Post(aUrl: string; aRequest: UTF8String; var aResponse: UTF8String);

    property ResponseCode: Integer read GetResponseCode;
    property ResponseText: string read GetResponseText;
    property Content_type: String read GetContent_type write SetContent_type;
    property ErrorCode: Integer read GetErrorCode;
    property ErrorMessage: String read GetErrorMessage;
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


procedure TAmazonRESTClient.Post(aUrl: string; aRequest: UTF8String; var aResponse: UTF8String);
Var
  FSource,
  FResponseContent: TStringStream;
begin

  try
    FSource := TStringStream.Create(aRequest);
    FSource.Position := 0;

    FResponseContent := TStringStream.Create;

    FIdHttp.Request.ContentType := Content_type;

    FIdHttp.DoPost(AUrl, FSource, FResponseContent);

    aResponse := FResponseContent.DataString;

    FResponseContent.Free;
    FSource.Free;

  except
    on E: EIPHTTPProtocolExceptionPeer do
    begin
      fiErrorCode := E.ErrorCode;
      fsErrorMessage := E.ErrorMessage;

      aResponse := fsErrorMessage;

      FIdHttp.Disconnect;

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

function TAmazonRESTClient.GetContent_type: string;
begin
  result := fsContent_type;
end;

function TAmazonRESTClient.GetErrorCode: integer;
begin
  result := fiErrorCode;
end;

procedure TAmazonRESTClient.SetContent_type(value: string);
begin
  fsContent_type := Value;
end;

function TAmazonRESTClient.GetErrorMessage: String;
begin
  result := fsErrorMessage;
end;


end.
