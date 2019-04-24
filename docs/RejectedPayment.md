# VeloPayments::RejectedPayment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_id** | **String** |  | 
**currency_type** | **String** |  | 
**amount** | **Integer** |  | 
**source_account_name** | **String** |  | 
**payor_payment_id** | **String** |  | 
**reason** | **String** |  | 
**line_number** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::RejectedPayment.new(remote_id: null,
                                 currency_type: null,
                                 amount: null,
                                 source_account_name: null,
                                 payor_payment_id: null,
                                 reason: null,
                                 line_number: null,
                                 message: null)
```


