{$I ..\DelphiVersions.Inc}
unit Amazon.IndyRestClient;

interface

uses IdSSLOpenSSL, IPPeerAPI, IdHttp, classes, SysUtils, IdStack, IdGlobal,
  IPPeerClient, Amazon.Interfaces;

type
  TAmazonIndyRestClient = class(TInterfacedObject, IAmazonRestClient)
  private
    fsAccept: string;
    fsAcceptCharset: string;
    fsContent_type: string;
    fiErrorCode: Integer;
    fsErrorMessage: String;
    fsUserAgent: string;
    FIdHttp: IIPHTTP;
  protected
    function GetAcceptCharset: string;
    procedure SetAcceptCharset(value: string);
    function GetResponseCode: Integer;
    function GetResponseText: String;
    function GetContent_type: string;
    function GetErrorCode: Integer;
    procedure SetContent_type(value: string);
    function GetErrorMessage: String;
    function GetUserAgent: string;
    procedure SetUserAgent(value:string);
    function GetAccept: string;
    procedure SetAccept(value: string);
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

    property UserAgent: string read GetUserAgent write SetUserAgent;
    property AcceptCharset: string read GetAcceptCharset write SetAcceptCharset;
    property Accept: string read GetAccept write SetAccept;
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
    {$IFDEF DELPHIXE8_UP}
    FIdHttp.Request.UserAgent := UserAgent;
    {$ENDIF}


    FIdHttp.Request.Accept := Accept;
    {$IFDEF DELPHIXE8_UP}
    FIdHttp.Request.AcceptCharset := AcceptCharset;
    {$ENDIF}

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

function TAmazonIndyRestClient.GetUserAgent: string;
begin
  if (Trim(fsUserAgent) = '') then
    begin
      {$IFDEF DELPHIXE8_UP}
      if Assigned(FIdHttp.Request) then
        fsUserAgent := FIdHttp.Request.UserAgent;
      {$ENDIF}
    end;

  Result := fsUserAgent;
end;

procedure TAmazonIndyRestClient.SetUserAgent(value:string);
begin
  fsUserAgent := value;
end;

function TAmazonIndyRestClient.GetAcceptCharset: string;
begin
  if Trim(fsAcceptCharset) = '' then
    begin
      {$IFDEF DELPHIXE8_UP}
      if Assigned(FIdHttp.Request) then
       fsAcceptCharset :=  FIdHttp.Request.AcceptCharSet;
      {$ENDIF}
    end;

  Result := fsAcceptCharset;
end;

procedure TAmazonIndyRestClient.SetAcceptCharset(value:string);
begin
  fsAcceptCharset := value;
end;


function TAmazonIndyRestClient.GetAccept: string;
begin
  if Trim(fsAcceptCharset) = '' then
    begin
     if Assigned(FIdHttp.Request) then
       fsAccept :=  FIdHttp.Request.Accept;
    end;

  Result := fsAccept;
end;

procedure TAmazonIndyRestClient.SetAccept(value:string);
begin
  fsAccept := value;
end;



end.
