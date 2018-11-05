program DynamoDBCreateTable;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Amazon.Client in '..\..\..\Source\Core\Amazon.Client.pas',
  Amazon.Interfaces in '..\..\..\Source\Core\Amazon.Interfaces.pas',
  Amazon.Credentials in '..\..\..\Source\Core\Amazon.Credentials.pas',
  Amazon.Environment in '..\..\..\Source\Core\Amazon.Environment.pas',
  Amazon.Utils in '..\..\..\Source\Core\Amazon.Utils.pas',
  Amazon.Request in '..\..\..\Source\Core\Amazon.Request.pas',
  Amazon.Response in '..\..\..\Source\Core\Amazon.Response.pas',
  //Amazon.IndyRESTClient in '..\..\..\Source\Core\Amazon.IndyRESTClient.pas',
  Amazon.DelphiRESTClient in '..\..\..\Source\Core\Amazon.DelphiRESTClient.pas',
  Amazon.SignatureV4 in '..\..\..\Source\Core\Amazon.SignatureV4.pas',
  Amazon.Marshaller in '..\..\..\Source\Core\Amazon.Marshaller.pas',
  Amazon.DynamoDB in '..\..\..\Source\SDK\DynamoDB\Amazon.DynamoDB.pas';

Var
   FAmazonRESTClient: TAmazonDelphiRESTClient;
  //FAmazonRESTClient : TAmazonIndyRESTClient;
  FAmazonDynamoDBClient: TAmazonDynamoDBClient;
  FsTableName: String;
  FCreateTableRequest:  TCreateTableRequest;
  FAmazonDynamoDBResponse:  TAmazonDynamoDBResponse;
begin
  try
    Try
      Writeln('DynamoDB API (CreateTable) using Amazon.DynamoDB class');

      //FAmazonRESTClient := TAmazonIndyRESTClient.Create;
      FAmazonRESTClient := TAmazonDelphiRESTClient.Create;

      fsTableName := 'ProductCatalog';

      FAmazonDynamoDBClient.endpoint := 'https://dynamodb.ap-southeast-2.amazonaws.com/';

      FCreateTableRequest := TCreateTableRequest.Create;
      FCreateTableRequest.Tablename := fsTableName;

      FCreateTableRequest.AttributeDefinitions.Add(TAttributeDefinition.Create('Id', 'S'));

      FCreateTableRequest.KeySchema.Add(TKeySchemaElement.Create('Id', 'HASH'));

      With FCreateTableRequest.ProvisionedThroughput do
        begin
          ReadCapacityUnits := 10;
          WriteCapacityUnits := 5;
        end;

      FAmazonDynamoDBResponse := FAmazonDynamoDBClient.CreateTable(FCreateTableRequest);

      Writeln('ResponseCode:' + IntTostr(  FAmazonDynamoDBResponse.ResponseCode));
      Writeln('ResponseStr:' +   FAmazonDynamoDBResponse.ResponseText);

      Writeln('Response:' +  FAmazonDynamoDBResponse.Response);

      Writeln('Press [enter] to finish.');
      readln;
    Finally
      FAmazonRESTClient := NIL;

      FAmazonDynamoDBClient.Free;

      FAmazonDynamoDBResponse.Free;
    End;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
