# VeloPayments::PaymentChannelCountry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iso_country_code** | **String** | The ISO code for the country |  |
| **rules** | [**Array&lt;PaymentChannelRule&gt;**](PaymentChannelRule.md) | The rules for the given country |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentChannelCountry.new(
  iso_country_code: US,
  rules: null
)
```

