# VeloPayments::RegisterMFAResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totp_url** | **String** | A TOTP Url thaty can be parsed by the TOTP device | [optional] 
**totp_shared_secret** | **String** | The shared secret between the TOTP app and the server | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::RegisterMFAResponse.new(totp_url: otpauth://totp/Velo%20Payments:stephen.smith@example.com?secret&#x3D;JBSWY3DPEHPK3PXP&amp;issuer&#x3D;Velo%20Payments,
                                 totp_shared_secret: JBSWY3DPEHPK3PXP)
```


