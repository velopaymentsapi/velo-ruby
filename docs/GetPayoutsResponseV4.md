# VeloPayments::GetPayoutsResponseV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**PayeeResponseSummary**](PayeeResponseSummary.md) |  | [optional] 
**page** | [**PayeeResponsePage**](PayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PayeeResponseLinks&gt;**](PayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayoutSummaryAuditV4&gt;**](PayoutSummaryAuditV4.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPayoutsResponseV4.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


