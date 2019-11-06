# VeloPayments::PaymentResponseV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** |  | 
**payee_id** | **String** |  | 
**payor_id** | **String** | Deprecated in v2.16. Will be populated with submitting payor ID until removed in a later release. | 
**payor_name** | **String** |  | [optional] 
**quote_id** | **String** |  | 
**source_account_id** | **String** |  | 
**source_account_name** | **String** |  | [optional] 
**remote_id** | **String** |  | [optional] 
**source_amount** | **Integer** |  | [optional] 
**source_currency** | [**PaymentAuditCurrencyV4**](PaymentAuditCurrencyV4.md) |  | [optional] 
**payment_amount** | **Integer** |  | 
**payment_currency** | [**PaymentAuditCurrencyV4**](PaymentAuditCurrencyV4.md) |  | [optional] 
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
**events** | [**Array&lt;PaymentEventResponseV4&gt;**](PaymentEventResponseV4.md) |  | 
**return_cost** | **Integer** |  | [optional] 
**return_reason** | **String** |  | [optional] 
**payout** | [**PaymentResponseV4Payout**](PaymentResponseV4Payout.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentResponseV4.new(payment_id: null,
                                 payee_id: null,
                                 payor_id: null,
                                 payor_name: null,
                                 quote_id: null,
                                 source_account_id: null,
                                 source_account_name: null,
                                 remote_id: null,
                                 source_amount: null,
                                 source_currency: null,
                                 payment_amount: null,
                                 payment_currency: null,
                                 rate: null,
                                 inverted_rate: null,
                                 submitted_date_time: null,
                                 status: null,
                                 funding_status: null,
                                 routing_number: null,
                                 account_number: null,
                                 iban: null,
                                 payment_memo: null,
                                 filename_reference: null,
                                 individual_identification_number: null,
                                 trace_number: null,
                                 payor_payment_id: null,
                                 payment_channel_id: null,
                                 payment_channel_name: null,
                                 account_name: null,
                                 rails_id: null,
                                 country_code: null,
                                 events: null,
                                 return_cost: null,
                                 return_reason: null,
                                 payout: null)
```


