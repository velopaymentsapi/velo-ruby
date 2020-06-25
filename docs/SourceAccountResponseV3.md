# VeloPayments::SourceAccountResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Source Account Id | 
**balance** | **Integer** | Decimal implied | [optional] 
**currency** | **String** |  | [optional] 
**funding_ref** | **String** | The funding reference (will not be set for DECOUPLED accounts). | [optional] 
**physical_account_name** | **String** | The physical account name (will not be set for DECOUPLED accounts). | [optional] 
**rails_id** | **String** |  | 
**payor_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**pooled** | **Boolean** | The pooled account flag (will not be set for DECOUPLED accounts). | [optional] 
**customer_id** | **String** |  | [optional] 
**physical_account_id** | **String** | The physical account id (will not be set for DECOUPLED accounts). | [optional] 
**notifications** | [**Notifications2**](Notifications2.md) |  | [optional] 
**auto_top_up_config** | [**AutoTopUpConfig2**](AutoTopUpConfig2.md) |  | [optional] 
**type** | **String** |  | 
**country** | **String** | The two character ISO country code for the associated account | [optional] 
**archived** | **Boolean** | A flag for whether the source account has been archived.  Only present in the response if true. | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccountResponseV3.new(id: null,
                                 balance: 1203489,
                                 currency: USD,
                                 funding_ref: a1b2c3d4,
                                 physical_account_name: VELO_FBO_MYBANKA_USD,
                                 rails_id: BOA_RAIL,
                                 payor_id: null,
                                 name: MyAccountName,
                                 pooled: null,
                                 customer_id: Joe Customer,
                                 physical_account_id: null,
                                 notifications: null,
                                 auto_top_up_config: null,
                                 type: FBO,
                                 country: US,
                                 archived: null)
```


