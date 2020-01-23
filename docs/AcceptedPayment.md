# VeloPayments::AcceptedPayment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_id** | **String** |  | 
**currency_type** | **String** |  | 
**amount** | **Integer** |  | 
**source_account_name** | **String** |  | 
**payor_payment_id** | **String** |  | 
**payment_memo** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::AcceptedPayment.new(remote_id: remoteIdVal123,
                                 currency_type: USD,
                                 amount: 1234,
                                 source_account_name: Chase,
                                 payor_payment_id: paymenIdVal123123,
                                 payment_memo: Payment memo)
```


