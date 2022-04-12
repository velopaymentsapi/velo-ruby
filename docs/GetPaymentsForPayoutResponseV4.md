# VeloPayments::GetPaymentsForPayoutResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**GetPaymentsForPayoutResponseV4Summary**](GetPaymentsForPayoutResponseV4Summary.md) |  | [optional] |
| **page** | [**PagedPayeeInvitationStatusResponseV3Page**](PagedPayeeInvitationStatusResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PaymentResponseV4&gt;**](PaymentResponseV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPaymentsForPayoutResponseV4.new(
  summary: null,
  page: null,
  links: null,
  content: null
)
```

