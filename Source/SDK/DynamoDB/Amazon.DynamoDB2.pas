unit Amazon.DynamoDB;

interface

uses Amazon.Client, Amazon.Request, System.Classes, System.Generics.Collections,
  Amazon.Response, Amazon.Utils, Amazon.Marshaller, System.Rtti, System.TypInfo,
  Amazon.Interfaces, System.AnsiStrings, System.SysUtils;


Const
  cDynamoDB_targetPrefix = 'DynamoDB_20120810';
  cDynamoDB_endpointPrefix = 'dynamodb';

type
  [TAmazonMarshallerAttribute('AttributeDefinition')] 
  TAttributeDefinition=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AttributeValue')] 
  TAttributeValue=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AttributeValueUpdate')] 
  TAttributeValueUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AutoScalingPolicyDescription')] 
  TAutoScalingPolicyDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AutoScalingPolicyUpdate')] 
  TAutoScalingPolicyUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AutoScalingSettingsDescription')] 
  TAutoScalingSettingsDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AutoScalingSettingsUpdate')] 
  TAutoScalingSettingsUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AutoScalingTargetTrackingScalingPolicyConfigurationDescription')] 
  TAutoScalingTargetTrackingScalingPolicyConfigurationDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('AutoScalingTargetTrackingScalingPolicyConfigurationUpdate')] 
  TAutoScalingTargetTrackingScalingPolicyConfigurationUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BackupDescription')] 
  TBackupDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BackupDetails')] 
  TBackupDetails=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BackupInUseException')] 
  TBackupInUseException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BackupNotFoundException')] 
  TBackupNotFoundException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BackupSummary')] 
  TBackupSummary=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BatchGetItemInput')] 
  TBatchGetItemInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BatchGetItemOutput')] 
  TBatchGetItemOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BatchWriteItemInput')] 
  TBatchWriteItemInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('BatchWriteItemOutput')] 
  TBatchWriteItemOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('Capacity')] 
  TCapacity=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('Condition')] 
  TCondition=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ConditionalCheckFailedException')] 
  TConditionalCheckFailedException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ConsumedCapacity')] 
  TConsumedCapacity=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ContinuousBackupsDescription')] 
  TContinuousBackupsDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ContinuousBackupsUnavailableException')] 
  TContinuousBackupsUnavailableException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateBackupInput')] 
  TCreateBackupInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateBackupOutput')] 
  TCreateBackupOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateGlobalSecondaryIndexAction')] 
  TCreateGlobalSecondaryIndexAction=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateGlobalTableInput')] 
  TCreateGlobalTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateGlobalTableOutput')] 
  TCreateGlobalTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateReplicaAction')] 
  TCreateReplicaAction=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateTableInput')] 
  TCreateTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('CreateTableOutput')] 
  TCreateTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteBackupInput')] 
  TDeleteBackupInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteBackupOutput')] 
  TDeleteBackupOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteGlobalSecondaryIndexAction')] 
  TDeleteGlobalSecondaryIndexAction=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteItemInput')] 
  TDeleteItemInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteItemOutput')] 
  TDeleteItemOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteReplicaAction')] 
  TDeleteReplicaAction=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteRequest')] 
  TDeleteRequest=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteTableInput')] 
  TDeleteTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DeleteTableOutput')] 
  TDeleteTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeBackupInput')] 
  TDescribeBackupInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeBackupOutput')] 
  TDescribeBackupOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeContinuousBackupsInput')] 
  TDescribeContinuousBackupsInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeContinuousBackupsOutput')] 
  TDescribeContinuousBackupsOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeEndpointsRequest')] 
  TDescribeEndpointsRequest=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeEndpointsResponse')] 
  TDescribeEndpointsResponse=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeGlobalTableInput')] 
  TDescribeGlobalTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeGlobalTableOutput')] 
  TDescribeGlobalTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeGlobalTableSettingsInput')] 
  TDescribeGlobalTableSettingsInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeGlobalTableSettingsOutput')] 
  TDescribeGlobalTableSettingsOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeLimitsInput')] 
  TDescribeLimitsInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeLimitsOutput')] 
  TDescribeLimitsOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeTableInput')] 
  TDescribeTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeTableOutput')] 
  TDescribeTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeTimeToLiveInput')] 
  TDescribeTimeToLiveInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('DescribeTimeToLiveOutput')] 
  TDescribeTimeToLiveOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('Endpoint')] 
  TEndpoint=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ExpectedAttributeValue')] 
  TExpectedAttributeValue=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GetItemInput')] 
  TGetItemInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GetItemOutput')] 
  TGetItemOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalSecondaryIndex')] 
  TGlobalSecondaryIndex=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalSecondaryIndexDescription')] 
  TGlobalSecondaryIndexDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalSecondaryIndexInfo')] 
  TGlobalSecondaryIndexInfo=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalSecondaryIndexUpdate')] 
  TGlobalSecondaryIndexUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalTable')] 
  TGlobalTable=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalTableAlreadyExistsException')] 
  TGlobalTableAlreadyExistsException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalTableDescription')] 
  TGlobalTableDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalTableGlobalSecondaryIndexSettingsUpdate')] 
  TGlobalTableGlobalSecondaryIndexSettingsUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('GlobalTableNotFoundException')] 
  TGlobalTableNotFoundException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('IndexNotFoundException')] 
  TIndexNotFoundException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('InternalServerError')] 
  TInternalServerError=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('InvalidRestoreTimeException')] 
  TInvalidRestoreTimeException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ItemCollectionMetrics')] 
  TItemCollectionMetrics=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ItemCollectionSizeLimitExceededException')] 
  TItemCollectionSizeLimitExceededException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('KeySchemaElement')] 
  TKeySchemaElement=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('KeysAndAttributes')] 
  TKeysAndAttributes=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('LimitExceededException')] 
  TLimitExceededException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListBackupsInput')] 
  TListBackupsInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListBackupsOutput')] 
  TListBackupsOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListGlobalTablesInput')] 
  TListGlobalTablesInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListGlobalTablesOutput')] 
  TListGlobalTablesOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListTablesInput')] 
  TListTablesInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListTablesOutput')] 
  TListTablesOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListTagsOfResourceInput')] 
  TListTagsOfResourceInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ListTagsOfResourceOutput')] 
  TListTagsOfResourceOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('LocalSecondaryIndex')] 
  TLocalSecondaryIndex=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('LocalSecondaryIndexDescription')] 
  TLocalSecondaryIndexDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('LocalSecondaryIndexInfo')] 
  TLocalSecondaryIndexInfo=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('PointInTimeRecoveryDescription')] 
  TPointInTimeRecoveryDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('PointInTimeRecoverySpecification')] 
  TPointInTimeRecoverySpecification=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('PointInTimeRecoveryUnavailableException')] 
  TPointInTimeRecoveryUnavailableException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('Projection')] 
  TProjection=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ProvisionedThroughput')] 
  TProvisionedThroughput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ProvisionedThroughputDescription')] 
  TProvisionedThroughputDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ProvisionedThroughputExceededException')] 
  TProvisionedThroughputExceededException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('PutItemInput')] 
  TPutItemInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('PutItemOutput')] 
  TPutItemOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('PutRequest')] 
  TPutRequest=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('QueryInput')] 
  TQueryInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('QueryOutput')] 
  TQueryOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('Replica')] 
  TReplica=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaAlreadyExistsException')] 
  TReplicaAlreadyExistsException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaDescription')] 
  TReplicaDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaGlobalSecondaryIndexSettingsDescription')] 
  TReplicaGlobalSecondaryIndexSettingsDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaGlobalSecondaryIndexSettingsUpdate')] 
  TReplicaGlobalSecondaryIndexSettingsUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaNotFoundException')] 
  TReplicaNotFoundException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaSettingsDescription')] 
  TReplicaSettingsDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaSettingsUpdate')] 
  TReplicaSettingsUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ReplicaUpdate')] 
  TReplicaUpdate=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ResourceInUseException')] 
  TResourceInUseException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ResourceNotFoundException')] 
  TResourceNotFoundException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('RestoreSummary')] 
  TRestoreSummary=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('RestoreTableFromBackupInput')] 
  TRestoreTableFromBackupInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('RestoreTableFromBackupOutput')] 
  TRestoreTableFromBackupOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('RestoreTableToPointInTimeInput')] 
  TRestoreTableToPointInTimeInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('RestoreTableToPointInTimeOutput')] 
  TRestoreTableToPointInTimeOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('SSEDescription')] 
  TSSEDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('SSESpecification')] 
  TSSESpecification=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ScanInput')] 
  TScanInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('ScanOutput')] 
  TScanOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('SourceTableDetails')] 
  TSourceTableDetails=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('SourceTableFeatureDetails')] 
  TSourceTableFeatureDetails=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('StreamSpecification')] 
  TStreamSpecification=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TableAlreadyExistsException')] 
  TTableAlreadyExistsException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TableDescription')] 
  TTableDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TableInUseException')] 
  TTableInUseException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TableNotFoundException')] 
  TTableNotFoundException=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('Tag')] 
  TTag=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TagResourceInput')] 
  TTagResourceInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TimeToLiveDescription')] 
  TTimeToLiveDescription=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('TimeToLiveSpecification')] 
  TTimeToLiveSpecification=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UntagResourceInput')] 
  TUntagResourceInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateContinuousBackupsInput')] 
  TUpdateContinuousBackupsInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateContinuousBackupsOutput')] 
  TUpdateContinuousBackupsOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateGlobalSecondaryIndexAction')] 
  TUpdateGlobalSecondaryIndexAction=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateGlobalTableInput')] 
  TUpdateGlobalTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateGlobalTableOutput')] 
  TUpdateGlobalTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateGlobalTableSettingsInput')] 
  TUpdateGlobalTableSettingsInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateGlobalTableSettingsOutput')] 
  TUpdateGlobalTableSettingsOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateItemInput')] 
  TUpdateItemInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateItemOutput')] 
  TUpdateItemOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateTableInput')] 
  TUpdateTableInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateTableOutput')] 
  TUpdateTableOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateTimeToLiveInput')] 
  TUpdateTimeToLiveInput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('UpdateTimeToLiveOutput')] 
  TUpdateTimeToLiveOutput=class(tobject)
  protected
  private
  public
  end;
  
  [TAmazonMarshallerAttribute('WriteRequest')] 
  TWriteRequest=class(tobject)
  protected
  private
  public
  end;
  
 
  
   
  TAmazonDynamoDBClient = class(TAmazonClient)
  protected
  private
  public
    procedure InitClient(aprofile: UTF8String; asecret_key: UTF8String;
      aaccess_key: UTF8String; aregion: UTF8String); override;
    [TAmazonMarshallerAttribute('BatchGetItem')]  
    function BatchGetItem(aBatchGetItemInput: tBatchGetItemInput):tBatchGetItemOutput;
    [TAmazonMarshallerAttribute('BatchWriteItem')]  
    function BatchWriteItem(aBatchWriteItemInput: tBatchWriteItemInput):tBatchWriteItemOutput;
    [TAmazonMarshallerAttribute('CreateBackup')]  
    function CreateBackup(aCreateBackupInput: tCreateBackupInput):tCreateBackupOutput;
    [TAmazonMarshallerAttribute('CreateGlobalTable')]  
    function CreateGlobalTable(aCreateGlobalTableInput: tCreateGlobalTableInput):tCreateGlobalTableOutput;
    [TAmazonMarshallerAttribute('CreateTable')]  
    function CreateTable(aCreateTableInput: tCreateTableInput):tCreateTableOutput;
    [TAmazonMarshallerAttribute('DeleteBackup')]  
    function DeleteBackup(aDeleteBackupInput: tDeleteBackupInput):tDeleteBackupOutput;
    [TAmazonMarshallerAttribute('DeleteItem')]  
    function DeleteItem(aDeleteItemInput: tDeleteItemInput):tDeleteItemOutput;
    [TAmazonMarshallerAttribute('DeleteTable')]  
    function DeleteTable(aDeleteTableInput: tDeleteTableInput):tDeleteTableOutput;
    [TAmazonMarshallerAttribute('DescribeBackup')]  
    function DescribeBackup(aDescribeBackupInput: tDescribeBackupInput):tDescribeBackupOutput;
    [TAmazonMarshallerAttribute('DescribeContinuousBackups')]  
    function DescribeContinuousBackups(aDescribeContinuousBackupsInput: tDescribeContinuousBackupsInput):tDescribeContinuousBackupsOutput;
    [TAmazonMarshallerAttribute('DescribeEndpoints')]  
    function DescribeEndpoints(aDescribeEndpointsRequest: tDescribeEndpointsRequest):tDescribeEndpointsResponse;
    [TAmazonMarshallerAttribute('DescribeGlobalTable')]  
    function DescribeGlobalTable(aDescribeGlobalTableInput: tDescribeGlobalTableInput):tDescribeGlobalTableOutput;
    [TAmazonMarshallerAttribute('DescribeGlobalTableSettings')]  
    function DescribeGlobalTableSettings(aDescribeGlobalTableSettingsInput: tDescribeGlobalTableSettingsInput):tDescribeGlobalTableSettingsOutput;
    [TAmazonMarshallerAttribute('DescribeLimits')]  
    function DescribeLimits(aDescribeLimitsInput: tDescribeLimitsInput):tDescribeLimitsOutput;
    [TAmazonMarshallerAttribute('DescribeTable')]  
    function DescribeTable(aDescribeTableInput: tDescribeTableInput):tDescribeTableOutput;
    [TAmazonMarshallerAttribute('DescribeTimeToLive')]  
    function DescribeTimeToLive(aDescribeTimeToLiveInput: tDescribeTimeToLiveInput):tDescribeTimeToLiveOutput;
    [TAmazonMarshallerAttribute('GetItem')]  
    function GetItem(aGetItemInput: tGetItemInput):tGetItemOutput;
    [TAmazonMarshallerAttribute('ListBackups')]  
    function ListBackups(aListBackupsInput: tListBackupsInput):tListBackupsOutput;
    [TAmazonMarshallerAttribute('ListGlobalTables')]  
    function ListGlobalTables(aListGlobalTablesInput: tListGlobalTablesInput):tListGlobalTablesOutput;
    [TAmazonMarshallerAttribute('ListTables')]  
    function ListTables(aListTablesInput: tListTablesInput):tListTablesOutput;
    [TAmazonMarshallerAttribute('ListTagsOfResource')]  
    function ListTagsOfResource(aListTagsOfResourceInput: tListTagsOfResourceInput):tListTagsOfResourceOutput;
    [TAmazonMarshallerAttribute('PutItem')]  
    function PutItem(aPutItemInput: tPutItemInput):tPutItemOutput;
    [TAmazonMarshallerAttribute('Query')]  
    function Query(aQueryInput: tQueryInput):tQueryOutput;
    [TAmazonMarshallerAttribute('RestoreTableFromBackup')]  
    function RestoreTableFromBackup(aRestoreTableFromBackupInput: tRestoreTableFromBackupInput):tRestoreTableFromBackupOutput;
    [TAmazonMarshallerAttribute('RestoreTableToPointInTime')]  
    function RestoreTableToPointInTime(aRestoreTableToPointInTimeInput: tRestoreTableToPointInTimeInput):tRestoreTableToPointInTimeOutput;
    [TAmazonMarshallerAttribute('Scan')]  
    function Scan(aScanInput: tScanInput):tScanOutput;
    [TAmazonMarshallerAttribute('TagResource')]  
    procedure TagResource(aTagResourceInput: tTagResourceInput);
    [TAmazonMarshallerAttribute('UntagResource')]  
    procedure UntagResource(aUntagResourceInput: tUntagResourceInput);
    [TAmazonMarshallerAttribute('UpdateContinuousBackups')]  
    function UpdateContinuousBackups(aUpdateContinuousBackupsInput: tUpdateContinuousBackupsInput):tUpdateContinuousBackupsOutput;
    [TAmazonMarshallerAttribute('UpdateGlobalTable')]  
    function UpdateGlobalTable(aUpdateGlobalTableInput: tUpdateGlobalTableInput):tUpdateGlobalTableOutput;
    [TAmazonMarshallerAttribute('UpdateGlobalTableSettings')]  
    function UpdateGlobalTableSettings(aUpdateGlobalTableSettingsInput: tUpdateGlobalTableSettingsInput):tUpdateGlobalTableSettingsOutput;
    [TAmazonMarshallerAttribute('UpdateItem')]  
    function UpdateItem(aUpdateItemInput: tUpdateItemInput):tUpdateItemOutput;
    [TAmazonMarshallerAttribute('UpdateTable')]  
    function UpdateTable(aUpdateTableInput: tUpdateTableInput):tUpdateTableOutput;
  end;

implementation 

procedure TAmazonDynamoDBClient.InitClient(aprofile: UTF8String;
  asecret_key: UTF8String; aaccess_key: UTF8String; aregion: UTF8String);
begin
  inherited InitClient(aprofile, asecret_key, aaccess_key, aregion);

  service := cdynamodb_endpointPrefix;
end;

function TAmazonDynamoDBClient.BatchGetItem(aBatchGetItemInput: tBatchGetItemInput):tBatchGetItemOutput;
begin
  
end;

function TAmazonDynamoDBClient.BatchWriteItem(aBatchWriteItemInput: tBatchWriteItemInput):tBatchWriteItemOutput;
begin
  
end;

function TAmazonDynamoDBClient.CreateBackup(aCreateBackupInput: tCreateBackupInput):tCreateBackupOutput;
begin
  
end;

function TAmazonDynamoDBClient.CreateGlobalTable(aCreateGlobalTableInput: tCreateGlobalTableInput):tCreateGlobalTableOutput;
begin
  
end;

function TAmazonDynamoDBClient.CreateTable(aCreateTableInput: tCreateTableInput):tCreateTableOutput;
begin
  
end;

function TAmazonDynamoDBClient.DeleteBackup(aDeleteBackupInput: tDeleteBackupInput):tDeleteBackupOutput;
begin
  
end;

function TAmazonDynamoDBClient.DeleteItem(aDeleteItemInput: tDeleteItemInput):tDeleteItemOutput;
begin
  
end;

function TAmazonDynamoDBClient.DeleteTable(aDeleteTableInput: tDeleteTableInput):tDeleteTableOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeBackup(aDescribeBackupInput: tDescribeBackupInput):tDescribeBackupOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeContinuousBackups(aDescribeContinuousBackupsInput: tDescribeContinuousBackupsInput):tDescribeContinuousBackupsOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeEndpoints(aDescribeEndpointsRequest: tDescribeEndpointsRequest):tDescribeEndpointsResponse;
begin
  
end;

function TAmazonDynamoDBClient.DescribeGlobalTable(aDescribeGlobalTableInput: tDescribeGlobalTableInput):tDescribeGlobalTableOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeGlobalTableSettings(aDescribeGlobalTableSettingsInput: tDescribeGlobalTableSettingsInput):tDescribeGlobalTableSettingsOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeLimits(aDescribeLimitsInput: tDescribeLimitsInput):tDescribeLimitsOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeTable(aDescribeTableInput: tDescribeTableInput):tDescribeTableOutput;
begin
  
end;

function TAmazonDynamoDBClient.DescribeTimeToLive(aDescribeTimeToLiveInput: tDescribeTimeToLiveInput):tDescribeTimeToLiveOutput;
begin
  
end;

function TAmazonDynamoDBClient.GetItem(aGetItemInput: tGetItemInput):tGetItemOutput;
begin
  
end;

function TAmazonDynamoDBClient.ListBackups(aListBackupsInput: tListBackupsInput):tListBackupsOutput;
begin
  
end;

function TAmazonDynamoDBClient.ListGlobalTables(aListGlobalTablesInput: tListGlobalTablesInput):tListGlobalTablesOutput;
begin
  
end;

function TAmazonDynamoDBClient.ListTables(aListTablesInput: tListTablesInput):tListTablesOutput;
begin
  
end;

function TAmazonDynamoDBClient.ListTagsOfResource(aListTagsOfResourceInput: tListTagsOfResourceInput):tListTagsOfResourceOutput;
begin
  
end;

function TAmazonDynamoDBClient.PutItem(aPutItemInput: tPutItemInput):tPutItemOutput;
begin
  
end;

function TAmazonDynamoDBClient.Query(aQueryInput: tQueryInput):tQueryOutput;
begin
  
end;

function TAmazonDynamoDBClient.RestoreTableFromBackup(aRestoreTableFromBackupInput: tRestoreTableFromBackupInput):tRestoreTableFromBackupOutput;
begin
  
end;

function TAmazonDynamoDBClient.RestoreTableToPointInTime(aRestoreTableToPointInTimeInput: tRestoreTableToPointInTimeInput):tRestoreTableToPointInTimeOutput;
begin
  
end;

function TAmazonDynamoDBClient.Scan(aScanInput: tScanInput):tScanOutput;
begin
  
end;

procedure TAmazonDynamoDBClient.TagResource(aTagResourceInput: tTagResourceInput);
begin
  
end;

procedure TAmazonDynamoDBClient.UntagResource(aUntagResourceInput: tUntagResourceInput);
begin
  
end;

function TAmazonDynamoDBClient.UpdateContinuousBackups(aUpdateContinuousBackupsInput: tUpdateContinuousBackupsInput):tUpdateContinuousBackupsOutput;
begin
  
end;

function TAmazonDynamoDBClient.UpdateGlobalTable(aUpdateGlobalTableInput: tUpdateGlobalTableInput):tUpdateGlobalTableOutput;
begin
  
end;

function TAmazonDynamoDBClient.UpdateGlobalTableSettings(aUpdateGlobalTableSettingsInput: tUpdateGlobalTableSettingsInput):tUpdateGlobalTableSettingsOutput;
begin
  
end;

function TAmazonDynamoDBClient.UpdateItem(aUpdateItemInput: tUpdateItemInput):tUpdateItemOutput;
begin
  
end;

function TAmazonDynamoDBClient.UpdateTable(aUpdateTableInput: tUpdateTableInput):tUpdateTableOutput;
begin
  
end;



end.
