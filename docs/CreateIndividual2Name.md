# VeloPayments::CreateIndividual2Name

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

instance = VeloPayments::CreateIndividual2Name.new(title: Mr,
                                 first_name: Bob,
                                 other_names: H,
                                 last_name: Smith)
```


