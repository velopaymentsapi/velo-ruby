# VeloPayments::FailedSubmissionV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_submission** | [**FailedPayeeV4**](FailedPayeeV4.md) |  | [optional] |
| **failure_message** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FailedSubmissionV4.new(
  failed_submission: null,
  failure_message: failure reason
)
```

