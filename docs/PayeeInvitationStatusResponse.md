# VeloPayments::PayeeInvitationStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | 
**invitation_status** | [**InvitationStatus**](InvitationStatus.md) |  | 
**grace_period_end_date** | **Date** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeInvitationStatusResponse.new(payee_id: null,
                                 invitation_status: null,
                                 grace_period_end_date: null)
```


