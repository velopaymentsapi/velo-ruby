# VeloPayments::PayoutScheduleV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_status** | **String** | The current status of the payout schedule. One of the following values: SCHEDULED, EXECUTED, FAILED |  |
| **scheduled_at** | **Time** |  |  |
| **scheduled_for** | **Time** |  |  |
| **scheduled_by_principal_id** | **String** | ID of the user or application that scheduled the payout |  |
| **notifications_enabled** | **Boolean** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutScheduleV3.new(
  schedule_status: SCHEDULED,
  scheduled_at: null,
  scheduled_for: null,
  scheduled_by_principal_id: 8946953b-1e3b-49cf-9da4-b704cbb78f3e,
  notifications_enabled: null
)
```

