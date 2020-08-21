# VeloPayments::ListPaymentsResponseV3Page

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_elements** | **Integer** |  | [optional] 
**total_elements** | **Integer** |  | [optional] 
**total_pages** | **Integer** |  | [optional] 
**page** | **Integer** |  | [optional] 
**page_size** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListPaymentsResponseV3Page.new(number_of_elements: 12,
                                 total_elements: 12,
                                 total_pages: 12,
                                 page: 1,
                                 page_size: 25)
```

