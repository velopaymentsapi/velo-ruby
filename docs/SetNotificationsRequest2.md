# VeloPayments::SetNotificationsRequest2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minimum_balance** | **Integer** | Amount to set as minimum balance for notifications in minor units |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SetNotificationsRequest2.new(
  minimum_balance: 10000000
)
```

