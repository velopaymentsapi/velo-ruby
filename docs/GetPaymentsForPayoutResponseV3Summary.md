# VeloPayments::GetPaymentsForPayoutResponseV3Summary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_status** | **String** | The current status of the payout. One of the following values: ACCEPTED, REJECTED, SUBMITTED, QUOTED, INSTRUCTED, COMPLETED, INCOMPLETE, CONFIRMED, WITHDRAWN | [optional] |
| **submitted_date_time** | **Time** | The date/time at which the payout was submitted. | [optional] |
| **instructed_date_time** | **Time** | The date/time at which the payout was instructed. | [optional] |
| **withdrawn_date_time** | **Time** | The date/time at which the payout was withdrawn. | [optional] |
| **payout_memo** | **String** | The memo attached to the payout. | [optional] |
| **total_payments** | **Integer** | The count of payments within the payout. | [optional] |
| **confirmed_payments** | **Integer** | The count of payments within the payout which have been confirmed. | [optional] |
| **released_payments** | **Integer** | The count of payments within the payout which have been released. | [optional] |
| **incomplete_payments** | **Integer** | The count of payments within the payout which are incomplete. | [optional] |
| **failed_payments** | **Integer** | The count of payments within the payout which have failed or been returned. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPaymentsForPayoutResponseV3Summary.new(
  payout_status: null,
  submitted_date_time: null,
  instructed_date_time: null,
  withdrawn_date_time: null,
  payout_memo: Payment Memo value,
  total_payments: 123,
  confirmed_payments: 123,
  released_payments: 123,
  incomplete_payments: 123,
  failed_payments: 0
)
```

