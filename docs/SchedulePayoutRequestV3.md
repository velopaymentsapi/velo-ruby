# VeloPayments::SchedulePayoutRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheduled_for** | **Time** | UTC timestamp for instructing the payout. Format is ISO-8601. |  |
| **notifications_enabled** | **Boolean** | Flag to indicate whether to receive notifications when scheduled payout is processed |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SchedulePayoutRequestV3.new(
  scheduled_for: 2025-01-01T10:00Z,
  notifications_enabled: null
)
```

