# VeloPayments::PaymentRejectedOrReturnedAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason_code** | **String** | The Velo code that indicates why the payment was rejected or returned |  |
| **reason_message** | **String** | The description of why the payment was rejected or returned |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentRejectedOrReturnedAllOf.new(
  reason_code: VE0001,
  reason_message: VE0001
)
```

