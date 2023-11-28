# VeloPayments::CreateIndividualV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**CreateIndividualV3Name**](CreateIndividualV3Name.md) |  |  |
| **national_identification** | **String** |  | [optional] |
| **date_of_birth** | **Date** | Must not be date in future. Example - 1970-05-20 |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreateIndividualV3.new(
  name: null,
  national_identification: SA211123K,
  date_of_birth: Wed May 20 00:00:00 UTC 1970
)
```
