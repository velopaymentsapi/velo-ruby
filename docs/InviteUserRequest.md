# VeloPayments::InviteUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | the email address of the invited user |  |
| **mfa_type** | **String** | &lt;p&gt;The MFA type that the user will use&lt;/p&gt; &lt;p&gt;The type may be conditional on the role(s) the user has&lt;/p&gt;  |  |
| **sms_number** | **String** | The phone number of a device that the user can receive sms messages on  |  |
| **primary_contact_number** | **String** | The main contact number for the user  |  |
| **secondary_contact_number** | **String** | The secondary contact number for the user  | [optional] |
| **roles** | **Array&lt;String&gt;** | The role(s) for the user The role must exist The role can be a custom role or a system role but the invoker must have the permissions to assign the role System roles are: velo.backoffice.admin, velo.payor.master_admin, velo.payor.admin, velo.payor.support, velo.payee.admin, velo.payee.support  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **entity_id** | **String** | The payorId or payeeId or null if the user is a backoffice admin  | [optional] |
| **user_type** | **String** | Will default to PAYOR if not provided but entityId is provided | [optional] |
| **verification_code** | **String** | Optional property that MUST be suppied when manually verifying a user The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::InviteUserRequest.new(
  email: foo@example.com,
  mfa_type: TOTP,
  sms_number: 11235555555,
  primary_contact_number: 11235555555,
  secondary_contact_number: 11235555550,
  roles: [&quot;velo.payor.admin&quot;],
  first_name: John,
  last_name: Doe,
  entity_id: 7fffa261-ac68-49e6-b605-d24a444d9206,
  user_type: PAYEE,
  verification_code: 123456
)
```

