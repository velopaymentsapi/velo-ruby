# VeloPayments::CreatePayee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRefV3&gt;**](PayeePayorRefV3.md) |  | [optional][readonly] |
| **email** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **type** | [**PayeeType**](PayeeType.md) |  |  |
| **address** | [**CreatePayeeAddress**](CreatePayeeAddress.md) |  |  |
| **payment_channel** | [**CreatePaymentChannel**](CreatePaymentChannel.md) |  | [optional] |
| **challenge** | [**Challenge**](Challenge.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **company** | [**Company**](Company.md) |  | [optional] |
| **individual** | [**CreateIndividual**](CreateIndividual.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayee.new(
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

