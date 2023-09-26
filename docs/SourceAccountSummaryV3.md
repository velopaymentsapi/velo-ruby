# VeloPayments::SourceAccountSummaryV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** |  |  |
| **total_cost** | **Integer** |  |  |
| **currency** | **String** | ISO 3 character currency code | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SourceAccountSummaryV3.new(
  source_account_id: null,
  total_cost: 3434,
  currency: null
)
```

