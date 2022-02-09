# VeloPayments::InstructPayoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fx_rate_degredation_threshold_percentage** | **Float** | Halt instruction if the FX rates have become worse since the last quote | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::InstructPayoutRequest.new(
  fx_rate_degredation_threshold_percentage: null
)
```

