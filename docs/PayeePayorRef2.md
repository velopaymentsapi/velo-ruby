# VeloPayments::PayeePayorRef2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | [optional] 
**remote_id** | **String** |  | [optional] 
**invitation_status** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeePayorRef2.new(payor_id: ba08877f-9d96-41e4-9c26-44a872d856ae,
                                 remote_id: uniqueIdForRemoteEntity,
                                 invitation_status: null)
```


