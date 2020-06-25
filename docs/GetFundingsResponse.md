# VeloPayments::GetFundingsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PagedUserResponsePage**](PagedUserResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetFundingsResponseLinks&gt;**](GetFundingsResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;FundingAudit&gt;**](FundingAudit.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetFundingsResponse.new(page: null,
                                 links: null,
                                 content: null)
```


