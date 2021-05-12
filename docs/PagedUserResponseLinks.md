# VeloPayments::PagedUserResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rel** | **String** |  | [optional] |
| **href** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedUserResponseLinks.new(
  rel: first,
  href: https://api.sandbox.velopayments.com/v2/users??type&#x3D;PAYOR&amp;page&#x3D;1&amp;pageSize&#x3D;10
)
```

