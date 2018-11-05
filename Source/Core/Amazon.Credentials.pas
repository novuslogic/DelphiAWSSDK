unit Amazon.Credentials;

interface

uses Amazon.Environment, Amazon.Utils,
   {$IFNDEF FPC}
   System.SysUtils,
   {$ELSE}
   SysUtils,
   {$ENDIF}
   inifiles;

const
  aws_defaultcredential_file = 'credentials.ini';

type
  TAmazonCredentials = class(TAmazonEnvironment)
  private
  protected
  public
    function Iscredential_file: Boolean;
    procedure Loadcredential_file;
  end;

implementation

function TAmazonCredentials.Iscredential_file: Boolean;
begin
  Try
    result := True;

    credential_file := GetAWSUserDir;

    if credential_file <> '' then
      credential_file := credential_file + '\' + aws_defaultcredential_file;

  Finally
    if Not fileExists(credential_file) then
      result := False;
  End;
end;

procedure TAmazonCredentials.Loadcredential_file;
var
  FIniFile: TIniFile;
begin
  if Not fileExists(credential_file) then
    Exit;

  Try
    FIniFile := TIniFile.Create(credential_file);

    access_key := FIniFile.Readstring(profile, 'aws_access_key_id', access_key);
    secret_key := FIniFile.Readstring(profile, 'aws_secret_access_key',
      secret_key);
    region := FIniFile.Readstring(profile, 'aws_region', region);

  Finally
    FIniFile.Free;
  End;
end;

end.
