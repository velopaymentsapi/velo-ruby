# VeloPayments::PayoutSummaryAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **status** | [**PayoutStatus**](PayoutStatus.md) |  |  |
| **date_time** | **Time** |  | [optional] |
| **submitted_date_time** | **String** |  |  |
| **instructed_date_time** | **String** |  | [optional] |
| **withdrawn_date_time** | **Time** |  | [optional] |
| **total_payments** | **Integer** |  | [optional] |
| **total_incomplete_payments** | **Integer** |  | [optional] |
| **total_returned_payments** | **Integer** |  | [optional] |
| **total_withdrawn_payments** | **Integer** |  | [optional] |
| **source_account_summary** | [**Array&lt;SourceAccountSummary&gt;**](SourceAccountSummary.md) |  | [optional] |
| **fx_summaries** | [**Array&lt;FxSummary&gt;**](FxSummary.md) |  | [optional] |
| **payout_memo** | **String** |  | [optional] |
| **payout_type** | [**PayoutType**](PayoutType.md) |  |  |
| **payor_name** | **String** |  |  |
| **schedule** | [**PayoutSchedule**](PayoutSchedule.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutSummaryAudit.new(
  payout_id: null,
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
  payor_name: null,
  schedule: null
)
```

