# VeloPayments::PaymentInstruction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_id** | **String** | Your identifier for payee | 
**currency** | **String** | Payee&#39;s currency | 
**amount** | **Integer** | Amount to send to Payee | 
**payment_memo** | **String** |  | [optional] 
**source_account_name** | **String** |  | 
**payor_payment_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentInstruction.new(remote_id: null,
                                 currency: null,
                                 amount: null,
                                 payment_memo: null,
                                 source_account_name: null,
                                 payor_payment_id: null)
```


