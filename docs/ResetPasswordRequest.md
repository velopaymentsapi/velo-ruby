# VeloPayments::ResetPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | the email address of the user requesting the reset password |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ResetPasswordRequest.new(
  email: foo@example.com
)
```

