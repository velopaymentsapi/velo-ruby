# VeloPayments::QueryBatchResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Batch Status. One of the following values: SUBMITTED, ACCEPTED | [optional] |
| **failure_count** | **Integer** |  | [optional] |
| **pending_count** | **Integer** |  | [optional] |
| **failures** | [**Array&lt;FailedSubmissionV4&gt;**](FailedSubmissionV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::QueryBatchResponseV4.new(
  status: null,
  failure_count: 2,
  pending_count: 2,
  failures: null
)
```

