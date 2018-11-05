program CreateTable1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils,
  CustApp,
  Amazon.Client in 'Amazon.Client.pas',
  Amazon.Interfaces in 'Amazon.Interfaces.pas',
  Amazon.Credentials in 'Amazon.Credentials.pas',
  Amazon.Environment in 'Amazon.Environment.pas',
  Amazon.Utils in 'Amazon.Utils.pas',
  Amazon.Request in 'Amazon.Request.pas',
  Amazon.Response in 'Amazon.Response.pas',
  Amazon.IndyRESTClient in 'Amazon.IndyRESTClient.pas',
  Amazon.SignatureV4 in 'Amazon.SignatureV4.pas';

type

  { TCreateTable1 }

  TCreateTable1 = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

{ TCreateTable3 }

procedure TCreateTable1.DoRun;
var
  FAmazonRESTClient: TAmazonIndyRESTClient;
  FAmazonRequest: TAmazonRequest;
  FAmazonSignatureV4: TAmazonSignatureV4;
  FAmazonClient: TAmazonClient;
  FAmazonResponse:  IAmazonResponse;
begin
  try
    Try
      Writeln('DynamoDB API (CreateTable) using Amazon.Client class');

      FAmazonClient:= TAmazonClient.Create;
      FAmazonClient.endpoint := 'https://dynamodb.ap-southeast-2.amazonaws.com/';

      FAmazonClient.service := 'dynamodb';

      FAmazonRequest := TAmazonRequest.Create;
      FAmazonSignatureV4 := TAmazonSignatureV4.Create;
      FAmazonRESTClient := TAmazonIndyRESTClient.Create;


      FAmazonRequest.request_parameters :=  '{' +
        '"KeySchema": [{"KeyType": "HASH","AttributeName": "Id"}],' +
        '"TableName": "TestTable",' +
        '"AttributeDefinitions": [{"AttributeName": "Id","AttributeType": "S"}],' +
        '"ProvisionedThroughput": {"WriteCapacityUnits": 5,"ReadCapacityUnits": 5}' +
        '}';

      Writeln('Endpoint:'+FAmazonClient.endpoint);

      FAmazonRequest.targetPrefix := 'DynamoDB_20120810';
      FAmazonRequest.operationName := 'CreateTable';

      Writeln('Target:'+FAmazonRequest.Target);

      FAmazonResponse := FAmazonClient.execute(FAmazonRequest, fAmazonSignatureV4, FAmazonRESTClient);

      Writeln('ResponseCode:' + IntTostr( FAmazonResponse.ResponseCode));
      Writeln('ResponseStr:' +  FAmazonResponse.ResponseText);

      Writeln('Response:' + FAmazonResponse.Response);


      Writeln('Press [enter] to finish.');
      readln;
    Finally
      FAmazonClient.Free;
      FAmazonResponse := NIL;
    End;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Terminate;
end;

constructor TCreateTable1.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TCreateTable1.Destroy;
begin
  inherited Destroy;
end;


var
  Application: TCreateTable1;
begin
  Application:=TCreateTable1.Create(nil);
  Application.Run;
  Application.Free;
end.

