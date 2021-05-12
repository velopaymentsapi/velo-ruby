# VeloPayments::CreatePaymentChannel2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_channel_name** | **String** |  | [optional] |
| **iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. Either routing number and account number or only iban must be set | [optional] |
| **account_number** | **String** | Either routing number and account number or only iban must be set | [optional] |
| **routing_number** | **String** | Either routing number and account number or only iban must be set | [optional] |
| **country_code** | **String** | Two character country code |  |
| **currency** | **String** |  |  |
| **account_name** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePaymentChannel2.new(
  payment_channel_name: My Payment Channel,
  iban: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1234,
  account_number: XXXXXX5678,
  routing_number: XXXXX6789,
  country_code: US,
  currency: null,
  account_name: My account
)
```

