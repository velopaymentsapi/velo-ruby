# VeloPayments::UserDetailsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_contact_number** | **String** | The main contact number for the user  | [optional] |
| **secondary_contact_number** | **String** | The secondary contact number for the user  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** | the email address of the user | [optional] |
| **sms_number** | **String** | The phone number of a device that the user can receive sms messages on  | [optional] |
| **mfa_type** | [**MFAType**](MFAType.md) |  | [optional] |
| **verification_code** | **String** | &lt;p&gt;Optional property that MUST be suppied when manually verifying a user&lt;/p&gt; &lt;p&gt;The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them&lt;/p&gt;  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UserDetailsUpdateRequest.new(
  primary_contact_number: 11235555555,
  secondary_contact_number: 11235555550,
  first_name: John,
  last_name: Doe,
  email: foo@example.com,
  sms_number: 11235555555,
  mfa_type: null,
  verification_code: 123456
)
```

