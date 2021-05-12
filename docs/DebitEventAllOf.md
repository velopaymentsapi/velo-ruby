# VeloPayments::DebitEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **debit_transaction_id** | **String** | ID of this debit transaction within the Velo platform |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::DebitEventAllOf.new(
  debit_transaction_id: cbd9280f-8fde-4190-b014-979d88f3ec54
)
```

