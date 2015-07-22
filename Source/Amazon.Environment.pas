unit Amazon.Environment;

interface

Uses System.SysUtils;

const
  AWS_REGION = 'AWS_REGION';
  AWS_ACCESS_KEY_ID = 'AWS_ACCESS_KEY_ID';
  AWS_SECRET_ACCESS_KEY = 'AWS_SECRET_ACCESS_KEY';
  AWS_CREDENTIAL_FILE = 'AWS_CREDENTIAL_FILE';

type
  TAmazonEnvironment = class
    protected
      fsaprofile: UTF8String;
      fssecret_key: UTF8String;
      fsaccess_key: UTF8String;
      fsregion: UTF8String;
      fscredential_file: UTF8String;
    private
      function getsecret_key: UTF8String;
      function getaccess_key: UTF8String;
      function getregion: UTF8String;
      function getcredential_file: UTF8String;
      function GetEnvVariableValue(const aVariablename: string): string;
    public
      constructor Create(aprofile: UTF8String = ''; acredential_file: UTF8String = '');
      property secret_key: UTF8String read getsecret_key;
      property access_key: UTF8String read getaccess_key;
      property region: UTF8String read getregion;
      property credential_file: UTF8String read getcredential_file;

      procedure GetEnvironmentVariables;
   end;


implementation


constructor TAmazonEnvironment.Create(aprofile: UTF8String = ''; acredential_file: UTF8String = '');
begin
  fsaprofile := aprofile;
  fscredential_file := acredential_file;
end;

function TAmazonEnvironment.GetEnvVariableValue(const aVariablename: string): string;
var
  BufSize: Integer;
begin
  Result := GetEnvironmentVariable(aVariablename);
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
end;

function TAmazonEnvironment.getcredential_file: UTF8String;
begin
  result := fscredential_file;
end;

end.
