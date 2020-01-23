# VeloPayments::ListFundingAccountsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**ListSourceAccountResponsePage**](ListSourceAccountResponsePage.md) |  | [optional] 
**links** | [**Array&lt;ListSourceAccountResponseLinks&gt;**](ListSourceAccountResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;FundingAccountResponse&gt;**](FundingAccountResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListFundingAccountsResponse.new(page: null,
                                 links: null,
                                 content: null)
```


