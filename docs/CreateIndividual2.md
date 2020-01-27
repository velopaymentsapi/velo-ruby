# VeloPayments::CreateIndividual2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**CreateIndividual2Name**](CreateIndividual2Name.md) |  | 
**national_identification** | **String** |  | [optional] 
**date_of_birth** | **Date** | Must not be date in future. Example - 1970-05-20 | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreateIndividual2.new(name: null,
                                 national_identification: SA211123K,
                                 date_of_birth: Wed May 20 00:00:00 GMT 1970)
```


