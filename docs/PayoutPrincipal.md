# VeloPayments::PayoutPrincipal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal** | **String** | Email address if principal is a user or ID if application. |  |
| **principal_id** | **String** | The id of the principal. |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutPrincipal.new(
  principal: null,
  principal_id: null
)
```

