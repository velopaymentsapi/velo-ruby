# VeloPayments::SelfMFATypeUnregisterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mfa_type** | **String** | The type of the MFA device |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SelfMFATypeUnregisterRequest.new(
  mfa_type: TOTP
)
```

