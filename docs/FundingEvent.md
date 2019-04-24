# VeloPayments::FundingEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** |  | [optional] 
**event_date_time** | **DateTime** |  | [optional] 
**funding_event_type** | [**FundingEventType**](FundingEventType.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FundingEvent.new(event_id: null,
                                 event_date_time: null,
                                 funding_event_type: null)
```

