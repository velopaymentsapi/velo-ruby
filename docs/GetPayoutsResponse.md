# VeloPayments::GetPayoutsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
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

