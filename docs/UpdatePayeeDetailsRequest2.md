# VeloPayments::UpdatePayeeDetailsRequest2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**PayeeAddress2**](PayeeAddress2.md) |  | [optional] 
**individual** | [**Individual2**](Individual2.md) |  | [optional] 
**company** | [**Company2**](Company2.md) |  | [optional] 
**language** | [**Language2**](Language2.md) |  | [optional] 
**payee_type** | [**PayeeType2**](PayeeType2.md) |  | [optional] 
**challenge** | [**Challenge2**](Challenge2.md) |  | [optional] 
**email** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::UpdatePayeeDetailsRequest2.new(address: null,
                                 individual: null,
                                 company: null,
                                 language: null,
                                 payee_type: null,
                                 challenge: null,
                                 email: bob@example.com)
```


