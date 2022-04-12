# VeloPayments::ChallengeV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value that the user will be asked to verify when they onboard |  |
| **description** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ChallengeV4.new(
  value: 11984567,
  description: challenge description
)
```

