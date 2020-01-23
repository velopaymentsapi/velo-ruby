# VeloPayments::PayoutSummaryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payout_id** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**payments_submitted** | **Integer** |  | [optional] 
**payments_accepted** | **Integer** |  | [optional] 
**payments_rejected** | **Integer** |  | [optional] 
**fx_summaries** | [**Array&lt;QuoteFxSummary&gt;**](QuoteFxSummary.md) |  | 
**accounts** | [**Array&lt;SourceAccount&gt;**](SourceAccount.md) |  | 
**accepted_payments** | [**Array&lt;AcceptedPayment&gt;**](AcceptedPayment.md) |  | 
**rejected_payments** | [**Array&lt;RejectedPayment&gt;**](RejectedPayment.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayoutSummaryResponse.new(payout_id: null,
                                 status: COMPLETED,
                                 payments_submitted: 10,
                                 payments_accepted: 10,
                                 payments_rejected: 0,
                                 fx_summaries: null,
                                 accounts: null,
                                 accepted_payments: null,
                                 rejected_payments: null)
```


