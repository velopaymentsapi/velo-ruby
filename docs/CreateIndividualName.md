# VeloPayments::CreateIndividualName

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

instance = VeloPayments::CreateIndividualName.new(
  title: Mr,
  first_name: Bob,
  other_names: H,
  last_name: Smith
)
```

