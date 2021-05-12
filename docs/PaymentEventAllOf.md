# VeloPayments::PaymentEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** | ID of this payment within the Velo platform |  |
| **payout_payor_ids** | [**PayoutPayorIds**](PayoutPayorIds.md) |  | [optional] |
| **payor_payment_id** | **String** | ID of this payment in the payors system | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentEventAllOf.new(
  payment_id: cbd9280f-8fde-4190-b014-979d88f3ec54,
  payout_payor_ids: null,
  payor_payment_id: ourpayment-id12345
)
```

