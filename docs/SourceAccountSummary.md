# VeloPayments::SourceAccountSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** |  |  |
| **total_cost** | **Integer** |  |  |
| **currency** | **String** | ISO-4217 3 character currency code | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SourceAccountSummary.new(
  source_account_id: null,
  total_cost: 3344,
  currency: EUR
)
```

