# VeloPayments::ListPaymentsResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**ListPaymentsResponseV3Page**](ListPaymentsResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PaymentResponseV4&gt;**](PaymentResponseV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ListPaymentsResponseV4.new(
  page: null,
  links: null,
  content: null
)
```

