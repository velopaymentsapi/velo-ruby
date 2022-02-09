# VeloPayments::UpdatePayeeDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**PayeeAddress**](PayeeAddress.md) |  | [optional] |
| **individual** | [**Individual**](Individual.md) |  | [optional] |
| **company** | [**Company**](Company.md) |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **payee_type** | [**PayeeType2**](PayeeType2.md) |  | [optional] |
| **challenge** | [**Challenge**](Challenge.md) |  | [optional] |
| **email** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UpdatePayeeDetailsRequest.new(
  address: null,
  individual: null,
  company: null,
  language: en-US,
  payee_type: null,
  challenge: null,
  email: bob@example.com
)
```

