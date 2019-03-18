unit Amazon.DynamoDB;

interface

uses Amazon.Client, Amazon.Request, System.Classes, System.Generics.Collections,
  Amazon.Response, Amazon.Utils, Amazon.Marshaller, System.Rtti, System.TypInfo,
  Amazon.Interfaces, System.AnsiStrings, System.SysUtils;

Const
  cDynamoDB_targetPrefix = 'DynamoDB_20120810';
  cDynamoDB_endpointprefix = 'dynamodb';

type
  [TAmazonMarshallerAttribute('AttributeAction')] 
  string
  tAttributeAction = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeDefinition')] 
  string
  tAttributeDefinition = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeDefinitions')] 
  string
  tAttributeDefinitions = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeMap')] 
  string
  tAttributeMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeName')] 
  string
  tAttributeName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeNameList')] 
  string
  tAttributeNameList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeUpdates')] 
  string
  tAttributeUpdates = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeValue')] 
  string
  tAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeValueList')] 
  string
  tAttributeValueList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AttributeValueUpdate')] 
  string
  tAttributeValueUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingPolicyDescription')] 
  string
  tAutoScalingPolicyDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingPolicyDescriptionList')] 
  string
  tAutoScalingPolicyDescriptionList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingPolicyName')] 
  string
  tAutoScalingPolicyName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingPolicyUpdate')] 
  string
  tAutoScalingPolicyUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingRoleArn')] 
  string
  tAutoScalingRoleArn = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingSettingsDescription')] 
  string
  tAutoScalingSettingsDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingSettingsUpdate')] 
  string
  tAutoScalingSettingsUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingTargetTrackingScalingPolicyConfigurationDescription')] 
  string
  tAutoScalingTargetTrackingScalingPolicyConfigurationDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('AutoScalingTargetTrackingScalingPolicyConfigurationUpdate')] 
  string
  tAutoScalingTargetTrackingScalingPolicyConfigurationUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Backfilling')] 
  string
  tBackfilling = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupArn')] 
  string
  tBackupArn = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupCreationDateTime')] 
  string
  tBackupCreationDateTime = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupDescription')] 
  string
  tBackupDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupDetails')] 
  string
  tBackupDetails = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupInUseException')] 
  string
  tBackupInUseException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupName')] 
  string
  tBackupName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupNotFoundException')] 
  string
  tBackupNotFoundException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupSizeBytes')] 
  string
  tBackupSizeBytes = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupStatus')] 
  string
  tBackupStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupSummaries')] 
  string
  tBackupSummaries = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupSummary')] 
  string
  tBackupSummary = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupType')] 
  string
  tBackupType = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupTypeFilter')] 
  string
  tBackupTypeFilter = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BackupsInputLimit')] 
  string
  tBackupsInputLimit = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchGetItemInput')] 
  string
  tBatchGetItemInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchGetItemOutput')] 
  string
  tBatchGetItemOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchGetRequestMap')] 
  string
  tBatchGetRequestMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchGetResponseMap')] 
  string
  tBatchGetResponseMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchWriteItemInput')] 
  string
  tBatchWriteItemInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchWriteItemOutput')] 
  string
  tBatchWriteItemOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BatchWriteItemRequestMap')] 
  string
  tBatchWriteItemRequestMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BinaryAttributeValue')] 
  string
  tBinaryAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BinarySetAttributeValue')] 
  string
  tBinarySetAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BooleanAttributeValue')] 
  string
  tBooleanAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('BooleanObject')] 
  string
  tBooleanObject = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Capacity')] 
  string
  tCapacity = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ComparisonOperator')] 
  string
  tComparisonOperator = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Condition')] 
  string
  tCondition = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConditionExpression')] 
  string
  tConditionExpression = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConditionalCheckFailedException')] 
  string
  tConditionalCheckFailedException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConditionalOperator')] 
  string
  tConditionalOperator = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConsistentRead')] 
  string
  tConsistentRead = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConsumedCapacity')] 
  string
  tConsumedCapacity = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConsumedCapacityMultiple')] 
  string
  tConsumedCapacityMultiple = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ConsumedCapacityUnits')] 
  string
  tConsumedCapacityUnits = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ContinuousBackupsDescription')] 
  string
  tContinuousBackupsDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ContinuousBackupsStatus')] 
  string
  tContinuousBackupsStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ContinuousBackupsUnavailableException')] 
  string
  tContinuousBackupsUnavailableException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateBackupInput')] 
  string
  tCreateBackupInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateBackupOutput')] 
  string
  tCreateBackupOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateGlobalSecondaryIndexAction')] 
  string
  tCreateGlobalSecondaryIndexAction = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateGlobalTableInput')] 
  string
  tCreateGlobalTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateGlobalTableOutput')] 
  string
  tCreateGlobalTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateReplicaAction')] 
  string
  tCreateReplicaAction = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateTableInput')] 
  string
  tCreateTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('CreateTableOutput')] 
  string
  tCreateTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Date')] 
  string
  tDate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteBackupInput')] 
  string
  tDeleteBackupInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteBackupOutput')] 
  string
  tDeleteBackupOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteGlobalSecondaryIndexAction')] 
  string
  tDeleteGlobalSecondaryIndexAction = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteItemInput')] 
  string
  tDeleteItemInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteItemOutput')] 
  string
  tDeleteItemOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteReplicaAction')] 
  string
  tDeleteReplicaAction = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteRequest')] 
  string
  tDeleteRequest = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteTableInput')] 
  string
  tDeleteTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DeleteTableOutput')] 
  string
  tDeleteTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeBackupInput')] 
  string
  tDescribeBackupInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeBackupOutput')] 
  string
  tDescribeBackupOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeContinuousBackupsInput')] 
  string
  tDescribeContinuousBackupsInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeContinuousBackupsOutput')] 
  string
  tDescribeContinuousBackupsOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeEndpointsRequest')] 
  string
  tDescribeEndpointsRequest = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeEndpointsResponse')] 
  string
  tDescribeEndpointsResponse = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeGlobalTableInput')] 
  string
  tDescribeGlobalTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeGlobalTableOutput')] 
  string
  tDescribeGlobalTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeGlobalTableSettingsInput')] 
  string
  tDescribeGlobalTableSettingsInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeGlobalTableSettingsOutput')] 
  string
  tDescribeGlobalTableSettingsOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeLimitsInput')] 
  string
  tDescribeLimitsInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeLimitsOutput')] 
  string
  tDescribeLimitsOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeTableInput')] 
  string
  tDescribeTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeTableOutput')] 
  string
  tDescribeTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeTimeToLiveInput')] 
  string
  tDescribeTimeToLiveInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('DescribeTimeToLiveOutput')] 
  string
  tDescribeTimeToLiveOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Double')] 
  string
  tDouble = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Endpoint')] 
  string
  tEndpoint = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Endpoints')] 
  string
  tEndpoints = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ErrorMessage')] 
  string
  tErrorMessage = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ExpectedAttributeMap')] 
  string
  tExpectedAttributeMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ExpectedAttributeValue')] 
  string
  tExpectedAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ExpressionAttributeNameMap')] 
  string
  tExpressionAttributeNameMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ExpressionAttributeNameVariable')] 
  string
  tExpressionAttributeNameVariable = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ExpressionAttributeValueMap')] 
  string
  tExpressionAttributeValueMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ExpressionAttributeValueVariable')] 
  string
  tExpressionAttributeValueVariable = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('FilterConditionMap')] 
  string
  tFilterConditionMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GetItemInput')] 
  string
  tGetItemInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GetItemOutput')] 
  string
  tGetItemOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndex')] 
  string
  tGlobalSecondaryIndex = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexDescription')] 
  string
  tGlobalSecondaryIndexDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexDescriptionList')] 
  string
  tGlobalSecondaryIndexDescriptionList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexInfo')] 
  string
  tGlobalSecondaryIndexInfo = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexList')] 
  string
  tGlobalSecondaryIndexList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexUpdate')] 
  string
  tGlobalSecondaryIndexUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexUpdateList')] 
  string
  tGlobalSecondaryIndexUpdateList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalSecondaryIndexes')] 
  string
  tGlobalSecondaryIndexes = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTable')] 
  string
  tGlobalTable = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableAlreadyExistsException')] 
  string
  tGlobalTableAlreadyExistsException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableArnString')] 
  string
  tGlobalTableArnString = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableDescription')] 
  string
  tGlobalTableDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableGlobalSecondaryIndexSettingsUpdate')] 
  string
  tGlobalTableGlobalSecondaryIndexSettingsUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableGlobalSecondaryIndexSettingsUpdateList')] 
  string
  tGlobalTableGlobalSecondaryIndexSettingsUpdateList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableList')] 
  string
  tGlobalTableList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableNotFoundException')] 
  string
  tGlobalTableNotFoundException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('GlobalTableStatus')] 
  string
  tGlobalTableStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('IndexName')] 
  string
  tIndexName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('IndexNotFoundException')] 
  string
  tIndexNotFoundException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('IndexStatus')] 
  string
  tIndexStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Integer')] 
  string
  tInteger = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('IntegerObject')] 
  string
  tIntegerObject = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('InternalServerError')] 
  string
  tInternalServerError = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('InvalidRestoreTimeException')] 
  string
  tInvalidRestoreTimeException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionKeyAttributeMap')] 
  string
  tItemCollectionKeyAttributeMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionMetrics')] 
  string
  tItemCollectionMetrics = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionMetricsMultiple')] 
  string
  tItemCollectionMetricsMultiple = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionMetricsPerTable')] 
  string
  tItemCollectionMetricsPerTable = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionSizeEstimateBound')] 
  string
  tItemCollectionSizeEstimateBound = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionSizeEstimateRange')] 
  string
  tItemCollectionSizeEstimateRange = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCollectionSizeLimitExceededException')] 
  string
  tItemCollectionSizeLimitExceededException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemCount')] 
  string
  tItemCount = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ItemList')] 
  string
  tItemList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KMSMasterKeyArn')] 
  string
  tKMSMasterKeyArn = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KMSMasterKeyId')] 
  string
  tKMSMasterKeyId = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Key')] 
  string
  tKey = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeyConditions')] 
  string
  tKeyConditions = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeyExpression')] 
  string
  tKeyExpression = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeyList')] 
  string
  tKeyList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeySchema')] 
  string
  tKeySchema = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeySchemaAttributeName')] 
  string
  tKeySchemaAttributeName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeySchemaElement')] 
  string
  tKeySchemaElement = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeyType')] 
  string
  tKeyType = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('KeysAndAttributes')] 
  string
  tKeysAndAttributes = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LimitExceededException')] 
  string
  tLimitExceededException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListAttributeValue')] 
  string
  tListAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListBackupsInput')] 
  string
  tListBackupsInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListBackupsOutput')] 
  string
  tListBackupsOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListGlobalTablesInput')] 
  string
  tListGlobalTablesInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListGlobalTablesOutput')] 
  string
  tListGlobalTablesOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListTablesInput')] 
  string
  tListTablesInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListTablesInputLimit')] 
  string
  tListTablesInputLimit = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListTablesOutput')] 
  string
  tListTablesOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListTagsOfResourceInput')] 
  string
  tListTagsOfResourceInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ListTagsOfResourceOutput')] 
  string
  tListTagsOfResourceOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LocalSecondaryIndex')] 
  string
  tLocalSecondaryIndex = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LocalSecondaryIndexDescription')] 
  string
  tLocalSecondaryIndexDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LocalSecondaryIndexDescriptionList')] 
  string
  tLocalSecondaryIndexDescriptionList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LocalSecondaryIndexInfo')] 
  string
  tLocalSecondaryIndexInfo = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LocalSecondaryIndexList')] 
  string
  tLocalSecondaryIndexList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('LocalSecondaryIndexes')] 
  string
  tLocalSecondaryIndexes = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Long')] 
  string
  tLong = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('MapAttributeValue')] 
  string
  tMapAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('NextTokenString')] 
  string
  tNextTokenString = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('NonKeyAttributeName')] 
  string
  tNonKeyAttributeName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('NonKeyAttributeNameList')] 
  string
  tNonKeyAttributeNameList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('NullAttributeValue')] 
  string
  tNullAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('NumberAttributeValue')] 
  string
  tNumberAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('NumberSetAttributeValue')] 
  string
  tNumberSetAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PointInTimeRecoveryDescription')] 
  string
  tPointInTimeRecoveryDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PointInTimeRecoverySpecification')] 
  string
  tPointInTimeRecoverySpecification = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PointInTimeRecoveryStatus')] 
  string
  tPointInTimeRecoveryStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PointInTimeRecoveryUnavailableException')] 
  string
  tPointInTimeRecoveryUnavailableException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PositiveIntegerObject')] 
  string
  tPositiveIntegerObject = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PositiveLongObject')] 
  string
  tPositiveLongObject = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Projection')] 
  string
  tProjection = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ProjectionExpression')] 
  string
  tProjectionExpression = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ProjectionType')] 
  string
  tProjectionType = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ProvisionedThroughput')] 
  string
  tProvisionedThroughput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ProvisionedThroughputDescription')] 
  string
  tProvisionedThroughputDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ProvisionedThroughputExceededException')] 
  string
  tProvisionedThroughputExceededException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PutItemInput')] 
  string
  tPutItemInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PutItemInputAttributeMap')] 
  string
  tPutItemInputAttributeMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PutItemOutput')] 
  string
  tPutItemOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('PutRequest')] 
  string
  tPutRequest = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('QueryInput')] 
  string
  tQueryInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('QueryOutput')] 
  string
  tQueryOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RegionName')] 
  string
  tRegionName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Replica')] 
  string
  tReplica = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaAlreadyExistsException')] 
  string
  tReplicaAlreadyExistsException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaDescription')] 
  string
  tReplicaDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaDescriptionList')] 
  string
  tReplicaDescriptionList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaGlobalSecondaryIndexSettingsDescription')] 
  string
  tReplicaGlobalSecondaryIndexSettingsDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaGlobalSecondaryIndexSettingsDescriptionList')] 
  string
  tReplicaGlobalSecondaryIndexSettingsDescriptionList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaGlobalSecondaryIndexSettingsUpdate')] 
  string
  tReplicaGlobalSecondaryIndexSettingsUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaGlobalSecondaryIndexSettingsUpdateList')] 
  string
  tReplicaGlobalSecondaryIndexSettingsUpdateList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaList')] 
  string
  tReplicaList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaNotFoundException')] 
  string
  tReplicaNotFoundException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaSettingsDescription')] 
  string
  tReplicaSettingsDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaSettingsDescriptionList')] 
  string
  tReplicaSettingsDescriptionList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaSettingsUpdate')] 
  string
  tReplicaSettingsUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaSettingsUpdateList')] 
  string
  tReplicaSettingsUpdateList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaStatus')] 
  string
  tReplicaStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaUpdate')] 
  string
  tReplicaUpdate = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReplicaUpdateList')] 
  string
  tReplicaUpdateList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ResourceArnString')] 
  string
  tResourceArnString = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ResourceInUseException')] 
  string
  tResourceInUseException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ResourceNotFoundException')] 
  string
  tResourceNotFoundException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RestoreInProgress')] 
  string
  tRestoreInProgress = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RestoreSummary')] 
  string
  tRestoreSummary = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RestoreTableFromBackupInput')] 
  string
  tRestoreTableFromBackupInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RestoreTableFromBackupOutput')] 
  string
  tRestoreTableFromBackupOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RestoreTableToPointInTimeInput')] 
  string
  tRestoreTableToPointInTimeInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('RestoreTableToPointInTimeOutput')] 
  string
  tRestoreTableToPointInTimeOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReturnConsumedCapacity')] 
  string
  tReturnConsumedCapacity = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReturnItemCollectionMetrics')] 
  string
  tReturnItemCollectionMetrics = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ReturnValue')] 
  string
  tReturnValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SSEDescription')] 
  string
  tSSEDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SSEEnabled')] 
  string
  tSSEEnabled = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SSESpecification')] 
  string
  tSSESpecification = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SSEStatus')] 
  string
  tSSEStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SSEType')] 
  string
  tSSEType = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ScalarAttributeType')] 
  string
  tScalarAttributeType = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ScanInput')] 
  string
  tScanInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ScanOutput')] 
  string
  tScanOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ScanSegment')] 
  string
  tScanSegment = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('ScanTotalSegments')] 
  string
  tScanTotalSegments = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SecondaryIndexesCapacityMap')] 
  string
  tSecondaryIndexesCapacityMap = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Select')] 
  string
  tSelect = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SourceTableDetails')] 
  string
  tSourceTableDetails = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('SourceTableFeatureDetails')] 
  string
  tSourceTableFeatureDetails = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('StreamArn')] 
  string
  tStreamArn = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('StreamEnabled')] 
  string
  tStreamEnabled = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('StreamSpecification')] 
  string
  tStreamSpecification = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('StreamViewType')] 
  string
  tStreamViewType = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('String')] 
  string
  tString = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('StringAttributeValue')] 
  string
  tStringAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('StringSetAttributeValue')] 
  string
  tStringSetAttributeValue = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableAlreadyExistsException')] 
  string
  tTableAlreadyExistsException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableArn')] 
  string
  tTableArn = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableCreationDateTime')] 
  string
  tTableCreationDateTime = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableDescription')] 
  string
  tTableDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableId')] 
  string
  tTableId = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableInUseException')] 
  string
  tTableInUseException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableName')] 
  string
  tTableName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableNameList')] 
  string
  tTableNameList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableNotFoundException')] 
  string
  tTableNotFoundException = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TableStatus')] 
  string
  tTableStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('Tag')] 
  string
  tTag = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TagKeyList')] 
  string
  tTagKeyList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TagKeyString')] 
  string
  tTagKeyString = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TagList')] 
  string
  tTagList = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TagResourceInput')] 
  string
  tTagResourceInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TagValueString')] 
  string
  tTagValueString = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeRangeLowerBound')] 
  string
  tTimeRangeLowerBound = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeRangeUpperBound')] 
  string
  tTimeRangeUpperBound = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeToLiveAttributeName')] 
  string
  tTimeToLiveAttributeName = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeToLiveDescription')] 
  string
  tTimeToLiveDescription = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeToLiveEnabled')] 
  string
  tTimeToLiveEnabled = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeToLiveSpecification')] 
  string
  tTimeToLiveSpecification = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('TimeToLiveStatus')] 
  string
  tTimeToLiveStatus = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UntagResourceInput')] 
  string
  tUntagResourceInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateContinuousBackupsInput')] 
  string
  tUpdateContinuousBackupsInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateContinuousBackupsOutput')] 
  string
  tUpdateContinuousBackupsOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateExpression')] 
  string
  tUpdateExpression = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateGlobalSecondaryIndexAction')] 
  string
  tUpdateGlobalSecondaryIndexAction = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateGlobalTableInput')] 
  string
  tUpdateGlobalTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateGlobalTableOutput')] 
  string
  tUpdateGlobalTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateGlobalTableSettingsInput')] 
  string
  tUpdateGlobalTableSettingsInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateGlobalTableSettingsOutput')] 
  string
  tUpdateGlobalTableSettingsOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateItemInput')] 
  string
  tUpdateItemInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateItemOutput')] 
  string
  tUpdateItemOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateTableInput')] 
  string
  tUpdateTableInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateTableOutput')] 
  string
  tUpdateTableOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateTimeToLiveInput')] 
  string
  tUpdateTimeToLiveInput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('UpdateTimeToLiveOutput')] 
  string
  tUpdateTimeToLiveOutput = class(TObject)
  begin
  end;

  [TAmazonMarshallerAttribute('WriteRequest')] 
  string
  tWriteRequest = class(TObject)
  begin
  end;


  TAmazonDynamoDBClient = class(TAmazonClient)
  protected
  private
  public
    procedure InitClient(aprofile: UTF8String; asecret_key: UTF8String;
      aaccess_key: UTF8String; aregion: UTF8String); override;
    /// <summary>
    ///  <p>The <code>BatchGetItem</code> operation returns the attributes of one or more items from one or more tables. You identify requested items by primary key.</p> <p>A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. <code>BatchGetItem</code> will return a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded, or an internal processing failure occurs. If a partial result is returned, the operation returns a value for <code>UnprocessedKeys</code>. You can use this value to retry the operation starting with the next item to get.</p> <important> <p>If you request more than 100 items <code>BatchGetItem</code> will return a <code>ValidationException</code> with the message "Too many items requested for the BatchGetItem call".</p> </important> <p>For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns an appropriate <code>UnprocessedKeys</code> value so you can get the next page of results. If desired, your application can include its own logic to assemble the pages of results into one data set.</p> <p>If <i>none</i> of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then <code>BatchGetItem</code> will return a <code>ProvisionedThroughputExceededException</code>. If <i>at least one</i> of the items is successfully processed, then <code>BatchGetItem</code> completes successfully, while returning the keys of the unread items in <code>UnprocessedKeys</code>.</p> <important> <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, <i>we strongly recommend that you use an exponential backoff algorithm</i>. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </important> <p>By default, <code>BatchGetItem</code> performs eventually consistent reads on every table in the request. If you want strongly consistent reads instead, you can set <code>ConsistentRead</code> to <code>true</code> for any or all tables.</p> <p>In order to minimize response latency, <code>BatchGetItem</code> retrieves items in parallel.</p> <p>When designing your application, keep in mind that DynamoDB does not return items in any particular order. To help parse the response by item, include the primary key values for the items in your request in the <code>ProjectionExpression</code> parameter.</p> <p>If a requested item does not exist, it is not returned in the result. Requests for nonexistent items consume the minimum read capacity units according to the type of read. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations">Capacity Units Calculations</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('BatchGetItem')]  
    function BatchGetItem(aBatchGetItemInput: tBatchGetItemInput):tBatchGetItemOutput;
    /// <summary>
    ///  <p>The <code>BatchWriteItem</code> operation puts or deletes multiple items in one or more tables. A single call to <code>BatchWriteItem</code> can write up to 16 MB of data, which can comprise as many as 25 put or delete requests. Individual items to be written can be as large as 400 KB.</p> <note> <p> <code>BatchWriteItem</code> cannot update items. To update items, use the <code>UpdateItem</code> action.</p> </note> <p>The individual <code>PutItem</code> and <code>DeleteItem</code> operations specified in <code>BatchWriteItem</code> are atomic; however <code>BatchWriteItem</code> as a whole is not. If any requested operations fail because the table's provisioned throughput is exceeded or an internal processing failure occurs, the failed operations are returned in the <code>UnprocessedItems</code> response parameter. You can investigate and optionally resend the requests. Typically, you would call <code>BatchWriteItem</code> in a loop. Each iteration would check for unprocessed items and submit a new <code>BatchWriteItem</code> request with those unprocessed items until all items have been processed.</p> <p>Note that if <i>none</i> of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then <code>BatchWriteItem</code> will return a <code>ProvisionedThroughputExceededException</code>.</p> <important> <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, <i>we strongly recommend that you use an exponential backoff algorithm</i>. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </important> <p>With <code>BatchWriteItem</code>, you can efficiently write or delete large amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy data from another database into DynamoDB. In order to improve performance with these large-scale operations, <code>BatchWriteItem</code> does not behave in the same way as individual <code>PutItem</code> and <code>DeleteItem</code> calls would. For example, you cannot specify conditions on individual put and delete requests, and <code>BatchWriteItem</code> does not return deleted items in the response.</p> <p>If you use a programming language that supports concurrency, you can use threads to write items in parallel. Your application must include the necessary logic to manage the threads. With languages that don't support threading, you must update or delete the specified items one at a time. In both situations, <code>BatchWriteItem</code> performs the specified put and delete operations in parallel, giving you the power of the thread pool approach without having to introduce complexity into your application.</p> <p>Parallel processing reduces latency, but each specified put and delete request consumes the same number of write capacity units whether it is processed in parallel or not. Delete operations on nonexistent items consume one write capacity unit.</p> <p>If one or more of the following is true, DynamoDB rejects the entire batch write operation:</p> <ul> <li> <p>One or more tables specified in the <code>BatchWriteItem</code> request does not exist.</p> </li> <li> <p>Primary key attributes specified on an item in the request do not match those in the corresponding table's primary key schema.</p> </li> <li> <p>You try to perform multiple operations on the same item in the same <code>BatchWriteItem</code> request. For example, you cannot put and delete the same item in the same <code>BatchWriteItem</code> request. </p> </li> <li> <p> Your request contains at least two items with identical hash and range keys (which essentially is two put operations). </p> </li> <li> <p>There are more than 25 requests in the batch.</p> </li> <li> <p>Any individual item in a batch exceeds 400 KB.</p> </li> <li> <p>The total request size exceeds 16 MB.</p> </li> </ul> 
    /// </summary>
    [TAmazonMarshallerAttribute('BatchWriteItem')]  
    function BatchWriteItem(aBatchWriteItemInput: tBatchWriteItemInput):tBatchWriteItemOutput;
    /// <summary>
    ///  <p>Creates a backup for an existing table.</p> <p> Each time you create an On-Demand Backup, the entire table data is backed up. There is no limit to the number of on-demand backups that can be taken. </p> <p> When you create an On-Demand Backup, a time marker of the request is cataloged, and the backup is created asynchronously, by applying all changes until the time of the request to the last full table snapshot. Backup requests are processed instantaneously and become available for restore within minutes. </p> <p>You can call <code>CreateBackup</code> at a maximum rate of 50 times per second.</p> <p>All backups in DynamoDB work without consuming any provisioned throughput on the table.</p> <p> If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to contain all data committed to the table up to 14:24:00, and data committed after 14:26:00 will not be. The backup may or may not contain data modifications made between 14:24:00 and 14:26:00. On-Demand Backup does not support causal consistency. </p> <p> Along with data, the following are also included on the backups: </p> <ul> <li> <p>Global secondary indexes (GSIs)</p> </li> <li> <p>Local secondary indexes (LSIs)</p> </li> <li> <p>Streams</p> </li> <li> <p>Provisioned read and write capacity</p> </li> </ul> 
    /// </summary>
    [TAmazonMarshallerAttribute('CreateBackup')]  
    function CreateBackup(aCreateBackupInput: tCreateBackupInput):tCreateBackupOutput;
    /// <summary>
    ///  <p>Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided regions. </p> <p>If you want to add a new replica table to a global table, each of the following conditions must be true:</p> <ul> <li> <p>The table must have the same primary key as all of the other replicas.</p> </li> <li> <p>The table must have the same name as all of the other replicas.</p> </li> <li> <p>The table must have DynamoDB Streams enabled, with the stream containing both the new and the old images of the item.</p> </li> <li> <p>None of the replica tables in the global table can contain any data.</p> </li> </ul> <p> If global secondary indexes are specified, then the following conditions must also be met: </p> <ul> <li> <p> The global secondary indexes must have the same name. </p> </li> <li> <p> The global secondary indexes must have the same hash key and sort key (if present). </p> </li> </ul> <important> <p> Write capacity settings should be set consistently across your replica tables and secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the write capacity settings for all of your global tables replicas and indexes. </p> <p> If you prefer to manage write capacity settings manually, you should provision equal replicated write capacity units to your replica tables. You should also provision equal replicated write capacity units to matching secondary indexes across your global table. </p> </important> 
    /// </summary>
    [TAmazonMarshallerAttribute('CreateGlobalTable')]  
    function CreateGlobalTable(aCreateGlobalTableInput: tCreateGlobalTableInput):tCreateGlobalTableOutput;
    /// <summary>
    ///  <p>The <code>CreateTable</code> operation adds a new table to your account. In an AWS account, table names must be unique within each region. That is, you can have two tables with same name if you create the tables in different regions.</p> <p> <code>CreateTable</code> is an asynchronous operation. Upon receiving a <code>CreateTable</code> request, DynamoDB immediately returns a response with a <code>TableStatus</code> of <code>CREATING</code>. After the table is created, DynamoDB sets the <code>TableStatus</code> to <code>ACTIVE</code>. You can perform read and write operations only on an <code>ACTIVE</code> table. </p> <p>You can optionally define secondary indexes on the new table, as part of the <code>CreateTable</code> operation. If you want to create multiple tables with secondary indexes on them, you must create the tables sequentially. Only one table with secondary indexes can be in the <code>CREATING</code> state at any given time.</p> <p>You can use the <code>DescribeTable</code> action to check the table status.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('CreateTable')]  
    function CreateTable(aCreateTableInput: tCreateTableInput):tCreateTableOutput;
    /// <summary>
    ///  <p>Deletes an existing backup of a table.</p> <p>You can call <code>DeleteBackup</code> at a maximum rate of 10 times per second.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DeleteBackup')]  
    function DeleteBackup(aDeleteBackupInput: tDeleteBackupInput):tDeleteBackupOutput;
    /// <summary>
    ///  <p>Deletes a single item in a table by primary key. You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.</p> <p>In addition to deleting an item, you can also return the item's attribute values in the same operation, using the <code>ReturnValues</code> parameter.</p> <p>Unless you specify conditions, the <code>DeleteItem</code> is an idempotent operation; running it multiple times on the same item or attribute does <i>not</i> result in an error response.</p> <p>Conditional deletes are useful for deleting items only if specific conditions are met. If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not deleted.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DeleteItem')]  
    function DeleteItem(aDeleteItemInput: tDeleteItemInput):tDeleteItemOutput;
    /// <summary>
    ///  <p>The <code>DeleteTable</code> operation deletes a table and all of its items. After a <code>DeleteTable</code> request, the specified table is in the <code>DELETING</code> state until DynamoDB completes the deletion. If the table is in the <code>ACTIVE</code> state, you can delete it. If a table is in <code>CREATING</code> or <code>UPDATING</code> states, then DynamoDB returns a <code>ResourceInUseException</code>. If the specified table does not exist, DynamoDB returns a <code>ResourceNotFoundException</code>. If table is already in the <code>DELETING</code> state, no error is returned. </p> <note> <p>DynamoDB might continue to accept data read and write operations, such as <code>GetItem</code> and <code>PutItem</code>, on a table in the <code>DELETING</code> state until the table deletion is complete.</p> </note> <p>When you delete a table, any indexes on that table are also deleted.</p> <p>If you have DynamoDB Streams enabled on the table, then the corresponding stream on that table goes into the <code>DISABLED</code> state, and the stream is automatically deleted after 24 hours.</p> <p>Use the <code>DescribeTable</code> action to check the status of the table. </p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DeleteTable')]  
    function DeleteTable(aDeleteTableInput: tDeleteTableInput):tDeleteTableOutput;
    /// <summary>
    ///  <p>Describes an existing backup of a table.</p> <p>You can call <code>DescribeBackup</code> at a maximum rate of 10 times per second.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeBackup')]  
    function DescribeBackup(aDescribeBackupInput: tDescribeBackupInput):tDescribeBackupOutput;
    /// <summary>
    ///  <p>Checks the status of continuous backups and point in time recovery on the specified table. Continuous backups are <code>ENABLED</code> on all tables at table creation. If point in time recovery is enabled, <code>PointInTimeRecoveryStatus</code> will be set to ENABLED.</p> <p> Once continuous backups and point in time recovery are enabled, you can restore to any point in time within <code>EarliestRestorableDateTime</code> and <code>LatestRestorableDateTime</code>. </p> <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. You can restore your table to any point in time during the last 35 days. </p> <p>You can call <code>DescribeContinuousBackups</code> at a maximum rate of 10 times per second.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeContinuousBackups')]  
    function DescribeContinuousBackups(aDescribeContinuousBackupsInput: tDescribeContinuousBackupsInput):tDescribeContinuousBackupsOutput;
    /// <summary>
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeEndpoints')]  
    function DescribeEndpoints(aDescribeEndpointsRequest: tDescribeEndpointsRequest):tDescribeEndpointsResponse;
    /// <summary>
    ///  <p>Returns information about the specified global table.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeGlobalTable')]  
    function DescribeGlobalTable(aDescribeGlobalTableInput: tDescribeGlobalTableInput):tDescribeGlobalTableOutput;
    /// <summary>
    ///  <p>Describes region specific settings for a global table.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeGlobalTableSettings')]  
    function DescribeGlobalTableSettings(aDescribeGlobalTableSettingsInput: tDescribeGlobalTableSettingsInput):tDescribeGlobalTableSettingsOutput;
    /// <summary>
    ///  <p>Returns the current provisioned-capacity limits for your AWS account in a region, both for the region as a whole and for any one DynamoDB table that you create there.</p> <p>When you establish an AWS account, the account has initial limits on the maximum read capacity units and write capacity units that you can provision across all of your DynamoDB tables in a given region. Also, there are per-table limits that apply when you create a table there. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> page in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Although you can increase these limits by filing a case at <a href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>, obtaining the increase is not instantaneous. The <code>DescribeLimits</code> action lets you write code to compare the capacity you are currently using to those limits imposed by your account so that you have enough time to apply for an increase before you hit a limit.</p> <p>For example, you could use one of the AWS SDKs to do the following:</p> <ol> <li> <p>Call <code>DescribeLimits</code> for a particular region to obtain your current account limits on provisioned capacity there.</p> </li> <li> <p>Create a variable to hold the aggregate read capacity units provisioned for all your tables in that region, and one to hold the aggregate write capacity units. Zero them both.</p> </li> <li> <p>Call <code>ListTables</code> to obtain a list of all your DynamoDB tables.</p> </li> <li> <p>For each table name listed by <code>ListTables</code>, do the following:</p> <ul> <li> <p>Call <code>DescribeTable</code> with the table name.</p> </li> <li> <p>Use the data returned by <code>DescribeTable</code> to add the read capacity units and write capacity units provisioned for the table itself to your variables.</p> </li> <li> <p>If the table has one or more global secondary indexes (GSIs), loop over these GSIs and add their provisioned capacity values to your variables as well.</p> </li> </ul> </li> <li> <p>Report the account limits for that region returned by <code>DescribeLimits</code>, along with the total current provisioned capacity levels you have calculated.</p> </li> </ol> <p>This will let you see whether you are getting close to your account-level limits.</p> <p>The per-table limits apply only when you are creating a new table. They restrict the sum of the provisioned capacity of the new table itself and all its global secondary indexes.</p> <p>For existing tables and their GSIs, DynamoDB will not let you increase provisioned capacity extremely rapidly, but the only upper limit that applies is that the aggregate provisioned capacity over all your tables and GSIs cannot exceed either of the per-account limits.</p> <note> <p> <code>DescribeLimits</code> should only be called periodically. You can expect throttling errors if you call it more than once in a minute.</p> </note> <p>The <code>DescribeLimits</code> Request element has no content.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeLimits')]  
    function DescribeLimits(aDescribeLimitsInput: tDescribeLimitsInput):tDescribeLimitsOutput;
    /// <summary>
    ///  <p>Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table.</p> <note> <p>If you issue a <code>DescribeTable</code> request immediately after a <code>CreateTable</code> request, DynamoDB might return a <code>ResourceNotFoundException</code>. This is because <code>DescribeTable</code> uses an eventually consistent query, and the metadata for your table might not be available at that moment. Wait for a few seconds, and then try the <code>DescribeTable</code> request again.</p> </note> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeTable')]  
    function DescribeTable(aDescribeTableInput: tDescribeTableInput):tDescribeTableOutput;
    /// <summary>
    ///  <p>Gives a description of the Time to Live (TTL) status on the specified table. </p> 
    /// </summary>
    [TAmazonMarshallerAttribute('DescribeTimeToLive')]  
    function DescribeTimeToLive(aDescribeTimeToLiveInput: tDescribeTimeToLiveInput):tDescribeTimeToLiveOutput;
    /// <summary>
    ///  <p>The <code>GetItem</code> operation returns a set of attributes for the item with the given primary key. If there is no matching item, <code>GetItem</code> does not return any data and there will be no <code>Item</code> element in the response.</p> <p> <code>GetItem</code> provides an eventually consistent read by default. If your application requires a strongly consistent read, set <code>ConsistentRead</code> to <code>true</code>. Although a strongly consistent read might take more time than an eventually consistent read, it always returns the last updated value.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('GetItem')]  
    function GetItem(aGetItemInput: tGetItemInput):tGetItemOutput;
    /// <summary>
    ///  <p>List backups associated with an AWS account. To list backups for a given table, specify <code>TableName</code>. <code>ListBackups</code> returns a paginated list of results with at most 1MB worth of items in a page. You can also specify a limit for the maximum number of entries to be returned in a page. </p> <p>In the request, start time is inclusive but end time is exclusive. Note that these limits are for the time at which the original backup was requested.</p> <p>You can call <code>ListBackups</code> a maximum of 5 times per second.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('ListBackups')]  
    function ListBackups(aListBackupsInput: tListBackupsInput):tListBackupsOutput;
    /// <summary>
    ///  <p>Lists all global tables that have a replica in the specified region.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('ListGlobalTables')]  
    function ListGlobalTables(aListGlobalTablesInput: tListGlobalTablesInput):tListGlobalTablesOutput;
    /// <summary>
    ///  <p>Returns an array of table names associated with the current account and endpoint. The output from <code>ListTables</code> is paginated, with each page returning a maximum of 100 table names.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('ListTables')]  
    function ListTables(aListTablesInput: tListTablesInput):tListTablesOutput;
    /// <summary>
    ///  <p>List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10 times per second, per account.</p> <p>For an overview on tagging DynamoDB resources, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('ListTagsOfResource')]  
    function ListTagsOfResource(aListTagsOfResourceInput: tListTagsOfResourceInput):tListTagsOfResourceOutput;
    /// <summary>
    ///  <p>Creates a new item, or replaces an old item with a new item. If an item that has the same primary key as the new item already exists in the specified table, the new item completely replaces the existing item. You can perform a conditional put operation (add a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values. You can return the item's attribute values in the same operation, using the <code>ReturnValues</code> parameter.</p> <important> <p>This topic provides general information about the <code>PutItem</code> API.</p> <p>For information on how to call the <code>PutItem</code> API using the AWS SDK in specific languages, see the following:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem"> PutItem in the AWS Command Line Interface </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for .NET </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for C++ </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for Go </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for Java </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for JavaScript </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for PHP V3 </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for Python </a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem"> PutItem in the AWS SDK for Ruby V2 </a> </p> </li> </ul> </important> <p>When you add an item, the primary key attribute(s) are the only required attributes. Attribute values cannot be null. String and Binary type attributes must have lengths greater than zero. Set type attributes cannot be empty. Requests with empty values will be rejected with a <code>ValidationException</code> exception.</p> <note> <p>To prevent a new item from replacing an existing item, use a conditional expression that contains the <code>attribute_not_exists</code> function with the name of the attribute being used as the partition key for the table. Since every record must contain that attribute, the <code>attribute_not_exists</code> function will only succeed if no matching item exists.</p> </note> <p>For more information about <code>PutItem</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working with Items</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('PutItem')]  
    function PutItem(aPutItemInput: tPutItemInput):tPutItemOutput;
    /// <summary>
    ///  <p>The <code>Query</code> operation finds items based on primary key values. You can query any table or secondary index that has a composite primary key (a partition key and a sort key). </p> <p>Use the <code>KeyConditionExpression</code> parameter to provide a specific value for the partition key. The <code>Query</code> operation will return all of the items from the table or index with that partition key value. You can optionally narrow the scope of the <code>Query</code> operation by specifying a sort key value and a comparison operator in <code>KeyConditionExpression</code>. To further refine the <code>Query</code> results, you can optionally provide a <code>FilterExpression</code>. A <code>FilterExpression</code> determines which items within the results should be returned to you. All of the other results are discarded. </p> <p> A <code>Query</code> operation always returns a result set. If no matching items are found, the result set will be empty. Queries that do not return results consume the minimum number of read capacity units for that type of read operation. </p> <note> <p> DynamoDB calculates the number of read capacity units consumed based on item size, not on the amount of data that is returned to an application. The number of capacity units consumed will be the same whether you request all of the attributes (the default behavior) or just some of them (using a projection expression). The number will also be the same whether or not you use a <code>FilterExpression</code>. </p> </note> <p> <code>Query</code> results are always sorted by the sort key value. If the data type of the sort key is Number, the results are returned in numeric order; otherwise, the results are returned in order of UTF-8 bytes. By default, the sort order is ascending. To reverse the order, set the <code>ScanIndexForward</code> parameter to false. </p> <p> A single <code>Query</code> operation will read up to the maximum number of items set (if using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then apply any filtering to the results using <code>FilterExpression</code>. If <code>LastEvaluatedKey</code> is present in the response, you will need to paginate the result set. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination">Paginating the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p> <p> <code>FilterExpression</code> is applied after a <code>Query</code> finishes, but before the results are returned. A <code>FilterExpression</code> cannot contain partition key or sort key attributes. You need to specify those attributes in the <code>KeyConditionExpression</code>. </p> <note> <p> A <code>Query</code> operation can return an empty result set and a <code>LastEvaluatedKey</code> if all the items read for the page of results are filtered out. </p> </note> <p>You can query a table, a local secondary index, or a global secondary index. For a query on a table or on a local secondary index, you can set the <code>ConsistentRead</code> parameter to <code>true</code> and obtain a strongly consistent result. Global secondary indexes support eventually consistent reads only, so do not specify <code>ConsistentRead</code> when querying a global secondary index.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('Query')]  
    function Query(aQueryInput: tQueryInput):tQueryOutput;
    /// <summary>
    ///  <p>Creates a new table from an existing backup. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account. </p> <p>You can call <code>RestoreTableFromBackup</code> at a maximum rate of 10 times per second.</p> <p>You must manually set up the following on the restored table:</p> <ul> <li> <p>Auto scaling policies</p> </li> <li> <p>IAM policies</p> </li> <li> <p>Cloudwatch metrics and alarms</p> </li> <li> <p>Tags</p> </li> <li> <p>Stream settings</p> </li> <li> <p>Time to Live (TTL) settings</p> </li> </ul> 
    /// </summary>
    [TAmazonMarshallerAttribute('RestoreTableFromBackup')]  
    function RestoreTableFromBackup(aRestoreTableFromBackupInput: tRestoreTableFromBackupInput):tRestoreTableFromBackupOutput;
    /// <summary>
    ///  <p>Restores the specified table to the specified point in time within <code>EarliestRestorableDateTime</code> and <code>LatestRestorableDateTime</code>. You can restore your table to any point in time during the last 35 days. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account. </p> <p> When you restore using point in time recovery, DynamoDB restores your table data to the state based on the selected date and time (day:hour:minute:second) to a new table. </p> <p> Along with data, the following are also included on the new restored table using point in time recovery: </p> <ul> <li> <p>Global secondary indexes (GSIs)</p> </li> <li> <p>Local secondary indexes (LSIs)</p> </li> <li> <p>Provisioned read and write capacity</p> </li> <li> <p>Encryption settings</p> <important> <p> All these settings come from the current settings of the source table at the time of restore. </p> </important> </li> </ul> <p>You must manually set up the following on the restored table:</p> <ul> <li> <p>Auto scaling policies</p> </li> <li> <p>IAM policies</p> </li> <li> <p>Cloudwatch metrics and alarms</p> </li> <li> <p>Tags</p> </li> <li> <p>Stream settings</p> </li> <li> <p>Time to Live (TTL) settings</p> </li> <li> <p>Point in time recovery settings</p> </li> </ul> 
    /// </summary>
    [TAmazonMarshallerAttribute('RestoreTableToPointInTime')]  
    function RestoreTableToPointInTime(aRestoreTableToPointInTimeInput: tRestoreTableToPointInTimeInput):tRestoreTableToPointInTimeOutput;
    /// <summary>
    ///  <p>The <code>Scan</code> operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a <code>FilterExpression</code> operation.</p> <p>If the total number of scanned items exceeds the maximum data set size limit of 1 MB, the scan stops and results are returned to the user as a <code>LastEvaluatedKey</code> value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria. </p> <p>A single <code>Scan</code> operation will read up to the maximum number of items set (if using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then apply any filtering to the results using <code>FilterExpression</code>. If <code>LastEvaluatedKey</code> is present in the response, you will need to paginate the result set. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination">Paginating the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p> <p> <code>Scan</code> operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel <code>Scan</code> operation by providing the <code>Segment</code> and <code>TotalSegments</code> parameters. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan">Parallel Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p> <code>Scan</code> uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the <code>Scan</code> begins, you can set the <code>ConsistentRead</code> parameter to <code>true</code>.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('Scan')]  
    function Scan(aScanInput: tScanInput):tScanOutput;
    /// <summary>
    ///  <p>Associate a set of tags with an Amazon DynamoDB resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking. You can call TagResource up to 5 times per second, per account. </p> <p>For an overview on tagging DynamoDB resources, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('TagResource')]  
    procedure TagResource(aTagResourceInput: tTagResourceInput);
    /// <summary>
    ///  <p>Removes the association of tags from an Amazon DynamoDB resource. You can call UntagResource up to 5 times per second, per account. </p> <p>For an overview on tagging DynamoDB resources, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('UntagResource')]  
    procedure UntagResource(aUntagResourceInput: tUntagResourceInput);
    /// <summary>
    ///  <p> <code>UpdateContinuousBackups</code> enables or disables point in time recovery for the specified table. A successful <code>UpdateContinuousBackups</code> call returns the current <code>ContinuousBackupsDescription</code>. Continuous backups are <code>ENABLED</code> on all tables at table creation. If point in time recovery is enabled, <code>PointInTimeRecoveryStatus</code> will be set to ENABLED.</p> <p> Once continuous backups and point in time recovery are enabled, you can restore to any point in time within <code>EarliestRestorableDateTime</code> and <code>LatestRestorableDateTime</code>. </p> <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. You can restore your table to any point in time during the last 35 days.. </p> 
    /// </summary>
    [TAmazonMarshallerAttribute('UpdateContinuousBackups')]  
    function UpdateContinuousBackups(aUpdateContinuousBackupsInput: tUpdateContinuousBackupsInput):tUpdateContinuousBackupsOutput;
    /// <summary>
    ///  <p>Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, must have the same name as the global table, must have the same key schema, and must have DynamoDB Streams enabled and must have same provisioned and maximum write capacity units.</p> <note> <p>Although you can use <code>UpdateGlobalTable</code> to add replicas and remove replicas in a single request, for simplicity we recommend that you issue separate requests for adding or removing replicas.</p> </note> <p> If global secondary indexes are specified, then the following conditions must also be met: </p> <ul> <li> <p> The global secondary indexes must have the same name. </p> </li> <li> <p> The global secondary indexes must have the same hash key and sort key (if present). </p> </li> <li> <p> The global secondary indexes must have the same provisioned and maximum write capacity units. </p> </li> </ul> 
    /// </summary>
    [TAmazonMarshallerAttribute('UpdateGlobalTable')]  
    function UpdateGlobalTable(aUpdateGlobalTableInput: tUpdateGlobalTableInput):tUpdateGlobalTableOutput;
    /// <summary>
    ///  <p>Updates settings for a global table.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('UpdateGlobalTableSettings')]  
    function UpdateGlobalTableSettings(aUpdateGlobalTableSettingsInput: tUpdateGlobalTableSettingsInput):tUpdateGlobalTableSettingsOutput;
    /// <summary>
    ///  <p>Edits an existing item's attributes, or adds a new item to the table if it does not already exist. You can put, delete, or add attribute values. You can also perform a conditional update on an existing item (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).</p> <p>You can also return the item's attribute values in the same <code>UpdateItem</code> operation using the <code>ReturnValues</code> parameter.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('UpdateItem')]  
    function UpdateItem(aUpdateItemInput: tUpdateItemInput):tUpdateItemOutput;
    /// <summary>
    ///  <p>Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table.</p> <p>You can only perform one of the following operations at once:</p> <ul> <li> <p>Modify the provisioned throughput settings of the table.</p> </li> <li> <p>Enable or disable Streams on the table.</p> </li> <li> <p>Remove a global secondary index from the table.</p> </li> <li> <p>Create a new global secondary index on the table. Once the index begins backfilling, you can use <code>UpdateTable</code> to perform other operations.</p> </li> </ul> <p> <code>UpdateTable</code> is an asynchronous operation; while it is executing, the table status changes from <code>ACTIVE</code> to <code>UPDATING</code>. While it is <code>UPDATING</code>, you cannot issue another <code>UpdateTable</code> request. When the table returns to the <code>ACTIVE</code> state, the <code>UpdateTable</code> operation is complete.</p> 
    /// </summary>
    [TAmazonMarshallerAttribute('UpdateTable')]  
    function UpdateTable(aUpdateTableInput: tUpdateTableInput):tUpdateTableOutput;
  end;

implementation 

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
