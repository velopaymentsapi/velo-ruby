# VeloPayments::UnregisterMFARequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mfa_type** | **String** | The type of the MFA device |  |
| **verification_code** | **String** | &lt;p&gt;Optional property that MUST be suppied when manually verifying a user&lt;/p&gt; &lt;p&gt;The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them&lt;/p&gt;  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UnregisterMFARequest.new(
  mfa_type: TOTP,
  verification_code: 123456
)
```

