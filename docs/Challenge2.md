# VeloPayments::Challenge2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value that the user will be asked to verify when they onboard |  |
| **description** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::Challenge2.new(
  value: 11984567,
  description: challenge description
)
```

