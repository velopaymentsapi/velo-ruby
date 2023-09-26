# VeloPayments::QuoteFxSummaryV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate** | **Float** | The conversion rate (from the source currency to the payment currency) |  |
| **inverted_rate** | **Float** | The inverse conversion rate (from paymnent currency to source currency) | [optional] |
| **creation_time** | **Time** | Timestamp of when the quote was created |  |
| **expiry_time** | **Time** | The timestamp for when the quote will expire | [optional] |
| **quote_id** | **String** | The id of the created quote |  |
| **total_source_amount** | **Integer** | The amount (in minor units) that will be paid from the source account |  |
| **total_payment_amount** | **Integer** | The amount (in minor units) that the payee will receive |  |
| **source_currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **payment_currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **funding_status** | **String** | Current status of the funding associated with this quote. One of the following values: UNFUNDED, INSTRUCTED, FUNDED |  |
| **status** | **String** | Current status of the fx quote. One of the following values: UNQUOTED, QUOTED, EXPIRED, EXECUTED, REJECTED |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::QuoteFxSummaryV3.new(
  rate: 0.89,
  inverted_rate: 1.12,
  creation_time: 2022-10-30T09:45:09Z,
  expiry_time: 2022-10-30T09:50:09Z,
  quote_id: af80d455-29dd-4e72-a000-495a9829a7d0,
  total_source_amount: 1000000,
  total_payment_amount: 890000,
  source_currency: USD,
  payment_currency: USD,
  funding_status: FUNDED,
  status: QUOTED
)
```

