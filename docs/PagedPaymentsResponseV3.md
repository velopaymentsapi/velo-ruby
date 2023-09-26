# VeloPayments::PagedPaymentsResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PaymentV3&gt;**](PaymentV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPaymentsResponseV3.new(
  page: null,
  links: null,
  content: null
)
```

