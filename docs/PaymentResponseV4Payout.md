# VeloPayments::PaymentResponseV4Payout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** |  | [optional] |
| **payout_from** | [**PayoutPayor**](PayoutPayor.md) |  | [optional] |
| **payout_to** | [**PayoutPayor**](PayoutPayor.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentResponseV4Payout.new(
  payout_id: null,
  payout_from: null,
  payout_to: null
)
```

