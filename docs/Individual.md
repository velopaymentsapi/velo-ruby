# VeloPayments::Individual

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**IndividualName**](IndividualName.md) |  |  |
| **national_identification** | **String** | If not authorized to view, value will be masked. Example: XXXXX1234 | [optional][readonly] |
| **date_of_birth** | **String** | If not authorized to view, value will be masked. Example: - XXXX-XX-XX | [readonly] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::Individual.new(
  name: null,
  national_identification: AB123456C,
  date_of_birth: 1985-01-01
)
```

