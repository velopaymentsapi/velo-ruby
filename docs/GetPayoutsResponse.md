# VeloPayments::GetPayoutsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;PayoutSummaryAudit&gt;**](PayoutSummaryAudit.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPayoutsResponse.new(
  page: null,
  links: null,
  content: null
)
```

