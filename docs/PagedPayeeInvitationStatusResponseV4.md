# VeloPayments::PagedPayeeInvitationStatusResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PayeeInvitationStatusResponseV4&gt;**](PayeeInvitationStatusResponseV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeInvitationStatusResponseV4.new(
  page: null,
  links: null,
  content: null
)
```

