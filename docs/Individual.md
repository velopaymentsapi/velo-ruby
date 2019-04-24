# VeloPayments::Individual

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**IndividualName**](IndividualName.md) |  | 
**national_identification** | [**OneOfstringstring**](OneOfstringstring.md) |  | [optional] 
**date_of_birth** | [**OneOfdatestring**](OneOfdatestring.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::Individual.new(name: null,
                                 national_identification: null,
                                 date_of_birth: null)
```


