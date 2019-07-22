# VeloPayments::ListPaymentsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**ListPaymentsResponseSummary**](ListPaymentsResponseSummary.md) |  | [optional] 
**page** | [**ListPaymentsResponsePage**](ListPaymentsResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] 
**content** | [**Array&lt;PaymentResponseV3&gt;**](PaymentResponseV3.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListPaymentsResponse.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


