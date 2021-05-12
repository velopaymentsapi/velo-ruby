# VeloPayments::CreateIndividual

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**CreateIndividualName**](CreateIndividualName.md) |  |  |
| **national_identification** | **String** |  | [optional] |
| **date_of_birth** | **Date** | Must not be date in future. Example - 1970-05-20 |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreateIndividual.new(
  name: null,
  national_identification: SA211123K,
  date_of_birth: Wed May 20 00:00:00 UTC 1970
)
```

