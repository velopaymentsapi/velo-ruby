# VeloPayments::GetPayeeListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | [optional] [readonly] 
**payor_refs** | [**Array&lt;PayeePayorRefV3&gt;**](PayeePayorRefV3.md) |  | [optional] [readonly] 
**email** | **String** |  | [optional] 
**onboarded_status** | [**OnboardedStatus2**](OnboardedStatus2.md) |  | [optional] 
**watchlist_status** | [**WatchlistStatus**](WatchlistStatus.md) |  | [optional] 
**watchlist_status_updated_timestamp** | **String** |  | [optional] [readonly] 
**watchlist_override_comment** | **String** |  | [optional] 
**language** | [**Language2**](Language2.md) |  | [optional] 
**created** | **DateTime** |  | [optional] 
**country** | **String** |  | [optional] 
**display_name** | **String** |  | [optional] 
**payee_type** | [**PayeeType**](PayeeType.md) |  | [optional] 
**disabled** | **Boolean** |  | [optional] 
**disabled_comment** | **String** |  | [optional] 
**disabled_updated_timestamp** | **DateTime** |  | [optional] 
**individual** | [**GetPayeeListResponseIndividual**](GetPayeeListResponseIndividual.md) |  | [optional] 
**company** | [**GetPayeeListResponseCompany**](GetPayeeListResponseCompany.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPayeeListResponse.new(payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
                                 payor_refs: null,
                                 email: bob@example.com,
                                 onboarded_status: null,
                                 watchlist_status: null,
                                 watchlist_status_updated_timestamp: 2019-01-20T09:00:00+00:00,
                                 watchlist_override_comment: Example reason for the watchlist status being overridden,
                                 language: null,
                                 created: 2019-01-20T09:00Z,
                                 country: US,
                                 display_name: ABC,
                                 payee_type: null,
                                 disabled: null,
                                 disabled_comment: reason for disabled,
                                 disabled_updated_timestamp: 2019-01-20T09:00Z,
                                 individual: null,
                                 company: null)
```

