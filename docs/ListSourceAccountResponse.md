# VeloPayments::ListSourceAccountResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**GetPaymentsForPayoutResponsePage**](GetPaymentsForPayoutResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetPaymentsForPayoutResponseLinks&gt;**](GetPaymentsForPayoutResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;SourceAccountResponse&gt;**](SourceAccountResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListSourceAccountResponse.new(page: null,
                                 links: null,
                                 content: null)
```


