# VeloPayments::CreatePayoutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | 
**payout_memo** | **String** |  | [optional] 
**payments** | [**Array&lt;PaymentInstruction&gt;**](PaymentInstruction.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayoutRequest.new(payor_id: null,
                                 payout_memo: null,
                                 payments: null)
```


