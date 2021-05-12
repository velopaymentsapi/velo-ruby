# VeloPayments::GetPayoutStatistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **this_month_payouts_count** | **Integer** |  |  |
| **this_month_failed_payments_count** | **Integer** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPayoutStatistics.new(
  this_month_payouts_count: null,
  this_month_failed_payments_count: null
)
```

