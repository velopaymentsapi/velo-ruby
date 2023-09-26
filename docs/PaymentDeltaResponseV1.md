# VeloPayments::PaymentDeltaResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
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

