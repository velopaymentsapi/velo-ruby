# VeloPayments::QueryBatchResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Batch Status | [optional] |
| **failure_count** | **Integer** |  | [optional] |
| **pending_count** | **Integer** |  | [optional] |
| **failures** | [**Array&lt;FailedSubmission2&gt;**](FailedSubmission2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::QueryBatchResponse2.new(
  status: null,
  failure_count: 2,
  pending_count: 2,
  failures: null
)
```

