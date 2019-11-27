# VeloPayments::ErrorResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | one or more errors | [optional] 
**correlation_id** | **String** | a unique identifier to track a request or related sequence of requests | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ErrorResponse.new(errors: null,
                                 correlation_id: ee53e01d-c078-43fd-abd4-47e92f4a06cf)
```


