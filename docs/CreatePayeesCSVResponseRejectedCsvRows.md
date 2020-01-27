# VeloPayments::CreatePayeesCSVResponseRejectedCsvRows

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**line_number** | **Integer** |  | [optional] 
**rejected_content** | **String** |  | [optional] 
**message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayeesCSVResponseRejectedCsvRows.new(line_number: 3,
                                 rejected_content: remoteId1,USD,-123.45,ref1,
                                 message: rejected message 1)
```


