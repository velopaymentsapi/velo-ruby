# VeloPayments::PayeeAddressV3

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
| **country** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeAddressV3.new(
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

