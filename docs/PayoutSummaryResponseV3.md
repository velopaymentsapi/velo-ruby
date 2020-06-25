# VeloPayments::PayoutSummaryResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payout_id** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**payments_submitted** | **Integer** |  | [optional] 
**payments_accepted** | **Integer** |  | [optional] 
**payments_rejected** | **Integer** |  | [optional] 
**payments_withdrawn** | **Integer** |  | 
**fx_summaries** | [**Array&lt;QuoteFxSummaryV3&gt;**](QuoteFxSummaryV3.md) |  | 
**accounts** | [**Array&lt;SourceAccountV3&gt;**](SourceAccountV3.md) |  | 
**accepted_payments** | [**Array&lt;AcceptedPaymentV3&gt;**](AcceptedPaymentV3.md) |  | 
**rejected_payments** | [**Array&lt;RejectedPaymentV3&gt;**](RejectedPaymentV3.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayoutSummaryResponseV3.new(payout_id: null,
                                 status: COMPLETED,
                                 payments_submitted: 10,
                                 payments_accepted: 10,
                                 payments_rejected: 0,
                                 payments_withdrawn: 0,
                                 fx_summaries: null,
                                 accounts: null,
                                 accepted_payments: null,
                                 rejected_payments: null)
```


