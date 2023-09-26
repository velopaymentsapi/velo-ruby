# VeloPayments::FxSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quote_id** | **String** |  |  |
| **creation_date_time** | **Time** |  |  |
| **rate** | **Float** |  |  |
| **inverted_rate** | **Float** |  |  |
| **total_cost** | **Integer** |  |  |
| **total_payment_amount** | **Integer** |  |  |
| **source_currency** | **String** | ISO-4217 3 character currency code | [optional] |
| **payment_currency** | **String** | ISO-4217 3 character currency code | [optional] |
| **status** | **String** | Current status of the FX Summary. One of the following values: UNQUOTED, QUOTED, EXPIRED, EXECUTED |  |
| **funding_status** | **String** | Current status of the funding. One of the following values: FUNDED, INSTRUCTED, UNFUNDED |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FxSummary.new(
  quote_id: null,
  creation_date_time: null,
  rate: 123.23,
  inverted_rate: 123.23,
  total_cost: null,
  total_payment_amount: 34235,
  source_currency: EUR,
  payment_currency: EUR,
  status: null,
  funding_status: null
)
```

