# VeloPayments::Name

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **other_names** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::Name.new(
  title: Mr,
  first_name: Bob,
  other_names: H,
  last_name: Smith
)
```

