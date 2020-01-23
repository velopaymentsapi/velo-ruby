# VeloPayments::SelfMFATypeUnregisterRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mfa_type** | **String** | The type of the MFA device | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SelfMFATypeUnregisterRequest.new(mfa_type: TOTP)
```


