# VeloPayments::UpdatePayeeDetailsRequest2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**PayeeAddress2**](PayeeAddress2.md) |  | [optional] |
| **individual** | [**Individual2**](Individual2.md) |  | [optional] |
| **company** | [**Company2**](Company2.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **payee_type** | [**PayeeType2**](PayeeType2.md) |  | [optional] |
| **challenge** | [**Challenge2**](Challenge2.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **contact_sms_number** | **String** | The phone number of a device that the payee wishes to receive sms messages on  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UpdatePayeeDetailsRequest2.new(
  address: null,
  individual: null,
  company: null,
  language: en-US,
  payee_type: null,
  challenge: null,
  email: bob@example.com,
  contact_sms_number: 11235555555
)
```

