# VeloPayments::PayeeUserSelfUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_contact_number** | **String** | The main contact number for the user  | [optional] |
| **secondary_contact_number** | **String** | The secondary contact number for the user  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** | the email address of the user | [optional] |
| **sms_number** | **String** | The phone number of a device that the user can receive sms messages on  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeUserSelfUpdateRequest.new(
  primary_contact_number: 11235555555,
  secondary_contact_number: 11235555550,
  first_name: John,
  last_name: Doe,
  email: foo@example.com,
  sms_number: 11235555555
)
```

