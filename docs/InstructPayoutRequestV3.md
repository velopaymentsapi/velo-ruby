# VeloPayments::InstructPayoutRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fx_rate_degredation_threshold_percentage** | **Float** | Halt instruction if the FX rates have become worse since the last quote. Property deprecated because of misspelled. Please use fxRateDegradationThresholdPercentage. | [optional] |
| **fx_rate_degradation_threshold_percentage** | **Float** | Halt instruction if the FX rates have become worse since the last quote. Previously called fxRateDegredationThresholdPercentage. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::InstructPayoutRequestV3.new(
  fx_rate_degredation_threshold_percentage: null,
  fx_rate_degradation_threshold_percentage: null
)
```

