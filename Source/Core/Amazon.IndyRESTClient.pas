unit Amazon.IndyRestClient;

interface

uses IdSSLOpenSSL, IPPeerAPI, IdHttp, classes, SysUtils, IdStack, IdGlobal,
  IPPeerClient, Amazon.Interfaces;

type
  TAmazonIndyRestClient = class(TInterfacedObject, IAmazonRestClient)
  private
    fsContent_type: string;
    fiErrorCode: Integer;
    fsErrorMessage: String;
  protected
    FIdHttp: IIPHTTP;

    function GetResponseCode: Integer;
    function GetResponseText: String;
    function GetContent_type: string;
    function GetErrorCode: Integer;
    procedure SetContent_type(value: string);
    function GetErrorMessage: String;
  public
    constructor Create;
    destructor Destory;

    procedure AddHeader(aName, aValue: UTF8String);

    procedure Post(aUrl: string; aRequest: UTF8String;
      var aResponse: UTF8String);

    property ResponseCode: Integer read GetResponseCode;
    property ResponseText: string read GetResponseText;
    property Content_type: String read GetContent_type write SetContent_type;
    property ErrorCode: Integer read GetErrorCode;
    property ErrorMessage: String read GetErrorMessage;
  end;

implementation

constructor TAmazonIndyRestClient.Create;
begin
  fsContent_type := '';
  fiErrorCode := 0;
  fsErrorMessage := '';

  FIdHttp := PeerFactory.CreatePeer('', IIPHTTP, nil) as IIPHTTP;
  FIdHttp.IOHandler := PeerFactory.CreatePeer('', IIPSSLIOHandlerSocketOpenSSL,
    nil) as IIPSSLIOHandlerSocketOpenSSL;

  FIdHttp.Request.CustomHeaders.FoldLines := false;

end;

destructor TAmazonIndyRestClient.Destory;
begin
  FreeandNil(FIdHttp);
end;

procedure TAmazonIndyRestClient.AddHeader(aName, aValue: UTF8String);
begin
  FIdHttp.Request.CustomHeaders.AddValue(aName, aValue);
end;

procedure TAmazonIndyRestClient.Post(aUrl: string; aRequest: UTF8String;
  var aResponse: UTF8String);
Var
  FSource, FResponseContent: TStringStream;
begin

  try
    FSource := TStringStream.Create(aRequest, TEncoding.ANSI);
    FSource.Position := 0;

    FResponseContent := TStringStream.Create;

    FIdHttp.Request.ContentType := Content_type;

    FIdHttp.DoPost(aUrl, FSource, FResponseContent);

    aResponse := FResponseContent.DataString;

    FResponseContent.Free;
    FSource.Free;

  except
    on E: EIPHTTPProtocolExceptionPeer do
    begin
      fiErrorCode := E.ErrorCode;
      fsErrorMessage := E.ErrorMessage;

      if Trim(aResponse) = '' then
        aResponse := fsErrorMessage;

      FIdHttp.Disconnect;

    end;

  end;
end;

function TAmazonIndyRestClient.GetResponseCode: Integer;
begin
  Result := FIdHttp.ResponseCode;
end;

function TAmazonIndyRestClient.GetResponseText: String;
begin
  Result := FIdHttp.ResponseText;
end;

function TAmazonIndyRestClient.GetContent_type: string;
begin
  Result := fsContent_type;
end;

function TAmazonIndyRestClient.GetErrorCode: Integer;
begin
  Result := fiErrorCode;
end;

procedure TAmazonIndyRestClient.SetContent_type(value: string);
begin
  fsContent_type := value;
end;

function TAmazonIndyRestClient.GetErrorMessage: String;
begin
  Result := fsErrorMessage;
end;

end.
