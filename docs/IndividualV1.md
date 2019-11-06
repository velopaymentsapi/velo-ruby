# VeloPayments::IndividualV1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**IndividualV1Name**](IndividualV1Name.md) |  | 
**national_identification** | **String** | If not authorized to view, value will be masked. Example: XXXXX1234 | [optional] [readonly] 
**date_of_birth** | **String** | If not authorized to view, value will be masked. Example: - XXXX-XX-XX | [readonly] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::IndividualV1.new(name: null,
                                 national_identification: null,
                                 date_of_birth: null)
```

