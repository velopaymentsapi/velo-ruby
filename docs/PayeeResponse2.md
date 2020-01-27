# VeloPayments::PayeeResponse2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | [optional] [readonly] 
**payor_refs** | [**Array&lt;PayeePayorRefV3&gt;**](PayeePayorRefV3.md) |  | [optional] [readonly] 
**email** | **String** |  | [optional] 
**address** | [**PayeeAddress**](PayeeAddress.md) |  | [optional] 
**country** | **String** |  | [optional] 
**display_name** | **String** |  | [optional] 
**payment_channel** | [**PayeePaymentChannel**](PayeePaymentChannel.md) |  | [optional] 
**challenge** | [**Challenge**](Challenge.md) |  | [optional] 
**language** | [**Language**](Language.md) |  | [optional] 
**accept_terms_and_conditions_timestamp** | **DateTime** | The timestamp when the payee last accepted T&amp;Cs | [optional] [readonly] 
**cellphone_number** | **String** |  | [optional] 
**payee_type** | [**PayeeType**](PayeeType.md) |  | [optional] 
**company** | [**CompanyResponse**](CompanyResponse.md) |  | [optional] 
**individual** | [**IndividualResponse**](IndividualResponse.md) |  | [optional] 
**created** | **DateTime** |  | [optional] 
**grace_period_end_date** | **Date** |  | [optional] [readonly] 
**watchlist_status_updated_timestamp** | **String** |  | [optional] [readonly] 
**marketing_opt_ins** | [**Array&lt;MarketingOptIn&gt;**](MarketingOptIn.md) |  | [optional] 
**watchlist_status** | [**WatchlistStatus**](WatchlistStatus.md) |  | [optional] 
**onboarded_status** | [**OnboardedStatus**](OnboardedStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeResponse2.new(payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
                                 payor_refs: null,
                                 email: bob@example.com,
                                 address: null,
                                 country: US,
                                 display_name: ABC,
                                 payment_channel: null,
                                 challenge: null,
                                 language: null,
                                 accept_terms_and_conditions_timestamp: 2019-01-20T09:00Z,
                                 cellphone_number: 1234567890,
                                 payee_type: null,
                                 company: null,
                                 individual: null,
                                 created: 2019-01-20T09:00Z,
                                 grace_period_end_date: Sun Jan 20 00:00:00 GMT 2019,
                                 watchlist_status_updated_timestamp: 2019-01-20T09:00:00+00:00,
                                 marketing_opt_ins: null,
                                 watchlist_status: null,
                                 onboarded_status: null)
```


