# VeloPayments::RegisterSmsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_number** | **String** | The phone number of a device that the user can receive sms messages on  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::RegisterSmsRequest.new(
  sms_number: 11235555555
)
```

