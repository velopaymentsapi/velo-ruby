# VeloPayments::PaymentStatusChangedAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The new status of the payment. One of \&quot;SUBMITTED\&quot; \&quot;ACCEPTED\&quot; \&quot;REJECTED\&quot; \&quot;ACCEPTED_BY_RAILS\&quot; \&quot;CONFIRMED\&quot; \&quot;RETURNED\&quot; \&quot;WITHDRAWN\&quot; |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentStatusChangedAllOf.new(
  status: ACCEPTED
)
```

