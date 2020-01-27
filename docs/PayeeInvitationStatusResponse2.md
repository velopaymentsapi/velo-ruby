# VeloPayments::PayeeInvitationStatusResponse2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | 
**invitation_status** | **String** |  | 
**grace_period_end_date** | **Date** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeInvitationStatusResponse2.new(payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
                                 invitation_status: null,
                                 grace_period_end_date: Sun Jan 20 00:00:00 GMT 2019)
```


