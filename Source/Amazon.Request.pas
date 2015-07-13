unit Amazon.Request;

interface

Uses Amazon.Interfaces;

type
  TAmazonRequest = class(TInterfacedObject, IAmazonRequest)
  private
    fsamz_date: UTF8String;
    fsdate_stamp: UTF8String;
    fssecret_key: UTF8String;
    fsaccess_key: UTF8String;
    fsservice: UTF8String;
    fsendpoint: UTF8String;
    fstarget: UTF8String;
    fsregion: UTF8String;
    fsrequest_parameters: UTF8String;
    fshost: UTF8String;
  protected
    function getsecret_key: UTF8String;
    procedure setsecret_key(value: UTF8String);
    function getaccess_key: UTF8String;
    procedure setaccess_key(value: UTF8String);
    function gettarget: UTF8String;
    procedure settarget(value: UTF8String);
    function getservice: UTF8String;
    procedure setservice(value: UTF8String);
    function getendpoint: UTF8String;
    procedure setendpoint(value: UTF8String);
    function getregion: UTF8String;
    procedure setregion(value: UTF8String);
    function getrequest_parameters: UTF8String;
    procedure setrequest_parameters(value: UTF8String);
    function gethost: UTF8String;
    procedure sethost(value: UTF8String);
    function getamz_date: UTF8String;
    procedure setamz_date(value: UTF8String);
    function getdate_stamp: UTF8String;
    procedure setdate_stamp(value: UTF8String);
  public
    property secret_key: UTF8String read getsecret_key write setsecret_key;
    property access_key: UTF8String read getaccess_key write setaccess_key;

    property target: UTF8String read gettarget write settarget;
    property service: UTF8String read getservice write setservice;
    property endpoint: UTF8String read getendpoint write setendpoint;

    property host: UTF8String read gethost write sethost;
    property region: UTF8String read getregion write setregion;
    property request_parameters: UTF8String read getrequest_parameters write setrequest_parameters;

    property amz_date: UTF8String read getamz_date write setamz_date;
    property date_stamp: UTF8String read getdate_stamp write setdate_stamp;

  end;

implementation


function TAmazonRequest.getsecret_key: UTF8String;
begin
  Result := fssecret_key;
end;

procedure TAmazonRequest.setsecret_key(value: UTF8String);
begin
  fssecret_key := value;
end;

function TAmazonRequest.getrequest_parameters: UTF8String;
begin
  result := fsrequest_parameters;
end;

procedure TAmazonRequest.setrequest_parameters(value: UTF8String);
begin
  fsrequest_parameters := value;
end;

function TAmazonRequest.getaccess_key: UTF8String;
begin
  Result := fsaccess_key;
end;

procedure TAmazonRequest.setaccess_key(value: UTF8String);
begin
  fsaccess_key := value;
end;

function TAmazonRequest.gettarget: UTF8String;
begin
  Result := fstarget;
end;

procedure TAmazonRequest.settarget(value: UTF8String);
begin
  fstarget := value;
end;

function TAmazonRequest.getservice: UTF8String;
begin
  Result := fsservice;
end;

procedure TAmazonRequest.setservice(value: UTF8String);
begin
  fsservice := value;
end;

function TAmazonRequest.getregion: UTF8String;
begin
  Result := fsregion;
end;

procedure TAmazonRequest.setregion(value: UTF8String);
begin
  fsregion := value;
end;

function TAmazonRequest.gethost: UTF8String;
begin
  Result := fshost;
end;

procedure TAmazonRequest.sethost(value: UTF8String);
begin
  fshost := value;
end;

function TAmazonRequest.getendpoint: UTF8String;
begin
  Result := fsendpoint;
end;

procedure TAmazonRequest.setendpoint(value: UTF8String);
begin
  fsendpoint := value;
end;

function TAmazonRequest.getamz_date: UTF8String;
begin
  result := fsamz_date;
end;

procedure TAmazonRequest.setamz_date(value: UTF8String);
begin
  fsamz_date := Value;
end;
function TAmazonRequest.getdate_stamp: UTF8String;
begin
  Result := fsdate_stamp;
end;

procedure TAmazonRequest.setdate_stamp(value: UTF8String);
begin
  fsdate_stamp := Value;
end;

end.
