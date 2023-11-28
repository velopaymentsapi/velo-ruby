# VeloPayments::PayeeInvitationStatusResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  |  |
| **invitation_status** | **String** | Payee invitation status. One of the following values: ACCEPTED, PENDING, DECLINED |  |
| **grace_period_end_date** | **Date** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeInvitationStatusResponseV3.new(
  payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
  invitation_status: null,
  grace_period_end_date: Sun Jan 20 00:00:00 UTC 2019
)
```
