# VeloPayments::PayoutSummaryResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** | The id of the payout | [optional] |
| **status** | **String** | The status of the payout (one of SUBMITTED, ACCEPTED, REJECTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, WITHDRAWN) | [optional] |
| **payments_submitted** | **Integer** | The number of payments that were submitted in the payout | [optional] |
| **payments_accepted** | **Integer** | The number of payments that were accepted in the payout | [optional] |
| **payments_rejected** | **Integer** | The number of payments that were rejected in the payout | [optional] |
| **payments_withdrawn** | **Integer** | The number of payments that were withdrawn in the payout |  |
| **fx_summaries** | [**Array&lt;QuoteFxSummaryV3&gt;**](QuoteFxSummaryV3.md) |  |  |
| **accounts** | [**Array&lt;SourceAccountV3&gt;**](SourceAccountV3.md) |  |  |
| **accepted_payments** | [**Array&lt;AcceptedPaymentV3&gt;**](AcceptedPaymentV3.md) |  |  |
| **rejected_payments** | [**Array&lt;RejectedPaymentV3&gt;**](RejectedPaymentV3.md) |  |  |
| **schedule** | [**PayoutScheduleV3**](PayoutScheduleV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutSummaryResponseV3.new(
  payout_id: cf81e490-4ab8-49c2-bd68-9d1e725480cb,
  status: COMPLETED,
  payments_submitted: 10,
  payments_accepted: 9,
  payments_rejected: 1,
  payments_withdrawn: 0,
  fx_summaries: null,
  accounts: null,
  accepted_payments: null,
  rejected_payments: null,
  schedule: null
)
```

