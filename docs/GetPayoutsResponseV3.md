# VeloPayments::GetPayoutsResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**GetPayoutsResponseV3Summary**](GetPayoutsResponseV3Summary.md) |  | [optional] 
**page** | [**GetPayoutsResponseV3Page**](GetPayoutsResponseV3Page.md) |  | [optional] 
**links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] 
**content** | [**Array&lt;PayoutSummaryAuditV3&gt;**](PayoutSummaryAuditV3.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPayoutsResponseV3.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


