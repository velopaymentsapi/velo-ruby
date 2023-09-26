# VeloPayments::UserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the user | [optional] |
| **status** | **String** | The status of the user when the user has been invited but not yet enrolled they will have a PENDING status  | [optional] |
| **email** | **String** | the email address of the user | [optional] |
| **sms_number** | **String** | The phone number of a device that the user can receive sms messages on  | [optional] |
| **primary_contact_number** | **String** | The main contact number for the user  | [optional] |
| **secondary_contact_number** | **String** | The secondary contact number for the user  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **entity_id** | **String** | The payorId or payeeId or null if the user is not a payor or payee user  | [optional] |
| **company_name** | **String** | The payor or payee company name or null if the user is not a payor or payee user  | [optional] |
| **roles** | [**Array&lt;Role&gt;**](Role.md) | The role(s) for the user  | [optional] |
| **user_type** | **String** | Indicates the type of user. Could be BACKOFFICE, PAYOR or PAYEE. | [optional] |
| **mfa_type** | **String** | The type of the MFA device | [optional] |
| **mfa_status** | **String** | The status of the MFA device | [optional] |
| **locked_out** | **Boolean** | If true the user is currently locked out and unable to log in | [optional] |
| **locked_out_timestamp** | **Time** | A timestamp showing when the user was locked out If null then the user is not currently locked out  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UserResponse.new(
  id: 8bbf301c-948f-4445-b411-357eec53e441,
  status: ENABLED,
  email: foo@example.com,
  sms_number: 11235555555,
  primary_contact_number: 11235555555,
  secondary_contact_number: 11235555550,
  first_name: John,
  last_name: Doe,
  entity_id: 7fffa261-ac68-49e6-b605-d24a444d9206,
  company_name: Acme Corp,
  roles: [&quot;payor.admin&quot;],
  user_type: PAYOR,
  mfa_type: TOTP,
  mfa_status: REGISTERED,
  locked_out: true,
  locked_out_timestamp: null
)
```

