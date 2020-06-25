# VeloPayments::SourceAccountResponseV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Source Account Id | 
**balance** | **Integer** | Decimal implied | [optional] 
**currency** | **String** |  | [optional] 
**funding_ref** | **String** |  | 
**physical_account_name** | **String** |  | 
**rails_id** | **String** |  | 
**payor_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**pooled** | **Boolean** |  | 
**balance_visible** | **Boolean** |  | 
**customer_id** | **String** |  | [optional] 
**physical_account_id** | **String** |  | [optional] 
**notifications** | [**Notifications**](Notifications.md) |  | [optional] 
**funding_account_id** | **String** |  | [optional] 
**auto_top_up_config** | [**AutoTopUpConfig**](AutoTopUpConfig.md) |  | [optional] 
**account_type** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccountResponseV2.new(id: null,
                                 balance: 1203489,
                                 currency: USD,
                                 funding_ref: a1b2c3d4,
                                 physical_account_name: VELO_FBO_MYBANKA_USD,
                                 rails_id: BOA_RAIL,
                                 payor_id: null,
                                 name: MyAccountName,
                                 pooled: null,
                                 balance_visible: null,
                                 customer_id: Joe Customer,
                                 physical_account_id: null,
                                 notifications: null,
                                 funding_account_id: null,
                                 auto_top_up_config: null,
                                 account_type: FBO)
```


