# VeloPayments::SupportedCurrency

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | ISO Currency Code | [optional] 
**max_payment_amount** | **Integer** | The max amount allowed in this currency | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SupportedCurrency.new(currency: GBP,
                                 max_payment_amount: 100000)
```


