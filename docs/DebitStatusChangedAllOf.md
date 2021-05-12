# VeloPayments::DebitStatusChangedAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The new status of the debit. One of \&quot;PENDING\&quot; \&quot;PROCESSING\&quot; \&quot;REJECTED\&quot; \&quot;RELEASED\&quot; |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::DebitStatusChangedAllOf.new(
  status: PENDING
)
```

