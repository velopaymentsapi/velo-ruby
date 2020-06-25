# VeloPayments::PaymentV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_id** | **String** |  | 
**remote_id** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**amount** | **Integer** |  | [optional] 
**source_account_name** | **String** |  | [optional] 
**payor_payment_id** | **String** |  | [optional] 
**payment_memo** | **String** |  | [optional] 
**payee** | [**PayoutPayeeV3**](PayoutPayeeV3.md) |  | [optional] 
**withdrawable** | **Boolean** |  | [optional] 
**status** | **String** |  | [optional] 
**transmission_type** | [**TransmissionType**](TransmissionType.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentV3.new(payment_id: null,
                                 remote_id: remoteIdVal123,
                                 currency: USD,
                                 amount: 1234,
                                 source_account_name: Chase,
                                 payor_payment_id: paymenIdVal123123,
                                 payment_memo: Payment memo,
                                 payee: null,
                                 withdrawable: false,
                                 status: null,
                                 transmission_type: null)
```


