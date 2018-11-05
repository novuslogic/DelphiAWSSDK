program DynamoDBCreateTable;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Amazon.Client in 'Amazon.Client.pas',
  Amazon.Interfaces in 'Amazon.Interfaces.pas',
  Amazon.Credentials in 'Amazon.Credentials.pas',
  Amazon.Environment in 'Amazon.Environment.pas',
  Amazon.Utils in 'Amazon.Utils.pas',
  Amazon.Request in 'Amazon.Request.pas',
  Amazon.Response in 'Amazon.Response.pas',
  Amazon.IndyRESTClient in 'Amazon.IndyRESTClient.pas',
  Amazon.DelphiRESTClient in 'Amazon.DelphiRESTClient.pas',
  Amazon.SignatureV4 in 'Amazon.SignatureV4.pas',
  Amazon.Marshaller in 'Amazon.Marshaller.pas',
  Amazon.DynamoDB in 'Amazon.DynamoDB.pas';

Var
  FAmazonRESTClient: IAmazonRestClient;
  FAmazonDynamoDBClient: TAmazonDynamoDBClient;
  FCreateTableRequest:  TCreateTableRequest;
  FAmazonDynamoDBResponse:  TAmazonDynamoDBResponse;
begin
  try
    Try
      Writeln('DynamoDB API (CreateTable) using Amazon.DynamoDB class');

      FAmazonRESTClient := TAmazonIndyRESTClient.Create;
      //FAmazonRESTClient := TAmazonDelphiRESTClient.Create;


      FAmazonDynamoDBClient:= TAmazonDynamoDBClient.Create(FAmazonRESTClient);

      FAmazonDynamoDBClient.endpoint := 'https://dynamodb.ap-southeast-2.amazonaws.com/';

      FCreateTableRequest := TCreateTableRequest.Create;
      FCreateTableRequest.Tablename := 'ProductCatalog';

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
