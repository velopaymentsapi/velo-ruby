# VeloPayments::SourceAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_account_name** | **String** |  | 
**source_account_id** | **String** |  | 
**currency** | **String** |  | 
**total_payout_cost** | **Integer** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccount.new(source_account_name: AccountName,
                                 source_account_id: null,
                                 currency: USD,
                                 total_payout_cost: 1231200)
```


