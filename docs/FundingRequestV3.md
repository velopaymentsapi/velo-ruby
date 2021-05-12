# VeloPayments::FundingRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_account_id** | **String** | The funding account id |  |
| **amount** | **Integer** | Amount to fund in minor units |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingRequestV3.new(
  funding_account_id: null,
  amount: null
)
```

