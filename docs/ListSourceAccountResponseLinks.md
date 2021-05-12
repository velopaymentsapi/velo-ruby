# VeloPayments::ListSourceAccountResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rel** | **String** |  | [optional] |
| **href** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ListSourceAccountResponseLinks.new(
  rel: first,
  href: https://api.sandbox.velopayments.com/v1/sourceAccounts?payorId&#x3D;a2967711-df07-41e5-b5ea-f563088911c6&amp;page&#x3D;1&amp;pageSize&#x3D;0&amp;sort&#x3D;fundingRef:asc
)
```

