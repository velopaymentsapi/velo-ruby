# VeloPayments::PayorAmlTransactionV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_date** | **Date** |  | [optional] 
**transaction_time** | **String** |  | [optional] 
**report_transaction_type** | **String** |  | [optional] 
**debit** | **Integer** |  | [optional] 
**debit_currency** | **String** | ISO 4217 3 character currency code | [optional] 
**credit** | **Integer** |  | [optional] 
**credit_currency** | **String** | ISO 4217 3 character currency code | [optional] 
**return_fee** | **String** |  | [optional] 
**return_fee_currency** | **String** | ISO 4217 3 character currency code | [optional] 
**return_fee_description** | **String** |  | [optional] 
**return_code** | **String** |  | [optional] 
**return_description** | **String** |  | [optional] 
**funding_type** | **String** |  | [optional] 
**date_funding_requested** | **String** |  | [optional] 
**payee_name** | **String** |  | [optional] 
**remote_id** | **String** | Remote ID of the Payee, set by Payor | [optional] 
**payee_type** | **String** |  | [optional] 
**payee_email** | **String** |  | [optional] 
**source_account** | **String** |  | [optional] 
**payment_amount** | **Integer** |  | [optional] 
**payment_currency** | **String** | ISO 4217 3 character currency code | [optional] 
**payment_memo** | **String** |  | [optional] 
**payment_type** | **String** |  | [optional] 
**payment_rails** | **String** |  | [optional] 
**payor_payment_id** | **String** |  | [optional] 
**payment_status** | **String** |  | [optional] 
**reject_reason** | **String** |  | [optional] 
**fx_applied** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayorAmlTransactionV4.new(transaction_date: null,
                                 transaction_time: null,
                                 report_transaction_type: null,
                                 debit: null,
                                 debit_currency: null,
                                 credit: null,
                                 credit_currency: null,
                                 return_fee: null,
                                 return_fee_currency: null,
                                 return_fee_description: null,
                                 return_code: null,
                                 return_description: null,
                                 funding_type: null,
                                 date_funding_requested: null,
                                 payee_name: null,
                                 remote_id: null,
                                 payee_type: null,
                                 payee_email: null,
                                 source_account: null,
                                 payment_amount: null,
                                 payment_currency: null,
                                 payment_memo: null,
                                 payment_type: null,
                                 payment_rails: null,
                                 payor_payment_id: null,
                                 payment_status: null,
                                 reject_reason: null,
                                 fx_applied: null)
```


