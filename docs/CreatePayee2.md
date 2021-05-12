# VeloPayments::CreatePayee2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRef&gt;**](PayeePayorRef.md) |  | [optional][readonly] |
| **email** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **type** | [**PayeeType**](PayeeType.md) |  |  |
| **address** | [**CreatePayeeAddress2**](CreatePayeeAddress2.md) |  |  |
| **payment_channel** | [**CreatePaymentChannel2**](CreatePaymentChannel2.md) |  | [optional] |
| **challenge** | [**Challenge2**](Challenge2.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **company** | [**Company2**](Company2.md) |  | [optional] |
| **individual** | [**CreateIndividual2**](CreateIndividual2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayee2.new(
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

