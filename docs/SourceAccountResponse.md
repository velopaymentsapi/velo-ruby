# VeloPayments::SourceAccountResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Source Account Id | [optional] 
**balance** | **Object** | Decimal implied | [optional] 
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

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccountResponse.new(id: null,
                                 balance: null,
                                 currency: null,
                                 funding_ref: null,
                                 physical_account_name: null,
                                 rails_id: null,
                                 payor_id: null,
                                 name: null,
                                 pooled: null,
                                 balance_visible: null,
                                 customer_id: null,
                                 physical_account_id: null)
```

