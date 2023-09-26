# VeloPayments::CompanyV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **tax_id** | **String** | Company Tax Id must be between 6 and 30 characters long | [optional] |
| **operating_name** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CompanyV3.new(
  name: ABC Group Plc,
  tax_id: 123123123,
  operating_name: ABC Co
)
```

