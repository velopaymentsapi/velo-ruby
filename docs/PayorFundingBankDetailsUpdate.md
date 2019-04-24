# VeloPayments::PayorFundingBankDetailsUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routing_number** | **String** | Routing number for the payor’s bank | 
**account_number** | **String** | Payor’s bank account number. | 
**account_name** | **String** | Payor’s bank account name. | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayorFundingBankDetailsUpdate.new(routing_number: null,
                                 account_number: null,
                                 account_name: null)
```


