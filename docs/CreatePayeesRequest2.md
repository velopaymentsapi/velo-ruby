# VeloPayments::CreatePayeesRequest2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | 
**payees** | [**Array&lt;CreatePayee2&gt;**](CreatePayee2.md) |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayeesRequest2.new(payor_id: 9ac75325-5dcd-42d5-b992-175d7e0a035e,
                                 payees: null)
```


