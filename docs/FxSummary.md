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
| **source_currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] |
| **payment_currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] |
| **status** | **String** |  |  |
| **funding_status** | **String** |  |  |

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
  source_currency: null,
  payment_currency: null,
  status: null,
  funding_status: null
)
```

