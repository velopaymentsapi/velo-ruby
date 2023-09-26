# VeloPayments::PayeePayorRefV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **remote_id** | **String** |  | [optional] |
| **invitation_status** | **String** |  | [optional] |
| **invitation_status_timestamp** | **Time** | The timestamp when the invitation status is updated | [optional] |
| **payment_channel_id** | **String** |  | [optional] |
| **payable_status** | **Boolean** | Indicates if the payee is payable for this payor | [optional] |
| **payable_issues** | [**Array&lt;PayableIssueV3&gt;**](PayableIssueV3.md) | Indicates any conditions which prevent the payee from being payable for this payor | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeePayorRefV3.new(
  payor_id: ba08877f-9d96-41e4-9c26-44a872d856ae,
  remote_id: uniqueIdForRemoteEntity,
  invitation_status: null,
  invitation_status_timestamp: 2019-01-20T09:00Z,
  payment_channel_id: 70faaff7-2c32-4b44-b27f-f0b6c484e6f3,
  payable_status: null,
  payable_issues: null
)
```

