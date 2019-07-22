# VeloPayments::QuoteFxSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate** | **Float** |  | 
**inverted_rate** | **Float** |  | [optional] 
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

instance = VeloPayments::QuoteFxSummary.new(rate: 1.12,
                                 inverted_rate: 1.12,
                                 creation_time: null,
                                 expiry_time: null,
                                 quote_id: null,
                                 total_source_amount: 1234,
                                 total_payment_amount: 1234,
                                 source_currency: USD,
                                 payment_currency: USD,
                                 funding_status: FUNDED,
                                 status: QUOTED)
```


