# VeloPayments::ListPaymentsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**ListPaymentsResponsePage**](ListPaymentsResponsePage.md) |  | [optional] 
**links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] 
**content** | [**Array&lt;PaymentResponseV3&gt;**](PaymentResponseV3.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListPaymentsResponse.new(page: null,
                                 links: null,
                                 content: null)
```


