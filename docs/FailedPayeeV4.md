# VeloPayments::FailedPayeeV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRefV4&gt;**](PayeePayorRefV4.md) |  | [optional][readonly] |
| **email** | **String** |  | [optional] |
| **remote_id** | **String** |  | [optional] |
| **type** | **String** | Type of Payee. One of the following values: Individual, Company | [optional] |
| **address** | [**CreatePayeeAddressV4**](CreatePayeeAddressV4.md) |  | [optional] |
| **payment_channel** | [**CreatePaymentChannelV4**](CreatePaymentChannelV4.md) |  | [optional] |
| **challenge** | [**ChallengeV4**](ChallengeV4.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **company** | [**CompanyV4**](CompanyV4.md) |  | [optional] |
| **individual** | [**CreateIndividualV4**](CreateIndividualV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FailedPayeeV4.new(
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

