# VeloPayments::PayorToPaymentChannelMappingV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **payment_channel_id** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorToPaymentChannelMappingV4.new(
  payor_id: 9ac75325-5dcd-42d5-b992-175d7e0a035e,
  payment_channel_id: 70faaff7-2c32-4b44-b27f-f0b6c484e6f3
)
```

