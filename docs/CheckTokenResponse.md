# VeloPayments::CheckTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expiry_date** | **DateTime** | the timestamp when the token will expire | [optional] 
**mfa_type** | [**MFAType**](MFAType.md) |  | [optional] 
**token_type** | [**TokenType**](TokenType.md) |  | [optional] 
**mfa_verified** | **Boolean** | has the user verified their MFA device by logging in | [optional] 
**mfa_status** | [**MFAStatus**](MFAStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CheckTokenResponse.new(expiry_date: 2019-10-25T14:08:25.701Z,
                                 mfa_type: null,
                                 token_type: null,
                                 mfa_verified: null,
                                 mfa_status: null)
```


