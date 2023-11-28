# VeloPayments::UpdatePaymentChannelRequestV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] |
| **payment_channel_name** | **String** |  | [optional] |
| **country_code** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |
| **account_name** | **String** |  | [optional] |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UpdatePaymentChannelRequestV4.new(
  routing_number: XXXXX6789,
  account_number: XXXXXX5678,
  iban: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1234,
  payment_channel_name: My Payment Channel,
  country_code: US,
  account_name: My Account,
  currency: USD
)
```

