# VeloPayments::FailedSubmission2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_submission** | [**FailedPayee2**](FailedPayee2.md) |  | [optional] |
| **failure_message** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FailedSubmission2.new(
  failed_submission: null,
  failure_message: failure reason
)
```

