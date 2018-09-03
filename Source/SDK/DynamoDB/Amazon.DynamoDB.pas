unit Amazon.DynamoDB;

interface

uses Amazon.Client, Amazon.Request, System.Classes, System.Generics.Collections,
  Amazon.Response, Amazon.Utils, Amazon.Marshaller, System.Rtti, System.TypInfo,
  Amazon.Interfaces, System.AnsiStrings, System.SysUtils;

Const
  cDynamoDB_targetPrefix = 'DynamoDB_20120810';
  cDynamoDB_service = 'dynamodb';

type
  TAmazonDynamoDBRequest = class(TAmazonRequest)
  protected
  private
  public
    Constructor Create; virtual;
  end;

  TAmazonDynamoDBMarshaller = class(TAmazonMarshaller)
  protected
  private
  public
    function AmazonDynamoDBRequestToJSON(aAmazonDynamoDBRequest
      : TAmazonDynamoDBRequest): UTF8String;

  end;

  TAmazonDynamoDBResponse = class(TAmazonResponse)
  protected
  private
  public
    constructor Create(aAmazonResponse: IAmazonResponse);
  end;

  TAmazonDynamoDBClient = class(TAmazonClient)
  protected
  private
  public
    procedure InitClient(aprofile: UTF8String; asecret_key: UTF8String;
      aaccess_key: UTF8String; aregion: UTF8String); override;

    [TAmazonMarshallerAttribute('CreateTable')]
    function CreateTable(aAmazonDynamoDBRequest: TAmazonDynamoDBRequest)
      : TAmazonDynamoDBResponse;
  end;

  [TAmazonMarshallerAttribute('ProvisionedThroughput')]
  TProvisionedThroughput = class(TObject)
  protected
  private
    fsReadCapacityUnits: Integer;
    fsWriteCapacityUnits: Integer;
  public
  published
    [TAmazonMarshallerAttribute('ReadCapacityUnits')]
    property ReadCapacityUnits: Integer read fsReadCapacityUnits
      write fsReadCapacityUnits;
    [TAmazonMarshallerAttribute('WriteCapacityUnits')]
    property WriteCapacityUnits: Integer read fsWriteCapacityUnits
      write fsWriteCapacityUnits;
  end;

  [TAmazonMarshallerAttribute('KeySchemaElement')]
  TKeySchemaElement = class(TObject)
  protected
  private
    fsAttributeName: UTF8String;
    fsKeyType: UTF8String;
  public
    constructor Create(aAttributeName: UTF8String = '';
      aKeyType: UTF8String = '');
  published
    [TAmazonMarshallerAttribute('AttributeName')]
    property AttributeName: UTF8String read fsAttributeName
      write fsAttributeName;
    [TAmazonMarshallerAttribute('KeyType')]
    property KeyType: UTF8String read fsKeyType write fsKeyType;
  end;

  [TAmazonMarshallerAttribute('AttributeDefinition')]
  TAttributeDefinition = class(TObject)
  protected
  private
    fsAttributeName: UTF8String;
    fsAttributeType: UTF8String;
  public
    constructor Create(aAttributeName: UTF8String = '';
      aAttributeType: UTF8String = '');

  published
    [TAmazonMarshallerAttribute('AttributeName')]
    property AttributeName: UTF8String read fsAttributeName
      write fsAttributeName;
    [TAmazonMarshallerAttribute('AttributeType')]
    property AttributeType: UTF8String read fsAttributeType
      write fsAttributeType;
  end;

  TCreateTableRequest = class(TAmazonDynamoDBRequest)
  protected
  private
    fsTableName: UTF8String;
    FAttributeDefinitions: TList<TAttributeDefinition>;
    FKeySchema: TList<TKeySchemaElement>;
    FProvisionedThroughput: TProvisionedThroughput;
  public
    constructor Create; override;
    destructor Destory;

  published
    [TAmazonMarshallerAttribute('TableName')]
    property TableName: UTF8String read fsTableName write fsTableName;
    [TAmazonMarshallerAttribute('AttributeDefinitions')]
    property AttributeDefinitions: TList<TAttributeDefinition>
      read FAttributeDefinitions write FAttributeDefinitions;
    [TAmazonMarshallerAttribute('KeySchema')]
    property KeySchema: TList<TKeySchemaElement> read FKeySchema
      write FKeySchema;
    [TAmazonMarshallerAttribute('ProvisionedThroughput')]
    property ProvisionedThroughput: TProvisionedThroughput
      read FProvisionedThroughput write FProvisionedThroughput;
  end;

implementation

Constructor TAmazonDynamoDBRequest.Create;
begin
  targetPrefix := cDynamoDB_targetPrefix;
end;

constructor TKeySchemaElement.Create(aAttributeName: UTF8String = '';
  aKeyType: UTF8String = '');
begin
  fsAttributeName := aAttributeName;
  fsKeyType := aKeyType;
end;

constructor TAttributeDefinition.Create(aAttributeName: UTF8String = '';
  aAttributeType: UTF8String = '');
begin
  fsAttributeName := aAttributeName;
  fsAttributeType := aAttributeType;
end;

constructor TCreateTableRequest.Create;
begin
  inherited;

  FAttributeDefinitions := TList<TAttributeDefinition>.Create;
  FKeySchema := TList<TKeySchemaElement>.Create;
  ProvisionedThroughput := TProvisionedThroughput.Create;
end;

destructor TCreateTableRequest.Destory;
begin
  FProvisionedThroughput.Free;
  FKeySchema.Free;
  FAttributeDefinitions.Free;
end;

procedure TAmazonDynamoDBClient.InitClient(aprofile: UTF8String;
  asecret_key: UTF8String; aaccess_key: UTF8String; aregion: UTF8String);
begin
  inherited InitClient(aprofile, asecret_key, aaccess_key, aregion);

  service := cDynamoDB_service;
end;

function TAmazonDynamoDBClient.CreateTable(aAmazonDynamoDBRequest
  : TAmazonDynamoDBRequest): TAmazonDynamoDBResponse;
var
  FAmazonDynamoDBMarshaller: TAmazonDynamoDBMarshaller;
  FAmazonResponse: IAmazonResponse;
begin
  Try
    aAmazonDynamoDBRequest.operationName := 'CreateTable';
    FAmazonDynamoDBMarshaller := TAmazonDynamoDBMarshaller.Create;

    aAmazonDynamoDBRequest.request_parameters :=
      FAmazonDynamoDBMarshaller.AmazonDynamoDBRequestToJSON
      (aAmazonDynamoDBRequest);

    FAmazonResponse := MakeRequest(aAmazonDynamoDBRequest, FAmazonRESTClient);

    Result := TAmazonDynamoDBResponse.Create(FAmazonResponse);

  Finally
    FAmazonDynamoDBMarshaller := NIL;
    FAmazonResponse := NIl;
  End;
end;

function TAmazonDynamoDBMarshaller.AmazonDynamoDBRequestToJSON
  (aAmazonDynamoDBRequest: TAmazonDynamoDBRequest): UTF8String;
var
  Fctx: TRttiContext;
  FJSON: tStringList;
begin
  Try
    Fctx := TRttiContext.Create;

    FJSON := tStringList.Create;

    GetSubRttiAttributekeys(FJSON, '', Fctx, aAmazonDynamoDBRequest);

    Result := '{' + StringReplace(FJSON.Text, #13#10, '', [rfReplaceAll]) + '}';
  Finally
    FJSON.Free;

    Fctx.Free;
  End;
end;

constructor TAmazonDynamoDBResponse.Create(aAmazonResponse: IAmazonResponse);
begin
  ResponseText := aAmazonResponse.ResponseText;
  ResponseCode := aAmazonResponse.ResponseCode;
  Response := aAmazonResponse.Response;
end;

end.
