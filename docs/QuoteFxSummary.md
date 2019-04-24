# VeloPayments::QuoteFxSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate** | **Object** |  | 
**inverted_rate** | **Object** |  | [optional] 
**creation_time** | **DateTime** |  | 
**expiry_time** | **DateTime** |  | [optional] 
**quote_id** | **String** |  | 
**total_source_amount** | **Integer** |  | 
**total_payment_amount** | **Integer** |  | 
**source_currency** | **String** |  | 
**payment_currency** | **String** |  | 
**funding_status** | **String** |  | [optional] 
**status** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::QuoteFxSummary.new(rate: null,
                                 inverted_rate: null,
                                 creation_time: null,
                                 expiry_time: null,
                                 quote_id: null,
                                 total_source_amount: null,
                                 total_payment_amount: null,
                                 source_currency: null,
                                 payment_currency: null,
                                 funding_status: null,
                                 status: null)
```


