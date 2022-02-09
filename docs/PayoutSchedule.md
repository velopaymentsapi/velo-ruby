# VeloPayments::PayoutSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_status** | [**ScheduleStatus**](ScheduleStatus.md) |  |  |
| **scheduled_at** | **Time** |  |  |
| **scheduled_for** | **Time** |  |  |
| **scheduled_by_principal_id** | **String** | ID of the user or application that scheduled the payout |  |
| **notifications_enabled** | **Boolean** |  |  |
| **scheduled_by** | **String** | Optional display name as a hint for who scheduled the payout. Not populated if payout was scheduled by an application. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutSchedule.new(
  schedule_status: null,
  scheduled_at: null,
  scheduled_for: null,
  scheduled_by_principal_id: 8946953b-1e3b-49cf-9da4-b704cbb78f3e,
  notifications_enabled: null,
  scheduled_by: Aphra Behn
)
```

