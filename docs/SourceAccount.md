# VeloPayments::SourceAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_account_name** | **String** |  | 
**source_account_id** | **String** |  | 
**currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | 
**total_payout_cost** | **Integer** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SourceAccount.new(source_account_name: AccountName,
                                 source_account_id: null,
                                 currency: USD,
                                 total_payout_cost: 1231200)
```


