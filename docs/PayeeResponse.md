# VeloPayments::PayeeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**GetPaymentsForPayoutResponseSummary**](GetPaymentsForPayoutResponseSummary.md) |  | [optional] 
**page** | [**GetPaymentsForPayoutResponsePage**](GetPaymentsForPayoutResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetPaymentsForPayoutResponseLinks&gt;**](GetPaymentsForPayoutResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;Payee&gt;**](Payee.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeResponse.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


