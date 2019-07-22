# VeloPayments::FxSummaryV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quote_id** | **String** |  | 
**creation_date_time** | **DateTime** |  | 
**rate** | **Float** |  | 
**inverted_rate** | **Float** |  | 
**total_cost** | **Integer** |  | 
**total_payment_amount** | **Integer** |  | 
**source_currency** | [**PaymentAuditCurrencyV4**](PaymentAuditCurrencyV4.md) |  | [optional] 
**payment_currency** | [**PaymentAuditCurrencyV4**](PaymentAuditCurrencyV4.md) |  | [optional] 
**status** | **String** |  | 
**funding_status** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FxSummaryV4.new(quote_id: null,
                                 creation_date_time: null,
                                 rate: null,
                                 inverted_rate: null,
                                 total_cost: null,
                                 total_payment_amount: null,
                                 source_currency: null,
                                 payment_currency: null,
                                 status: null,
                                 funding_status: null)
```

