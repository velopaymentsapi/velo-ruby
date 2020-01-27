# VeloPayments::PagedPayeeResponse2Summary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_payees_count** | **Integer** |  | [optional] 
**total_invited_count** | **Integer** |  | [optional] 
**total_registered_count** | **Integer** |  | [optional] 
**total_onboarded_count** | **Integer** |  | [optional] 
**total_watchlist_failed_count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PagedPayeeResponse2Summary.new(total_payees_count: 10,
                                 total_invited_count: 10,
                                 total_registered_count: 10,
                                 total_onboarded_count: 10,
                                 total_watchlist_failed_count: 0)
```


