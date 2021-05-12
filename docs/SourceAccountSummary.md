# VeloPayments::SourceAccountSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** |  |  |
| **total_cost** | **Integer** |  |  |
| **currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SourceAccountSummary.new(
  source_account_id: null,
  total_cost: 3344,
  currency: null
)
```

