# VeloPayments::PaymentDeltaResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;PaymentDeltaV1&gt;**](PaymentDeltaV1.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentDeltaResponseV1.new(
  page: null,
  links: null,
  content: null
)
```

