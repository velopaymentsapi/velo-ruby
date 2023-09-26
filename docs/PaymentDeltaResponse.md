# VeloPayments::PaymentDeltaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PaymentDelta&gt;**](PaymentDelta.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentDeltaResponse.new(
  page: null,
  links: null,
  content: null
)
```

