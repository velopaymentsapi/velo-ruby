# VeloPayments::PagedPaymentsResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] |
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

