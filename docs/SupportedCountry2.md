# VeloPayments::SupportedCountry2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iso_country_code** | **String** |  | [optional] 
**currencies** | **Array&lt;String&gt;** |  | [optional] 
**regions** | [**Region**](Region.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SupportedCountry2.new(iso_country_code: US,
                                 currencies: [&quot;USD&quot;],
                                 regions: null)
```


