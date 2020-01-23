# VeloPayments::ValidateMFARequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**otp** | **String** | An OTP value that can be verified by the MFA type registered with the user | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ValidateMFARequest.new(otp: 123456)
```


