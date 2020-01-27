# VeloPayments::InlineResponse401Errors

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

instance = VeloPayments::InlineResponse401Errors.new(error_message: Authentication is required and has not been provided or access has expired,
                                 location: accessToken,
                                 location_type: null,
                                 reason_code: tokenExpired)
```


