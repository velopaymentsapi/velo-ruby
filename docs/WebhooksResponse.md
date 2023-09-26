# VeloPayments::WebhooksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;WebhookResponse&gt;**](WebhookResponse.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::WebhooksResponse.new(
  page: null,
  links: null,
  content: null
)
```

