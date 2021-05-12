# VeloPayments::PayeeDeltaResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rel** | **String** |  | [optional] |
| **href** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeDeltaResponseLinks.new(
  rel: first,
  href: http://api.sandbox.velopayments.com/v3/payees/deltas?payorId&#x3D;0a818933-087d-47f2-ad83-2f986ed087eb&amp;updatedSince&#x3D;2019-01-20T09:00:00+00:00&amp;page&#x3D;1&amp;pageSize&#x3D;1000
)
```

