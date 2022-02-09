# VeloPayments::GetPaymentsForPayoutResponseV4Summary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_status** | [**PayoutStatus**](PayoutStatus.md) |  | [optional] |
| **submitted_date_time** | **Time** | The date/time at which the payout was submitted. | [optional] |
| **instructed_date_time** | **Time** | The date/time at which the payout was instructed. | [optional] |
| **withdrawn_date_time** | **Time** |  | [optional] |
| **quoted_date_time** | **Time** | The date/time at which the payout was quoted. | [optional] |
| **payout_memo** | **String** | The memo attached to the payout. | [optional] |
| **total_payments** | **Integer** | The count of payments within the payout. | [optional] |
| **confirmed_payments** | **Integer** | The count of payments within the payout which have been confirmed. | [optional] |
| **released_payments** | **Integer** | The count of payments within the payout which have been released. | [optional] |
| **incomplete_payments** | **Integer** | The count of payments within the payout which are incomplete. | [optional] |
| **returned_payments** | **Integer** | The count of payments within the payout which have been returned. | [optional] |
| **withdrawn_payments** | **Integer** | The count of payments within the payout which have been withdrawn. | [optional] |
| **payout_type** | [**PayoutType**](PayoutType.md) |  | [optional] |
| **submitting** | [**PayoutPayor**](PayoutPayor.md) |  | [optional] |
| **payout_from** | [**PayoutPayor**](PayoutPayor.md) |  | [optional] |
| **payout_to** | [**PayoutPayor**](PayoutPayor.md) |  | [optional] |
| **quoted** | [**PayoutPrincipal**](PayoutPrincipal.md) |  | [optional] |
| **instructed** | [**PayoutPrincipal**](PayoutPrincipal.md) |  | [optional] |
| **withdrawn** | [**PayoutPrincipal**](PayoutPrincipal.md) |  | [optional] |
| **schedule** | [**PayoutSchedule**](PayoutSchedule.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPaymentsForPayoutResponseV4Summary.new(
  payout_status: null,
  submitted_date_time: null,
  instructed_date_time: null,
  withdrawn_date_time: null,
  quoted_date_time: null,
  payout_memo: null,
  total_payments: null,
  confirmed_payments: null,
  released_payments: null,
  incomplete_payments: null,
  returned_payments: null,
  withdrawn_payments: null,
  payout_type: null,
  submitting: null,
  payout_from: null,
  payout_to: null,
  quoted: null,
  instructed: null,
  withdrawn: null,
  schedule: null
)
```

