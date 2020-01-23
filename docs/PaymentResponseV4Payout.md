# VeloPayments::PaymentResponseV4Payout

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payout_id** | **String** |  | [optional] 
**payout_from** | [**PayoutPayorV4**](PayoutPayorV4.md) |  | [optional] 
**payout_to** | [**PayoutPayorV4**](PayoutPayorV4.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentResponseV4Payout.new(payout_id: null,
                                 payout_from: null,
                                 payout_to: null)
```


