# VeloPayments::PayeeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**PayeeResponseSummary**](PayeeResponseSummary.md) |  | [optional] 
**page** | [**PayeeResponsePage**](PayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PayeeResponseLinks&gt;**](PayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;Payee&gt;**](Payee.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeResponse.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


