# VeloPayments::QueryBatchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Batch Status | [optional] 
**failure_count** | **Integer** |  | [optional] 
**pending_count** | **Integer** |  | [optional] 
**failures** | [**Array&lt;FailedSubmission&gt;**](FailedSubmission.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::QueryBatchResponse.new(status: null,
                                 failure_count: null,
                                 pending_count: null,
                                 failures: null)
```


