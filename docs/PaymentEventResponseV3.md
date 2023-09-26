# VeloPayments::PaymentEventResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The id of the event. |  |
| **event_date_time** | **Time** | The date/time at which the event occurred. |  |
| **event_type** | **String** | The type of the event. One of the following values: PAYOUT_SUBMITTED, PAYOUT_COMPLETED, PAYOUT_INSTRUCTED_V3, BANK_PAYMENT_REQUESTED, SOURCE_AMOUNT_CONFIRMED, PAYMENT_SUBMITTED, PAYMENT_SUBMITTED_ACCEPTED, PAYMENT_SUBMITTED_REJECTED, PAYMENT_CONFIRMED, PAYMENT_AWAITING_FUNDS, PAYMENT_FUNDED, PAYMENT_UNFUNDED, PAYMENT_FAILED, ACH_SUBMITTED_TO_ODFI, PAYMENT_ACCEPTED_BY_RAILS, ACH_RETURN_RECEIVED, RETURN_PAYMENT_FUNDING_REQUESTED, PAYOUT_BATCH_EXECUTED, PAYOUT_BATCH_QUOTE_EXPIRED, PAYOUT_BATCH_FUNDED, PAYOUT_BATCH_FUNDS_RETURN_REQUEST, PAYOUT_BATCH_FUNDS_RETURNED, PAYOUT_FUNDS_REQUEST, PAYOUT_FUNDS_GRANTED, PAYOUT_FUNDS_DENIED, PAYOUT_BATCH_QUOTED, PAYOUT_QUOTED, ACH_PAYMENT_RETURN_CANCELLED, RETURN_PAYMENT_CANCELLATION_REQUESTED, PAYOUT_WITHDRAWN |  |
| **source_currency** | **String** | ISO 3 character currency code | [optional] |
| **source_amount** | **Integer** | The source amount exposed by the event. | [optional] |
| **payment_currency** | **String** | ISO 3 character currency code | [optional] |
| **payment_amount** | **Integer** | The destination amount exposed by the event. | [optional] |
| **account_number** | **String** | The account number attached to the event. | [optional] |
| **routing_number** | **String** | The routing number attached to the event. | [optional] |
| **iban** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **principal** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentEventResponseV3.new(
  event_id: null,
  event_date_time: null,
  event_type: null,
  source_currency: null,
  source_amount: 1299,
  payment_currency: null,
  payment_amount: 1299,
  account_number: 123123123,
  routing_number: 123123123,
  iban: DE89 3704 0044 0532 0130 00,
  account_name: My account,
  principal: Prinicple example
)
```

