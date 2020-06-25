# VeloPayments::TransferRequest2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to_source_account_id** | **String** | The &#39;to&#39; source account id, which will be credited | 
**amount** | **Integer** | Amount to transfer, in minor units | 
**currency** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::TransferRequest2.new(to_source_account_id: null,
                                 amount: null,
                                 currency: USD)
```


