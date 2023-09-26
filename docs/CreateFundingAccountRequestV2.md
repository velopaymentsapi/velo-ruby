# VeloPayments::CreateFundingAccountRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **name** | **String** |  |  |
| **payor_id** | **String** |  |  |
| **account_name** | **String** | Required if type is either FBO or PRIVATE | [optional] |
| **account_number** | **String** | Required if type is either FBO or PRIVATE | [optional] |
| **routing_number** | **String** | Required if type is either FBO or PRIVATE | [optional] |
| **currency** | **String** | ISO 4217 currency code, Required if type is either WUBS_DECOUPLED or PRIVATE | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreateFundingAccountRequestV2.new(
  type: null,
  name: null,
  payor_id: null,
  account_name: null,
  account_number: null,
  routing_number: null,
  currency: USD
)
```

