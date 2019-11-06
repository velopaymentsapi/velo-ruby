# VeloPayments::PaymentResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** |  | 
**payee_id** | **String** |  | 
**payor_id** | **String** |  | 
**payor_name** | **String** |  | [optional] 
**quote_id** | **String** |  | 
**source_account_id** | **String** |  | 
**source_account_name** | **String** |  | [optional] 
**remote_id** | **String** |  | [optional] 
**source_amount** | **Integer** |  | [optional] 
**source_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**payment_amount** | **Integer** |  | 
**payment_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**rate** | **Float** |  | [optional] 
**inverted_rate** | **Float** |  | [optional] 
**submitted_date_time** | **DateTime** |  | 
**status** | **String** |  | 
**funding_status** | **String** |  | 
**routing_number** | **String** |  | [optional] 
**account_number** | **String** |  | [optional] 
**iban** | **String** |  | [optional] 
**payment_memo** | **String** |  | [optional] 
**filename_reference** | **String** |  | [optional] 
**individual_identification_number** | **String** |  | [optional] 
**trace_number** | **String** |  | [optional] 
**payor_payment_id** | **String** |  | [optional] 
**payment_channel_id** | **String** |  | [optional] 
**payment_channel_name** | **String** |  | [optional] 
**account_name** | **String** |  | [optional] 
**rails_id** | **String** |  | 
**country_code** | **String** |  | [optional] 
**events** | [**Array&lt;PaymentEventResponseV3&gt;**](PaymentEventResponseV3.md) |  | 
**return_cost** | **Integer** |  | [optional] 
**return_reason** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentResponseV3.new(payment_id: null,
                                 payee_id: null,
                                 payor_id: null,
                                 payor_name: null,
                                 quote_id: null,
                                 source_account_id: null,
                                 source_account_name: My Account,
                                 remote_id: aasdf123,
                                 source_amount: 12345,
                                 source_currency: null,
                                 payment_amount: null,
                                 payment_currency: null,
                                 rate: null,
                                 inverted_rate: null,
                                 submitted_date_time: null,
                                 status: null,
                                 funding_status: null,
                                 routing_number: 123123123123,
                                 account_number: 123123232323,
                                 iban: DE89 3704 0044 0532 0130 00,
                                 payment_memo: Payment memo,
                                 filename_reference: file ref,
                                 individual_identification_number: 1231231adf,
                                 trace_number: abodu123,
                                 payor_payment_id: 123123asdf,
                                 payment_channel_id: 123asdf,
                                 payment_channel_name: My Payment Channel,
                                 account_name: My Account Name,
                                 rails_id: asdf123,
                                 country_code: US,
                                 events: null,
                                 return_cost: 1232,
                                 return_reason: Some Reason Value)
```


