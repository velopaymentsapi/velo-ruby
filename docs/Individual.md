# VeloPayments::Individual

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**IndividualName**](IndividualName.md) |  | 
**national_identification** | **String** | If not authorized to view, value will be masked. Example: XXXXX1234 | [optional] 
**date_of_birth** | **String** | If not authorized to view, value will be masked. Example: - XXXX-XX-XX | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::Individual.new(name: null,
                                 national_identification: null,
                                 date_of_birth: null)
```


