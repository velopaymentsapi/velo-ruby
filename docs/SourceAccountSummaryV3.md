# VeloPayments::SourceAccountSummaryV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_account_id** | **String** |  | 
**total_cost** | **Integer** |  | 
**currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccountSummaryV3.new(source_account_id: null,
                                 total_cost: 3434,
                                 currency: null)
```


