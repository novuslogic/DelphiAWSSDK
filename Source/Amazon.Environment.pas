unit Amazon.Environment;

interface

Uses System.SysUtils;

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
      function getaccess_key: UTF8String;
      function getregion: UTF8String;
      function getcredential_file: UTF8String;
      function getprofile: UTF8String;

      function GetEnvVariableValue(const aVariablename: string): string;
    public
      property secret_key: UTF8String read getsecret_key;
      property access_key: UTF8String read getaccess_key;
      property region: UTF8String read getregion;
      property credential_file: UTF8String read getcredential_file;
      property profile: UTF8String read getprofile;

      procedure GetEnvironmentVariables;
   end;


implementation

function TAmazonEnvironment.GetEnvVariableValue(const aVariablename: string): string;
var
  BufSize: Integer;
begin
  Result := Trim(GetEnvironmentVariable(aVariablename));
end;


function TAmazonEnvironment.getaccess_key: UTF8String;
begin
  Result := fsaccess_key;
end;

function TAmazonEnvironment.getsecret_key: UTF8String;
begin
  Result := fssecret_key;
end;

function TAmazonEnvironment.getregion: UTF8String;
begin
  Result := fsregion;
end;

procedure TAmazonEnvironment.GetEnvironmentVariables;
begin
  fsaccess_key := GetEnvVariableValue(AWS_ACCESS_KEY_ID);
  fssecret_key := GetEnvVariableValue(AWS_SECRET_ACCESS_KEY);
  fsregion := GetEnvVariableValue(AWS_REGION);
  fscredential_file := GetEnvVariableValue(AWS_CREDENTIAL_FILE);
  fsProfile := GetEnvVariableValue(AWS_PROFILE);
end;

function TAmazonEnvironment.getcredential_file: UTF8String;
begin
  result := fscredential_file;
end;

function TAmazonEnvironment.getprofile: UTF8String;
begin
  Result := fsProfile;
end;

end.
