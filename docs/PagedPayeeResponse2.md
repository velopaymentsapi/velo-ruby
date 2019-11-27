# VeloPayments::PagedPayeeResponse2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**PagedPayeeResponse2Summary**](PagedPayeeResponse2Summary.md) |  | [optional] 
**page** | [**PagedPayeeResponsePage**](PagedPayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayeeResponse2&gt;**](PayeeResponse2.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PagedPayeeResponse2.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


