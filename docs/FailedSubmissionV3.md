# VeloPayments::FailedSubmissionV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_submission** | [**FailedPayeeV3**](FailedPayeeV3.md) |  | [optional] |
| **failure_message** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FailedSubmissionV3.new(
  failed_submission: null,
  failure_message: failure reason
)
```

