unit Amazon.Interfaces;

interface

type
  IAmazonRESTClient = interface
    ['{E6CD9C73-6C92-4996-AEC3-3EC836629E6D}']
    function GetAccept: string;
    procedure SetAccept(value: string);
    function GetAcceptCharset: string;
    procedure SetAcceptCharset(value: string);
    function GetUserAgent: string;
    procedure SetUserAgent(value:string);
    function GetResponseCode: Integer;
    function GetResponseText: String;
    function GetContent_type: string;
    function GetErrorCode: Integer;
    procedure SetContent_type(value: string);
    function GetErrorMessage: String;

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

  IAmazonClient = interface
    ['{24BF1E03-A208-4F7D-9FC7-875BC33D339F}']
  end;

  IAmazonMarshaller = interface
    ['{132F6BC1-8F07-4A2E-B763-02C4CF66008C}']
  end;

  IAmazonResponse = interface
    ['{022460F3-2D8A-4784-9207-825242851A12}']
    procedure setresponsecode(value: Integer);
    procedure setreponsetext(value: UTF8String);
    procedure setreponse(value: UTF8String);
    function GetResponseCode: Integer;
    function getreponsetext: UTF8String;
    function getreponse: UTF8String;
    property ResponseText: UTF8String read getreponsetext write setreponsetext;
    property ResponseCode: Integer read GetResponseCode write setresponsecode;
    property Response: UTF8String read getreponse write setreponse;
  end;

  IAmazonRequest = interface
    ['{DA029A3F-05C2-4286-BF0B-4FE859AC8A64}']
    function getsecret_key: UTF8String;
    procedure setsecret_key(value: UTF8String);
    function getaccess_key: UTF8String;
    procedure setaccess_key(value: UTF8String);

    function gettarget: UTF8String;
    function gettargetPrefix: UTF8String;
    procedure settargetPrefix(value: UTF8String);
    function getservice: UTF8String;
    procedure setservice(value: UTF8String);
    function getregion: UTF8String;
    procedure setregion(value: UTF8String);
    function gethost: UTF8String;
    procedure sethost(value: UTF8String);
    function getamz_date: UTF8String;
    procedure setamz_date(value: UTF8String);
    function getdate_stamp: UTF8String;
    procedure setdate_stamp(value: UTF8String);
    function getendpoint: UTF8String;
    procedure setendpoint(value: UTF8String);
    function getoperationName: UTF8String;
    procedure setoperationName(value: UTF8String);
    function getauthorization_header: UTF8String;
    procedure setauthorization_header(value: UTF8String);

    function getrequest_parameters: UTF8String;
    procedure setrequest_parameters(value: UTF8String);

    property secret_key: UTF8String read getsecret_key write setsecret_key;
    property access_key: UTF8String read getaccess_key write setaccess_key;

    property targetPrefix: UTF8String read gettargetPrefix
      write settargetPrefix;
    property operationName: UTF8String read getoperationName
      write setoperationName;
    property service: UTF8String read getservice write setservice;
    property region: UTF8String read getregion write setregion;
    property host: UTF8String read gethost write sethost;
    property endpoint: UTF8String read getendpoint write setendpoint;

    property amz_date: UTF8String read getamz_date write setamz_date;
    property date_stamp: UTF8String read getdate_stamp write setdate_stamp;

    property target: UTF8String read gettarget;

    property authorization_header: UTF8String read getauthorization_header
      write setauthorization_header;

    property request_parameters: UTF8String read getrequest_parameters
      write setrequest_parameters;
  end;

  IAmazonSignature = interface
    ['{56901E5E-BA6C-49E4-B730-CA58AE7F8DCB}']
    function getsignature: UTF8String;
    function getauthorization_header: UTF8String;
    function GetContent_type: UTF8String;
    procedure Sign(aRequest: IAmazonRequest);

    property Signature: UTF8String read getsignature;
    property authorization_header: UTF8String read getauthorization_header;

  end;

implementation

end.
