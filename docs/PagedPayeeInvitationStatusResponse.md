# VeloPayments::PagedPayeeInvitationStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;PayeeInvitationStatusResponse&gt;**](PayeeInvitationStatusResponse.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeInvitationStatusResponse.new(
  page: null,
  links: null,
  content: null
)
```

