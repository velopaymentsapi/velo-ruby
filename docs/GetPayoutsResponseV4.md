# VeloPayments::GetPayoutsResponseV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PagedPayeeResponsePage**](PagedPayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayoutSummaryAuditV4&gt;**](PayoutSummaryAuditV4.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPayoutsResponseV4.new(page: null,
                                 links: null,
                                 content: null)
```


