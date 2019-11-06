# VeloPayments::FundingDelta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | 
**funding_id** | **String** |  | [readonly] 
**amount** | **Integer** | Amount to fund in minor units | [optional] 
**currency** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FundingDelta.new(status: ALLOCATED,
                                 funding_id: null,
                                 amount: 100000,
                                 currency: USD)
```


