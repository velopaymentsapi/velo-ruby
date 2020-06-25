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
                                 rejected_content: unable,to,process,csv,line,
                                 message: rejected message 1)
```


