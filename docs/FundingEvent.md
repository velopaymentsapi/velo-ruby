# VeloPayments::FundingEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_type** | **String** | OA3 Schema type name for the source info which is used as the discriminator value to ensure that data binding works correctly |  |
| **event_id** | **String** | UUID id of the source event in the Velo platform |  |
| **created_at** | **Time** | ISO8601 timestamp indicating when the source event was created |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingEvent.new(
  source_type: payment_status_changed,
  event_id: 270ab907-27ec-4b83-8028-0ff432bbdec4,
  created_at: 2020-06-18T15:09:42Z
)
```

