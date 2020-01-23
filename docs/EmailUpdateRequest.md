# VeloPayments::EmailUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | the email address of the invited user | 
**verification_code** | **String** | Optional property that MUST be suppied when manually verifying a user The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::EmailUpdateRequest.new(email: foo@example.com,
                                 verification_code: 123456)
```


