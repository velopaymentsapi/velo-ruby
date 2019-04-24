# VeloPayments::FxSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quote_id** | **String** |  | 
**creation_date_time** | **DateTime** |  | 
**rate** | **Float** |  | 
**inverted_rate** | **Float** |  | 
**total_cost** | **Integer** |  | 
**total_payment_amount** | **Integer** |  | 
**source_currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] 
**payment_currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] 
**status** | **String** |  | 
**funding_status** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FxSummary.new(quote_id: null,
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


