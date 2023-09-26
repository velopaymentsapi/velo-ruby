# VeloPayments::CreatePaymentChannelV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_channel_name** | **String** |  | [optional] |
| **iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] |
| **account_number** | **String** | Either routing number and account number or only iban must be set | [optional] |
| **routing_number** | **String** | Either routing number and account number or only iban must be set | [optional] |
| **country_code** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **account_name** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePaymentChannelV4.new(
  payment_channel_name: My Payment Channel,
  iban: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1234,
  account_number: XXXXXX5678,
  routing_number: XXXXX6789,
  country_code: US,
  currency: USD,
  account_name: My account
)
```

