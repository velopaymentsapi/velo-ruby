# VeloPayments::InviteUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | the email address of the invited user | 
**mfa_type** | **String** | The MFA type that the user will use The type may be conditional on the role(s) the user has  | 
**sms_number** | **String** | The phone number of a device that the user can receive sms messages on  | 
**primary_contact_number** | **String** | The main contact number for the user  | 
**secondary_contact_number** | **String** | The secondary contact number for the user  | [optional] 
**roles** | **Array&lt;String&gt;** | The role(s) for the user The role must exist The role can be a custom role or a system role but the invoker must have the permissions to assign the role System roles are: backoffice.admin, payor.master_admin, payor.admin, payor.support  | 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**entity_id** | **String** | The payorId or null if the user is not a payor user  | [optional] 
**verification_code** | **String** | Optional property that MUST be suppied when manually verifying a user The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::InviteUserRequest.new(email: foo@example.com,
                                 mfa_type: null,
                                 sms_number: 11235555555,
                                 primary_contact_number: 11235555555,
                                 secondary_contact_number: 11235555550,
                                 roles: [&quot;payor.admin&quot;],
                                 first_name: John,
                                 last_name: Doe,
                                 entity_id: 7fffa261-ac68-49e6-b605-d24a444d9206,
                                 verification_code: 123456)
```


