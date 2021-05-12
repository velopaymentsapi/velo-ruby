# VeloPayments::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_message** | **String** | English language message indicating the nature of the error | [optional] |
| **error_code** | **String** | Unique numeric code that can be used for switching client behavior or to drive translated or customised error messages | [optional] |
| **localisation_details** | [**LocalisationDetails**](LocalisationDetails.md) |  | [optional] |
| **location** | **String** | the property or object that caused the error | [optional] |
| **location_type** | **String** | the location type in the request that was the cause of the error  | [optional] |
| **reason_code** | **String** | a camel-cased string that can be used by clients to localise client error messages (deprecated) | [optional] |
| **error_data** | [**ErrorData**](ErrorData.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::Error.new(
  error_message: size must be between 0 and 10,
  error_code: 20110003,
  localisation_details: null,
  location: firstName,
  location_type: requestBody,
  reason_code: validationError,
  error_data: null
)
```

