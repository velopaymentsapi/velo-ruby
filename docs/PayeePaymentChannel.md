# VeloPayments::PayeePaymentChannel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_channel_name** | **String** |  | [optional] 
**iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] 
**account_number** | **String** |  | 
**routing_number** | **String** |  | 
**country_code** | **String** | Country Code must be a valid 2 letter ISO 3166-1 country code. | 
**currency** | **String** |  | 
**account_name** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeePaymentChannel.new(payment_channel_name: My payment channel,
                                 iban: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1234,
                                 account_number: XXXXXX5678,
                                 routing_number: XXXXX6789,
                                 country_code: UK,
                                 currency: null,
                                 account_name: My account)
```


