# VeloPayments::PayoutPayeeV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  |  |
| **individual** | [**PayoutIndividualV3**](PayoutIndividualV3.md) |  | [optional] |
| **company** | [**PayoutCompanyV3**](PayoutCompanyV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutPayeeV3.new(
  payee_id: null,
  individual: null,
  company: null
)
```

