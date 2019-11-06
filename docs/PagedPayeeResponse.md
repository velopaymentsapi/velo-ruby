# VeloPayments::PagedPayeeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**PagedPayeeResponseSummary**](PagedPayeeResponseSummary.md) |  | [optional] 
**page** | [**PagedPayeeResponsePage**](PagedPayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayeeResponse&gt;**](PayeeResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PagedPayeeResponse.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


