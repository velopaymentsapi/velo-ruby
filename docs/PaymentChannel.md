# VeloPayments::PaymentChannel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_channel_name** | **String** |  | [optional] 
**iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] 
**account_number** | **String** |  | 
**routing_no** | **String** |  | 
**country_code** | **String** | Must be a 3 character currency code. ISO 4217 | 
**currency** | **String** |  | 
**account_name** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentChannel.new(payment_channel_name: null,
                                 iban: null,
                                 account_number: null,
                                 routing_no: null,
                                 country_code: null,
                                 currency: null,
                                 account_name: null)
```


