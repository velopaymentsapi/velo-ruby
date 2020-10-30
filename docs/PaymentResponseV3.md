# VeloPayments::PaymentResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** | The id of the payment | 
**payee_id** | **String** | The id of the paymeee | 
**payor_id** | **String** | The id of the payor | 
**payor_name** | **String** | The name of the payor | [optional] 
**quote_id** | **String** | The quote Id used for the FX | 
**source_account_id** | **String** | The id of the source account from which the payment was taken | 
**source_account_name** | **String** | The name of the source account from which the payment was taken | [optional] 
**remote_id** | **String** | The remote id by which the payor refers to the payee. Only populated once payment is confirmed | [optional] 
**source_amount** | **Integer** | The source amount for the payment (amount debited to make the payment) | [optional] 
**source_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**payment_amount** | **Integer** | The amount which the payee will receive | 
**payment_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**rate** | **Float** | The FX rate for the payment, if FX was involved. **Note** that (depending on the role of the caller) this information may not be displayed | [optional] 
**inverted_rate** | **Float** | The inverted FX rate for the payment, if FX was involved. **Note** that (depending on the role of the caller) this information may not be displayed | [optional] 
**submitted_date_time** | **Time** |  | 
**status** | **String** |  | 
**funding_status** | **String** | The funding status of the payment | 
**routing_number** | **String** | The routing number for the payment. | [optional] 
**account_number** | **String** | The account number for the account which will receive the payment. | [optional] 
**iban** | **String** | The iban for the payment. | [optional] 
**payment_memo** | **String** | The payment memo set by the payor | [optional] 
**filename_reference** | **String** | ACH file payment was submitted in, if applicable | [optional] 
**individual_identification_number** | **String** | Individual Identification Number assigned to the payment in the ACH file, if applicable | [optional] 
**trace_number** | **String** | Trace Number assigned to the payment in the ACH file, if applicable | [optional] 
**payor_payment_id** | **String** |  | [optional] 
**payment_channel_id** | **String** |  | [optional] 
**payment_channel_name** | **String** |  | [optional] 
**account_name** | **String** |  | [optional] 
**rails_id** | **String** | The rails ID. Default value is RAILS ID UNAVAILABLE when not populated. | [default to &#39;RAILS ID UNAVAILABLE&#39;]
**country_code** | **String** | The country code of the payment channel. | [optional] 
**events** | [**Array&lt;PaymentEventResponseV3&gt;**](PaymentEventResponseV3.md) |  | 
**return_cost** | **Integer** | The return cost if a returned payment. | [optional] 
**return_reason** | **String** |  | [optional] 
**rails_payment_id** | **String** |  | [optional] 
**rails_batch_id** | **String** |  | [optional] 
**rejection_reason** | **String** |  | [optional] 

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
                                 return_reason: Some Reason Value,
                                 rails_payment_id: null,
                                 rails_batch_id: null,
                                 rejection_reason: null)
```


