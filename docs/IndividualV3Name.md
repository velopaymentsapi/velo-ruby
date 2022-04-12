# VeloPayments::IndividualV3Name

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **first_name** | **String** |  |  |
| **other_names** | **String** |  | [optional] |
| **last_name** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::IndividualV3Name.new(
  title: Mr,
  first_name: Bob,
  other_names: A,
  last_name: Smith
)
```

