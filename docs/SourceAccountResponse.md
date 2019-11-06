# VeloPayments::SourceAccountResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Source Account Id | [optional] 
**balance** | **Integer** | Decimal implied | [optional] 
**currency** | **String** |  | [optional] 
**funding_ref** | **String** |  | [optional] 
**physical_account_name** | **String** |  | [optional] 
**rails_id** | **String** |  | [optional] 
**payor_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**pooled** | **Boolean** |  | [optional] 
**balance_visible** | **Boolean** |  | [optional] 
**customer_id** | **String** |  | [optional] 
**physical_account_id** | **String** |  | [optional] 
**funding_account_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccountResponse.new(id: null,
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
                                 funding_account_id: null)
```


