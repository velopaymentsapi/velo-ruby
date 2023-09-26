# VeloPayments::AutoTopUpConfigV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Is auto top-up enabled? automatically trigger funding to top-up the source account balance when the balance falls below the configured minimum level. |  |
| **min_balance** | **Integer** | When the payor balance falls below this level then auto top-up will be triggered. Note - This is in minor units. | [optional] |
| **target_balance** | **Integer** | When the payor balance falls below the min balance then auto top-up will request funds bring the balance to this level. Note - this is in minor units. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::AutoTopUpConfigV2.new(
  enabled: true,
  min_balance: 10000,
  target_balance: 300000
)
```

