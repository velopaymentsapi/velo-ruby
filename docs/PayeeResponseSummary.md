# VeloPayments::PayeeResponseSummary

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

instance = VeloPayments::PayeeResponseSummary.new(total_payees_count: null,
                                 total_invited_count: null,
                                 total_registered_count: null,
                                 total_onboarded_count: null,
                                 total_ofac_failed_count: null)
```


