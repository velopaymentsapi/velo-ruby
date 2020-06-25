# VeloPayments::PaymentDeltaV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** |  | [readonly] 
**payout_id** | **String** |  | [readonly] 
**payor_payment_id** | **String** |  | [optional] 
**payment_currency** | **String** |  | [optional] 
**payment_amount** | **Integer** |  | [optional] 
**status** | **String** |  | [optional] 
**source_currency** | **String** |  | [optional] 
**source_amount** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentDeltaV4.new(payment_id: null,
                                 payout_id: null,
                                 payor_payment_id: null,
                                 payment_currency: null,
                                 payment_amount: null,
                                 status: null,
                                 source_currency: null,
                                 source_amount: null)
```


