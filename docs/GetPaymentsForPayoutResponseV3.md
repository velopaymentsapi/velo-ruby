# VeloPayments::GetPaymentsForPayoutResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | [**GetPaymentsForPayoutResponseV3Summary**](GetPaymentsForPayoutResponseV3Summary.md) |  | [optional] 
**page** | [**GetPaymentsForPayoutResponseV3Page**](GetPaymentsForPayoutResponseV3Page.md) |  | [optional] 
**links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] 
**content** | [**Array&lt;PaymentResponseV3&gt;**](PaymentResponseV3.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPaymentsForPayoutResponseV3.new(summary: null,
                                 page: null,
                                 links: null,
                                 content: null)
```


