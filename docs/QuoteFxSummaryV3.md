# VeloPayments::QuoteFxSummaryV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate** | **Float** |  |  |
| **inverted_rate** | **Float** |  | [optional] |
| **creation_time** | **Time** |  |  |
| **expiry_time** | **Time** |  | [optional] |
| **quote_id** | **String** |  |  |
| **total_source_amount** | **Integer** |  |  |
| **total_payment_amount** | **Integer** |  |  |
| **source_currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **payment_currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **funding_status** | **String** |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::QuoteFxSummaryV3.new(
  rate: 1.12,
  inverted_rate: 1.12,
  creation_time: null,
  expiry_time: null,
  quote_id: null,
  total_source_amount: 1234,
  total_payment_amount: 1234,
  source_currency: USD,
  payment_currency: USD,
  funding_status: FUNDED,
  status: QUOTED
)
```

