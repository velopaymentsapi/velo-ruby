# VeloPayments::PaymentChannelsResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_channels** | [**Array&lt;PaymentChannelResponseV4&gt;**](PaymentChannelResponseV4.md) |  | [optional] |
| **payor_to_payment_channel_mappings** | [**Array&lt;PayorToPaymentChannelMappingV4&gt;**](PayorToPaymentChannelMappingV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentChannelsResponseV4.new(
  payment_channels: null,
  payor_to_payment_channel_mappings: null
)
```

