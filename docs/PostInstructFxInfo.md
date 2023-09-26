# VeloPayments::PostInstructFxInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fx_mode** | **String** | The mode by which the FX rate is to be determined (MANUAL or AUTO) |  |
| **fx_status** | **String** | The state to which the Post-Instruct FX process has reached (INITIATED or COMPLETED) |  |
| **fx_status_updated_at** | **Time** | The date-time at which the most recent fxStatus was determined. |  |
| **fx_transaction_reference** | **String** | The reference assigned to the FX funding that will fulfil this payment. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PostInstructFxInfo.new(
  fx_mode: MANUAL,
  fx_status: INITIATED,
  fx_status_updated_at: null,
  fx_transaction_reference: AB123GHI
)
```

