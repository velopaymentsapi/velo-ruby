# VeloPayments::PayoutSummaryAuditV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payout_id** | **String** |  | 
**payor_id** | **String** |  | [optional] 
**status** | [**PayoutStatusV3**](PayoutStatusV3.md) |  | 
**date_time** | **DateTime** |  | [optional] 
**submitted_date_time** | **String** |  | 
**instructed_date_time** | **String** |  | [optional] 
**total_payments** | **Integer** |  | [optional] 
**total_incomplete_payments** | **Integer** |  | [optional] 
**total_failed_payments** | **Integer** |  | [optional] 
**source_account_summary** | [**Array&lt;SourceAccountSummaryV3&gt;**](SourceAccountSummaryV3.md) |  | [optional] 
**fx_summaries** | [**Array&lt;FxSummaryV3&gt;**](FxSummaryV3.md) |  | [optional] 
**payout_memo** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayoutSummaryAuditV3.new(payout_id: null,
                                 payor_id: null,
                                 status: null,
                                 date_time: null,
                                 submitted_date_time: null,
                                 instructed_date_time: null,
                                 total_payments: 123,
                                 total_incomplete_payments: 123,
                                 total_failed_payments: 123,
                                 source_account_summary: null,
                                 fx_summaries: null,
                                 payout_memo: null)
```


