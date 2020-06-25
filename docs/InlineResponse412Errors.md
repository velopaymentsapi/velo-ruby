# VeloPayments::InlineResponse412Errors

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

instance = VeloPayments::InlineResponse412Errors.new(error_message: The request could not be completed as the pre conditions have not been met,
                                 location: accessToken,
                                 location_type: null,
                                 reason_code: permissions)
```


