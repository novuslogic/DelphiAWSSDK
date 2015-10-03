program DynamoDBCreateTable;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Amazon.DynamoDB in '..\..\..\SDK\DynamoDB\Amazon.DynamoDB.pas',
  Amazon.Client in '..\..\..\Core\Amazon.Client.pas',
  Amazon.Interfaces in '..\..\..\Core\Amazon.Interfaces.pas',
  Amazon.Credentials in '..\..\..\Core\Amazon.Credentials.pas',
  Amazon.Environment in '..\..\..\Core\Amazon.Environment.pas',
  Amazon.Utils in '..\..\..\Core\Amazon.Utils.pas',
  Amazon.Request in '..\..\..\Core\Amazon.Request.pas',
  Amazon.Response in '..\..\..\Core\Amazon.Response.pas',
  Amazon.RESTClient in '..\..\..\Core\Amazon.RESTClient.pas',
  Amazon.SignatureV4 in '..\..\..\Core\Amazon.SignatureV4.pas',
  Amazon.Marshaller in '..\..\..\Core\Amazon.Marshaller.pas';

Var
  FAmazonDynamoDBClient: TAmazonDynamoDBClient;
  FsTableName: String;
  FCreateTableRequest:  TCreateTableRequest;
  FAmazonDynamoDBResponse:  TAmazonDynamoDBResponse;
begin
  try
    Try
      Writeln('DynamoDB API (CreateTable) using Amazon.DynamoDB class');


      FAmazonDynamoDBClient := TAmazonDynamoDBClient.Create;
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
      FAmazonDynamoDBClient.Free;

      FAmazonDynamoDBResponse.Free;
    End;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
