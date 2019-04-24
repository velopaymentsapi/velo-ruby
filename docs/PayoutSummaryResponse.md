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
**rejected_payments** | [**Array&lt;RejectedPayment&gt;**](RejectedPayment.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayoutSummaryResponse.new(payout_id: null,
                                 status: null,
                                 payments_submitted: null,
                                 payments_accepted: null,
                                 payments_rejected: null,
                                 fx_summaries: null,
                                 accounts: null,
                                 rejected_payments: null)
```


