@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZNREQ77'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_NREQ77
  as select from ZNREQ77
{
  key request_uuid as RequestUUID,
  request_id as RequestID,
  title as Title,
  area as Area,
  priority as Priority,
  status as Status,
  required_date as RequiredDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  total_amount as TotalAmount,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency_code as CurrencyCode,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
