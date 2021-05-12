# VeloPayments::ResendTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_type** | **String** | The type of the token to resend |  |
| **verification_code** | **String** | &lt;p&gt;Optional property that MUST be suppied when manually verifying a user&lt;/p&gt; &lt;p&gt;The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them&lt;/p&gt;  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ResendTokenRequest.new(
  token_type: INVITE_MFA_USER,
  verification_code: 123456
)
```

