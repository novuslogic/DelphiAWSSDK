program DynamoDBCreateTable;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classes,
  Amazon.Client in '..\..\..\Source\Core\Amazon.Client.pas',
  Amazon.Interfaces in '..\..\..\Source\Core\Amazon.Interfaces.pas',
  Amazon.Credentials in '..\..\..\Source\Core\Amazon.Credentials.pas',
  Amazon.Environment in '..\..\..\Source\Core\Amazon.Environment.pas',
  Amazon.Utils in '..\..\..\Source\Core\Amazon.Utils.pas',
  Amazon.Request in '..\..\..\Source\Core\Amazon.Request.pas',
  Amazon.Response in '..\..\..\Source\Core\Amazon.Response.pas',
  Amazon.DelphiRESTClient in '..\..\..\Source\Core\Amazon.DelphiRESTClient.pas',
 // Amazon.IndyRESTClient in '..\..\..\Source\Core\Amazon.IndyRESTClient.pas',
  Amazon.SignatureV4 in '..\..\..\Source\Core\Amazon.SignatureV4.pas',
  Amazon.Marshaller in '..\..\..\Source\Core\Amazon.Marshaller.pas';

var
  //FAmazonRESTClient: TAmazonIndyRESTClient;
  FAmazonRESTClient: TAmazonDelphiRESTClient;
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
      //FAmazonRESTClient := TAmazonIndyRESTClient.Create;
      FAmazonRESTClient := TAmazonDelphiRESTClient.Create;


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
end.
