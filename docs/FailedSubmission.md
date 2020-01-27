# VeloPayments::FailedSubmission

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**failed_submission** | [**Payee2**](Payee2.md) |  | [optional] 
**failure_message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::FailedSubmission.new(failed_submission: null,
                                 failure_message: failure reason)
```


