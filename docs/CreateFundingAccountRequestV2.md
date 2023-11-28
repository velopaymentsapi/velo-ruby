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
| **country_code** | **String** | ISO 3166-1 2 letter country code (upper case) |  |

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
  country_code: US
)
```

