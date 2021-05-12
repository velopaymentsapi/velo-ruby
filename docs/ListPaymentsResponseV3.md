# VeloPayments::ListPaymentsResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**ListPaymentsResponseV3Page**](ListPaymentsResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PaymentResponseV3&gt;**](PaymentResponseV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ListPaymentsResponseV3.new(
  page: null,
  links: null,
  content: null
)
```

