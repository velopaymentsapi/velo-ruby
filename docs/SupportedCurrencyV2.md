# VeloPayments::SupportedCurrencyV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |
| **max_payment_amount** | **Integer** | The max amount allowed in this currency | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SupportedCurrencyV2.new(
  currency: USD,
  max_payment_amount: 100000
)
```

