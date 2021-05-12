# VeloPayments::FailedSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_submission** | [**FailedPayee**](FailedPayee.md) |  | [optional] |
| **failure_message** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FailedSubmission.new(
  failed_submission: null,
  failure_message: failure reason
)
```

