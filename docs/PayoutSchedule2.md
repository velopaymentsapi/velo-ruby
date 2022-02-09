# VeloPayments::PayoutSchedule2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_status** | [**ScheduleStatus2**](ScheduleStatus2.md) |  |  |
| **scheduled_at** | **Time** |  |  |
| **scheduled_for** | **Time** |  |  |
| **scheduled_by_principal_id** | **String** | ID of the user or application that scheduled the payout |  |
| **notifications_enabled** | **Boolean** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutSchedule2.new(
  schedule_status: null,
  scheduled_at: null,
  scheduled_for: null,
  scheduled_by_principal_id: 8946953b-1e3b-49cf-9da4-b704cbb78f3e,
  notifications_enabled: null
)
```

