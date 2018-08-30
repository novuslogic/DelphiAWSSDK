unit Amazon.DelphiRESTClient;

interface

uses classes, SysUtils, Amazon.Interfaces, REST.Client, REST.Types,
  REST.HttpClient;

const
  cAccept = CONTENTTYPE_APPLICATION_JSON + ', ' + CONTENTTYPE_TEXT_PLAIN +
    '; q=0.9, ' + CONTENTTYPE_TEXT_HTML + ';q=0.8,';
  cAcceptCharset = 'UTF-8, *;q=0.8';
  cUserAgent = 'Embarcadero RESTClient/' + RESTCLIENT_VERSION;

type
  TAmazonDelphiRestClient = class(TInterfacedObject, IAmazonRestClient)
  private
    fsAccept: string;
    fsAcceptCharset: string;
    fsContent_type: string;
    fiErrorCode: Integer;
    fsErrorMessage: String;
    fsUserAgent: string;
    FHttpClient: TRESTHTTP;
  protected
    function GetResponseCode: Integer;
    function GetResponseText: String;
    function GetContent_type: string;
    function GetErrorCode: Integer;
    procedure SetContent_type(value: string);
    function GetErrorMessage: String;
    function GetAcceptCharset: string;
    procedure SetAcceptCharset(value: string);
    function GetAccept: string;
    procedure SetAccept(value: string);
    function GetUserAgent: string;
    procedure SetUserAgent(value: string);
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

constructor TAmazonDelphiRestClient.Create;
begin
  fsContent_type := '';
  fiErrorCode := 0;
  fsErrorMessage := '';
  fsAccept := '';
  fsAcceptCharset :='';
  fsUserAgent := '';

  FHttpClient := TRESTHTTP.Create;
end;

destructor TAmazonDelphiRestClient.Destory;
begin
  FHttpClient.Free;
end;

procedure TAmazonDelphiRestClient.AddHeader(aName, aValue: UTF8String);
begin
  FHttpClient.Request.CustomHeaders.SetValue(aName, aValue);
end;

procedure TAmazonDelphiRestClient.Post(aUrl: string; aRequest: UTF8String;
  var aResponse: UTF8String);
Var
  FSource, FResponseContent: TStringStream;
begin
  Try
    Try
      FSource := TStringStream.Create(aRequest, TEncoding.ANSI);
      FSource.Position := 0;

      FResponseContent := TStringStream.Create;

      FHttpClient.Request.Accept := Accept;
      FHttpClient.Request.AcceptCharset := AcceptCharset;
      FHttpClient.Request.UserAgent := UserAgent;
      FHttpClient.Request.ContentType := Content_type;

      FHttpClient.Post(aUrl, FSource, FResponseContent);

      aResponse := FResponseContent.DataString;

    Except
      on E: Exception do
      begin
        // fiErrorCode := E.Message
        fsErrorMessage := E.Message;

        if Trim(aResponse) = '' then
          aResponse := fsErrorMessage;
      end;
    end;
  Finally
    FResponseContent.Free;
    FSource.Free;
  End;
end;

function TAmazonDelphiRestClient.GetResponseCode: Integer;
begin
  Result := FHttpClient.ResponseCode;
end;

function TAmazonDelphiRestClient.GetResponseText: String;
begin
  Result := FHttpClient.ResponseText;
end;

function TAmazonDelphiRestClient.GetContent_type: string;
begin
  Result := fsContent_type;
end;

function TAmazonDelphiRestClient.GetErrorCode: Integer;
begin
  Result := fiErrorCode;
end;

procedure TAmazonDelphiRestClient.SetContent_type(value: string);
begin
  fsContent_type := value;
end;

function TAmazonDelphiRestClient.GetErrorMessage: String;
begin
  Result := fsErrorMessage;
end;

function TAmazonDelphiRestClient.GetUserAgent: string;
begin
  if Trim(fsUserAgent) = '' then
    fsUserAgent := cUserAgent;

  Result := fsUserAgent;
end;

procedure TAmazonDelphiRestClient.SetUserAgent(value: string);
begin
  fsUserAgent := value;
end;

function TAmazonDelphiRestClient.GetAcceptCharset: string;
begin
  if Trim(fsAcceptCharset) = '' then
    fsAcceptCharset := cAcceptCharset;

  Result := fsAcceptCharset;
end;

procedure TAmazonDelphiRestClient.SetAcceptCharset(value: string);
begin
  fsAcceptCharset := value;
end;

function TAmazonDelphiRestClient.GetAccept: string;
begin
  if Trim(fsAccept) = '' then
    fsAccept := cAccept;

  Result := fsAccept;
end;

procedure TAmazonDelphiRestClient.SetAccept(value: string);
begin
  fsAccept := value;
end;

end.
