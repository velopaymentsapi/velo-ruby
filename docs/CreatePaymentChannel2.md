# VeloPayments::CreatePaymentChannel2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_channel_name** | **String** |  | [optional] 
**iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. Either routing number and account number or only iban must be set | [optional] 
**account_number** | **String** | Either routing number and account number or only iban must be set | [optional] 
**routing_number** | **String** | Either routing number and account number or only iban must be set | [optional] 
**country_code** | **String** | Two character country code | 
**currency** | **String** |  | 
**account_name** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePaymentChannel2.new(payment_channel_name: null,
                                 iban: null,
                                 account_number: null,
                                 routing_number: null,
                                 country_code: null,
                                 currency: null,
                                 account_name: null)
```


