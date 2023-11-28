# VeloPayments::UpdatePayeeDetailsRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**PayeeAddressV3**](PayeeAddressV3.md) |  | [optional] |
| **individual** | [**IndividualV3**](IndividualV3.md) |  | [optional] |
| **company** | [**CompanyV3**](CompanyV3.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **payee_type** | [**PayeeTypeEnum**](PayeeTypeEnum.md) |  | [optional] |
| **challenge** | [**ChallengeV3**](ChallengeV3.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **contact_sms_number** | **String** | The phone number of a device that the payee wishes to receive sms messages on  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UpdatePayeeDetailsRequestV3.new(
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

