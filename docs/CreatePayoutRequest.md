# VeloPayments::CreatePayoutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** | Deprecated in v2.16. Any value supplied here will be ignored. | [optional] 
**payout_from_payor_id** | **String** | The id of the payor whose source account(s) will be debited. payoutFromPayorId and payoutToPayorId must be both supplied or both omitted. | [optional] 
**payout_to_payor_id** | **String** | The id of the payor whose payees will be paid. payoutFromPayorId and payoutToPayorId must be both supplied or both omitted. | [optional] 
**payout_memo** | **String** | Text applied to all payment memos unless specified explicitly on a payment. This should be the reference field on the statement seen by the payee (but not via ACH) | [optional] 
**payments** | [**Array&lt;PaymentInstruction&gt;**](PaymentInstruction.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayoutRequest.new(payor_id: null,
                                 payout_from_payor_id: c4261044-13df-4a6c-b1d4-fa8be2b46f5a,
                                 payout_to_payor_id: 9afc6b39-de12-466a-a9ca-07c7a23b312d,
                                 payout_memo: Monthly Payment,
                                 payments: null)
```


