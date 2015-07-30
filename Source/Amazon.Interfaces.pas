unit Amazon.Interfaces;

interface

type
  IAmazonClient = interface
  ['{24BF1E03-A208-4F7D-9FC7-875BC33D339F}']

  end;

  IAmazonRequest = interface
  ['{DA029A3F-05C2-4286-BF0B-4FE859AC8A64}']
    function getsecret_key: UTF8String;
    procedure setsecret_key(value: UTF8String);
    function getaccess_key: UTF8String;
    procedure setaccess_key(value: UTF8String);

    function gettarget: UTF8String;
    procedure settarget(value: UTF8String);
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

    function getrequest_parameters: UTF8String;
    procedure setrequest_parameters(value: UTF8String);

    property secret_key: UTF8String read getsecret_key write setsecret_key;
    property access_key: UTF8String read getaccess_key write setaccess_key;

    property target: UTF8String read gettarget write settarget;
    property service: UTF8String read getservice write setservice;
    property region: UTF8String read getregion write setregion;
    property host: UTF8String read gethost write sethost;
    property endpoint: UTF8String read getendpoint write setendpoint;

    property amz_date: UTF8String read getamz_date write setamz_date;
    property date_stamp: UTF8String read getdate_stamp write setdate_stamp;

    property request_parameters: UTF8String read getrequest_parameters write setrequest_parameters;
  end;


  IAmazonSignature = interface
  ['{56901E5E-BA6C-49E4-B730-CA58AE7F8DCB}']
    function getsignature: UTF8String;
    function getauthorization_header: UTF8String;
    function GetContent_type: UTF8String;
    procedure Sign(aRequest: IAmazonRequest);

    property Signature: UTF8String read getsignature;
    property Authorization_header: UTF8String read getauthorization_header;

  end;

implementation

end.
