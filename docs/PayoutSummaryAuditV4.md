# VeloPayments::PayoutSummaryAuditV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payout_id** | **String** |  | [optional] 
**payor_id** | **String** |  | [optional] 
**status** | [**PayoutStatusV4**](PayoutStatusV4.md) |  | 
**date_time** | **DateTime** |  | [optional] 
**submitted_date_time** | **String** |  | 
**instructed_date_time** | **String** |  | [optional] 
**withdrawn_date_time** | **DateTime** |  | [optional] 
**total_payments** | **Integer** |  | [optional] 
**total_incomplete_payments** | **Integer** |  | [optional] 
**total_returned_payments** | **Integer** |  | [optional] 
**total_withdrawn_payments** | **Integer** |  | [optional] 
**source_account_summary** | [**Array&lt;SourceAccountSummaryV4&gt;**](SourceAccountSummaryV4.md) |  | [optional] 
**fx_summaries** | [**Array&lt;FxSummaryV4&gt;**](FxSummaryV4.md) |  | [optional] 
**payout_memo** | **String** |  | [optional] 
**payout_type** | [**PayoutTypeV4**](PayoutTypeV4.md) |  | 
**payor_name** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayoutSummaryAuditV4.new(payout_id: null,
                                 payor_id: null,
                                 status: null,
                                 date_time: null,
                                 submitted_date_time: null,
                                 instructed_date_time: null,
                                 withdrawn_date_time: null,
                                 total_payments: null,
                                 total_incomplete_payments: null,
                                 total_returned_payments: null,
                                 total_withdrawn_payments: null,
                                 source_account_summary: null,
                                 fx_summaries: null,
                                 payout_memo: null,
                                 payout_type: null,
                                 payor_name: null)
```


