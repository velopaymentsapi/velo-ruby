# VeloPayments::SourceAccountSummaryV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_account_id** | **String** |  | 
**total_cost** | **Integer** |  | 
**currency** | [**PaymentAuditCurrencyV4**](PaymentAuditCurrencyV4.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccountSummaryV4.new(source_account_id: null,
                                 total_cost: 3344,
                                 currency: null)
```


