# VeloPayments::PaymentChannelSummaryV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_channel_id** | **String** |  |  |
| **name** | **String** | The payment channel name |  |
| **country_code** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **last4_digits** | **String** | The last 4 digits of the account number or IBAN | [optional] |
| **enabled** | **Boolean** | Usually true. False if an associated payment is returned |  |
| **disabled_reason** | **String** | Indicates why the payment channel was disabled | [optional] |
| **disabled_reason_code** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentChannelSummaryV4.new(
  payment_channel_id: 70faaff7-2c32-4b44-b27f-f0b6c484e6f3,
  name: Bank of America USD,
  country_code: US,
  currency: USD,
  last4_digits: 1234,
  enabled: false,
  disabled_reason: User request,
  disabled_reason_code: VR100
)
```

