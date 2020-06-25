# VeloPayments::CreateFundingAccountRequestV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**name** | **String** |  | 
**payor_id** | **String** |  | 
**account_name** | **String** | Required if type is FBO | [optional] 
**account_number** | **String** | Required if type is FBO | [optional] 
**routing_number** | **String** | Required if type is FBO | [optional] 
**currency** | **String** | ISO 4217 currency code, Required if type is WUBS_DECOUPLED | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreateFundingAccountRequestV2.new(type: null,
                                 name: null,
                                 payor_id: null,
                                 account_name: null,
                                 account_number: null,
                                 routing_number: null,
                                 currency: USD)
```


