# VeloPayments::ListPaymentsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**GetPaymentsForPayoutResponseSummary**](GetPaymentsForPayoutResponseSummary.md) |  | [optional] 
**page** | [**GetPaymentsForPayoutResponsePage**](GetPaymentsForPayoutResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetPaymentsForPayoutResponseLinks&gt;**](GetPaymentsForPayoutResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PaymentResponse&gt;**](PaymentResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListPaymentsResponse.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


