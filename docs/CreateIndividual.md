# VeloPayments::CreateIndividual

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**IndividualV1Name**](IndividualV1Name.md) |  | 
**national_identification** | **String** |  | [optional] 
**date_of_birth** | **Date** | Must not be date in future. Example - 1970-05-20 | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreateIndividual.new(name: null,
                                 national_identification: null,
                                 date_of_birth: null)
```


