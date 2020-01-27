# VeloPayments::GetPaymentsForPayoutResponseV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**GetPaymentsForPayoutResponseV4Summary**](GetPaymentsForPayoutResponseV4Summary.md) |  | [optional] 
**page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PaymentResponseV4&gt;**](PaymentResponseV4.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPaymentsForPayoutResponseV4.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


