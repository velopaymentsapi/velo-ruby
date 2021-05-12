# VeloPayments::SupportedCountry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iso_country_code** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |
| **currencies** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SupportedCountry.new(
  iso_country_code: US,
  currencies: null
)
```

