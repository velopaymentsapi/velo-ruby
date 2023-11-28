# VeloPayments::CommonLinkObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rel** | **String** | One of: first, last, or self | [optional] |
| **href** | **String** | the resource URI | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CommonLinkObject.new(
  rel: first,
  href: https://api.sandbox.velopayments.com/v1/resources?page&#x3D;1&amp;pageSize&#x3D;3&amp;sort&#x3D;lastLoadedAt:asc
)
```

