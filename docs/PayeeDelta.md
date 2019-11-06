# VeloPayments::PayeeDelta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_id** | **String** |  | 
**payee_id** | **String** |  | [readonly] 
**display_name** | **String** |  | [optional] 
**dba_name** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**payee_country** | **String** |  | [optional] 
**onboarded_status** | [**OnboardedStatus**](OnboardedStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeDelta.new(remote_id: payee_1,
                                 payee_id: null,
                                 display_name: Payee1,
                                 dba_name: Payee DBA Name,
                                 email: payee1@example.com,
                                 payee_country: US,
                                 onboarded_status: null)
```


