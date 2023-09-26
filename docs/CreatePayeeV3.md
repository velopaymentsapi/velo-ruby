# VeloPayments::CreatePayeeV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRefV3&gt;**](PayeePayorRefV3.md) |  | [optional][readonly] |
| **email** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **type** | **String** | Type of Payee. One of the following values: Individual, Company |  |
| **address** | [**CreatePayeeAddressV3**](CreatePayeeAddressV3.md) |  |  |
| **payment_channel** | [**CreatePaymentChannelV3**](CreatePaymentChannelV3.md) |  | [optional] |
| **challenge** | [**ChallengeV3**](ChallengeV3.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **company** | [**CompanyV3**](CompanyV3.md) |  | [optional] |
| **individual** | [**CreateIndividualV3**](CreateIndividualV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeeV3.new(
  payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
  payor_refs: null,
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

