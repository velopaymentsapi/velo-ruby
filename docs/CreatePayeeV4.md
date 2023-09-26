# VeloPayments::CreatePayeeV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **type** | [**PayeeTypeEnum**](PayeeTypeEnum.md) |  |  |
| **address** | [**CreatePayeeAddressV4**](CreatePayeeAddressV4.md) |  |  |
| **payment_channel** | [**CreatePaymentChannelV4**](CreatePaymentChannelV4.md) |  | [optional] |
| **challenge** | [**ChallengeV4**](ChallengeV4.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **company** | [**CompanyV4**](CompanyV4.md) |  | [optional] |
| **individual** | [**CreateIndividualV4**](CreateIndividualV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeeV4.new(
  email: bob@example.com,
  remote_id: Remote ID,
  type: null,
  address: null,
  payment_channel: null,
  challenge: null,
  language: en-US,
  company: null,
  individual: null
)
```

