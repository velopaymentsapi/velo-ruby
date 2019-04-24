# VeloPayments::Company

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**tax_id** | **String** | Company Tax Id (EIN) must be 9 numeric characters. Must match the regular expression &#x60;&#x60;&#x60;[\\d]{9}&#x60;&#x60;&#x60;. | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::Company.new(name: null,
                                 tax_id: null)
```


