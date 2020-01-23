# VeloPayments::PayeeInvitationStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | 
**invitation_status** | **String** |  | 
**grace_period_end_date** | **Date** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeInvitationStatus.new(payee_id: null,
                                 invitation_status: ACCEPTED,
                                 grace_period_end_date: Sun Feb 03 00:00:00 GMT 2019)
```


