# VeloPayments::PagedPayeeResponseSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_payees_count** | **Integer** |  | [optional] |
| **total_invited_count** | **Integer** |  | [optional] |
| **total_registered_count** | **Integer** |  | [optional] |
| **total_onboarded_count** | **Integer** |  | [optional] |
| **total_watchlist_failed_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeResponseSummary.new(
  total_payees_count: 10,
  total_invited_count: 10,
  total_registered_count: 10,
  total_onboarded_count: 10,
  total_watchlist_failed_count: 0
)
```

