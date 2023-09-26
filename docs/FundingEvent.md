# VeloPayments::FundingEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  | [optional] |
| **event_date_time** | **Time** |  | [optional] |
| **funding_event_type** | **String** | Funding event type. One of the following values: PAYOR_FUNDING_DETECTED, PAYOR_FUNDING_REQUESTED, PAYOR_FUNDING_RETURN_RECEIVED, FUNDING_RETURN_DETECTED, PAYOR_FUNDING_REQUEST_SUBMITTED, PAYOR_FUNDING_ENTRY_DETAIL_RECEIVED, FUNDING_DEALLOCATED | [optional] |
| **principal** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingEvent.new(
  event_id: null,
  event_date_time: null,
  funding_event_type: null,
  principal: null
)
```

