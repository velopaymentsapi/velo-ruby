# VeloPayments::InlineResponse400Errors

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_message** | **String** | verbose message indicating the nature of the error Will be localised  | [optional] 
**location** | **String** | the property or object that caused the error | [optional] 
**location_type** | [**LocationType**](LocationType.md) |  | [optional] 
**reason_code** | **String** | a camel-cased string that can be used by clients to localise client error messages | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::InlineResponse400Errors.new(error_message: smsNumber must be in the E.164 format e.g. +15551231234,
                                 location: smsNumber,
                                 location_type: null,
                                 reason_code: validationError)
```


