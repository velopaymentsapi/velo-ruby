# VeloPayments::PayeeAddressV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line1** | **String** |  |  |
| **line2** | **String** |  | [optional] |
| **line3** | **String** |  | [optional] |
| **line4** | **String** |  | [optional] |
| **city** | **String** |  |  |
| **county_or_province** | **String** |  | [optional] |
| **zip_or_postcode** | **String** |  | [optional] |
| **country** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeAddressV4.new(
  line1: 500 Duval St,
  line2: null,
  line3: null,
  line4: null,
  city: Key West,
  county_or_province: FL,
  zip_or_postcode: 33945,
  country: US
)
```

