# VeloPayments::FxSummaryV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quote_id** | **String** |  | 
**creation_date_time** | **Time** |  | 
**rate** | **Float** |  | 
**inverted_rate** | **Float** |  | 
**total_cost** | **Integer** |  | 
**total_payment_amount** | **Integer** |  | 
**source_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**payment_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**status** | **String** |  | 
**funding_status** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FxSummaryV3.new(quote_id: null,
                                 creation_date_time: null,
                                 rate: 1.12,
                                 inverted_rate: 1.12,
                                 total_cost: 1234,
                                 total_payment_amount: 1234,
                                 source_currency: null,
                                 payment_currency: null,
                                 status: null,
                                 funding_status: null)
```


