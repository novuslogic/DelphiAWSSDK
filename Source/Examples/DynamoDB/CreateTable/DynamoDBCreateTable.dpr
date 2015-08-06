program DynamoDBCreateTable;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classes,
  Amazon.SignatureV4 in '..\..\..\Core\Amazon.SignatureV4.pas',
  Amazon.RESTClient in '..\..\..\Core\Amazon.RESTClient.pas',
  Amazon.Request in '..\..\..\Core\Amazon.Request.pas',
  Amazon.Interfaces in '..\..\..\Core\Amazon.Interfaces.pas',
  Amazon.Client in '..\..\..\Core\Amazon.Client.pas',
  Amazon.Credentials in '..\..\..\Core\Amazon.Credentials.pas',
  Amazon.Environment in '..\..\..\Core\Amazon.Environment.pas',
  Amazon.Response in '..\..\..\Core\Amazon.Response.pas',
  Amazon.Utils in '..\..\..\Core\Amazon.Utils.pas';

var
  FAmazonRESTClient: TAmazonRESTClient;
  FAmazonRequest: TAmazonRequest;
  FAmazonSignatureV4: tAmazonSignatureV4;
  FAmazonClient: TAmazonClient;
  FAmazonResponse:  IAmazonResponse;
begin
  try

    Writeln('DynamoDB API (CreateTable) using Amazon.Client class');

    FAmazonClient:= TAmazonClient.Create;
    FAmazonClient.endpoint := 'https://dynamodb.ap-southeast-2.amazonaws.com/';
    FAmazonClient.service := 'dynamodb';

    FAmazonRequest := TAmazonRequest.Create;
    FAmazonSignatureV4 := TAmazonSignatureV4.Create;
    FAmazonRESTClient := TAmazonRESTClient.Create;

    FAmazonRequest.request_parameters :=  '{' +
      '"KeySchema": [{"KeyType": "HASH","AttributeName": "Id"}],' +
      '"TableName": "TestTable","AttributeDefinitions": [{"AttributeName": "Id","AttributeType": "S"}],' +
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

    FAmazonClient.Free;



    Writeln('Press [enter] to finish.');
    readln;




  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
