# VeloPayments::MFADetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mfa_type** | [**MFAType**](MFAType.md) |  | [optional] |
| **verified** | **Boolean** | true if the user has used the MFA device for login | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::MFADetails.new(
  mfa_type: null,
  verified: true
)
```

