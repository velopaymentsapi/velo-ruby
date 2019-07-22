# VeloPayments::ListPaymentsResponseSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_payees_count** | **Integer** |  | [optional] 
**total_invited_count** | **Integer** |  | [optional] 
**total_registered_count** | **Integer** |  | [optional] 
**total_onboarded_count** | **Integer** |  | [optional] 
**total_ofac_failed_count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ListPaymentsResponseSummary.new(total_payees_count: 123,
                                 total_invited_count: 123,
                                 total_registered_count: 123,
                                 total_onboarded_count: 123,
                                 total_ofac_failed_count: 123)
```


