# VeloPayments::PaymentStatusChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_type** | **String** | OA3 Schema type name for the source info which is used as the discriminator value to ensure that data binding works correctly |  |
| **event_id** | **String** | UUID id of the source event in the Velo platform |  |
| **created_at** | **Time** | ISO8601 timestamp indicating when the source event was created |  |
| **payment_id** | **String** | ID of this payment within the Velo platform |  |
| **payout_payor_ids** | [**PayoutPayorIds**](PayoutPayorIds.md) |  | [optional] |
| **payor_payment_id** | **String** | ID of this payment in the payors system | [optional] |
| **status** | **String** | The new status of the payment. One of \&quot;SUBMITTED\&quot; \&quot;ACCEPTED\&quot; \&quot;REJECTED\&quot; \&quot;ACCEPTED_BY_RAILS\&quot; \&quot;CONFIRMED\&quot; \&quot;RETURNED\&quot; \&quot;WITHDRAWN\&quot; |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentStatusChanged.new(
  source_type: payment_status_changed,
  event_id: 270ab907-27ec-4b83-8028-0ff432bbdec4,
  created_at: 2020-06-18T15:09:42Z,
  payment_id: cbd9280f-8fde-4190-b014-979d88f3ec54,
  payout_payor_ids: null,
  payor_payment_id: ourpayment-id12345,
  status: ACCEPTED
)
```

