unit Amazon.Environment;

interface

Uses {$IFNDEF FPC}
  System.SysUtils;
{$ELSE}
  SysUtils;
{$ENDIF}

const
  AWS_REGION = 'AWS_REGION';
  AWS_ACCESS_KEY_ID = 'AWS_ACCESS_KEY_ID';
  AWS_SECRET_ACCESS_KEY = 'AWS_SECRET_ACCESS_KEY';
  AWS_CREDENTIAL_FILE = 'AWS_CREDENTIAL_FILE';
  AWS_PROFILE = 'AWS_PROFILE';

type
  TAmazonEnvironment = class
  protected
    fsprofile: UTF8String;
    fssecret_key: UTF8String;
    fsaccess_key: UTF8String;
    fsregion: UTF8String;
    fscredential_file: UTF8String;
  private
    function getsecret_key: UTF8String;
    procedure setsecret_key(value: UTF8String);
    function getaccess_key: UTF8String;
    procedure setaccess_key(value: UTF8String);
    function getregion: UTF8String;
    procedure setregion(value: UTF8String);
    function getprofile: UTF8String;
    procedure setprofile(value: UTF8String);
    function getcredential_file: UTF8String;
    procedure setcredential_file(value: UTF8String);

    function GetEnvVariableValue(const aVariablename: string): string;
  public
    property profile: UTF8String read getprofile write setprofile;
    property credential_file: UTF8String read getcredential_file
      write setcredential_file;
    property region: UTF8String read getregion write setregion;
    property secret_key: UTF8String read getsecret_key write setsecret_key;
    property access_key: UTF8String read getaccess_key write setaccess_key;

    procedure GetEnvironmentVariables;
  end;

implementation

function TAmazonEnvironment.GetEnvVariableValue(const aVariablename
  : string): string;
var
  BufSize: Integer;
begin
  Result := Trim(GetEnvironmentVariable(aVariablename));
end;

procedure TAmazonEnvironment.GetEnvironmentVariables;
begin
  fsaccess_key := GetEnvVariableValue(AWS_ACCESS_KEY_ID);
  fssecret_key := GetEnvVariableValue(AWS_SECRET_ACCESS_KEY);
  fsregion := GetEnvVariableValue(AWS_REGION);
  fscredential_file := GetEnvVariableValue(AWS_CREDENTIAL_FILE);
  fsprofile := GetEnvVariableValue(AWS_PROFILE);
end;

function TAmazonEnvironment.getaccess_key: UTF8String;
begin
  Result := fsaccess_key;
end;

procedure TAmazonEnvironment.setaccess_key(value: UTF8String);
begin
  fsaccess_key := value;
end;

function TAmazonEnvironment.getsecret_key: UTF8String;
begin
  Result := fssecret_key;
end;

procedure TAmazonEnvironment.setsecret_key(value: UTF8String);
begin
  fssecret_key := value;
end;

function TAmazonEnvironment.getregion: UTF8String;
begin
  Result := fsregion;
end;

procedure TAmazonEnvironment.setregion(value: UTF8String);
begin
  fsregion := value;
end;

function TAmazonEnvironment.getprofile: UTF8String;
begin
  Result := fsprofile;
end;

procedure TAmazonEnvironment.setprofile(value: UTF8String);
begin
  fsprofile := value;
end;

function TAmazonEnvironment.getcredential_file: UTF8String;
begin
  Result := fscredential_file;
end;

procedure TAmazonEnvironment.setcredential_file(value: UTF8String);
begin
  fscredential_file := value;
end;

end.
