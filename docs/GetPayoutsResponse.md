# VeloPayments::GetPayoutsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**GetPaymentsForPayoutResponseSummary**](GetPaymentsForPayoutResponseSummary.md) |  | [optional] 
**page** | [**GetPaymentsForPayoutResponsePage**](GetPaymentsForPayoutResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetPaymentsForPayoutResponseLinks&gt;**](GetPaymentsForPayoutResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayoutSummaryAudit&gt;**](PayoutSummaryAudit.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPayoutsResponse.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


