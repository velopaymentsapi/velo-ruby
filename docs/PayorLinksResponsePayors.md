# VeloPayments::PayorLinksResponsePayors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **payor_name** | **String** |  |  |
| **primary_contact_email** | **String** |  | [optional] |
| **kyc_state** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorLinksResponsePayors.new(
  payor_id: null,
  payor_name: null,
  primary_contact_email: null,
  kyc_state: null
)
```

