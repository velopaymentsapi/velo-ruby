# VeloPayments::FundingAudit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** |  | [optional] 
**date_time** | **DateTime** |  | [optional] 
**status** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**source_account_name** | **String** |  | [optional] 
**funding_account_name** | **String** |  | [optional] 
**funding_type** | **String** |  | [optional] 
**events** | [**Array&lt;FundingEvent&gt;**](FundingEvent.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FundingAudit.new(amount: null,
                                 date_time: null,
                                 status: null,
                                 currency: null,
                                 source_account_name: null,
                                 funding_account_name: null,
                                 funding_type: null,
                                 events: null)
```


