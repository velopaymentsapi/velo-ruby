# VeloPayments::FundingPayorStatusAuditResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**funding_id** | **String** |  | [optional] 
**amount** | **Integer** |  | [optional] 
**currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] 
**status** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FundingPayorStatusAuditResponse.new(funding_id: null,
                                 amount: null,
                                 currency: USD,
                                 status: null)
```


