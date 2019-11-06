# VeloPayments::PayoutPayorV4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** | The id of the payor. | 
**payor_name** | **String** | The name of the payor. | 
**dba_name** | **String** | The alternate name of the payor. | 
**principal** | **String** | Email address if principal is a user or ID if application. | 
**principal_id** | **String** | The id of the principal. | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayoutPayorV4.new(payor_id: null,
                                 payor_name: null,
                                 dba_name: null,
                                 principal: null,
                                 principal_id: null)
```


