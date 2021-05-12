# VeloPayments::PagedPayeeInvitationStatusResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;PayeeInvitationStatusResponse2&gt;**](PayeeInvitationStatusResponse2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeInvitationStatusResponse2.new(
  page: null,
  links: null,
  content: null
)
```

