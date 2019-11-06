# VeloPayments::PaymentDeltaResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PagedPayeeResponsePage**](PagedPayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PaymentDelta&gt;**](PaymentDelta.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentDeltaResponse.new(page: null,
                                 links: null,
                                 content: null)
```


