# VeloPayments::IndividualV1Name

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**first_name** | **String** |  | 
**other_names** | **String** |  | [optional] 
**last_name** | **String** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::IndividualV1Name.new(title: Mr,
                                 first_name: Bob,
                                 other_names: A,
                                 last_name: Smith)
```


