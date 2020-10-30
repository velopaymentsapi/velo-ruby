# VeloPayments::Payee2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**payee_id** | **String** |  | [optional] [readonly] 
**payor_refs** | [**Array&lt;PayeePayorRefV2&gt;**](PayeePayorRefV2.md) |  | [optional] [readonly] 
**email** | **String** |  | [optional] 
**address** | [**PayeeAddress**](PayeeAddress.md) |  | [optional] 
**country** | **String** |  | [optional] 
**display_name** | **String** |  | [optional] 
**payment_channel** | [**PayeePaymentChannel2**](PayeePaymentChannel2.md) |  | [optional] 
**challenge** | [**Challenge**](Challenge.md) |  | [optional] 
**language** | [**Language2**](Language2.md) |  | [optional] 
**accept_terms_and_conditions_timestamp** | **Time** | The timestamp when the payee last accepted T&amp;Cs | [optional] [readonly] 
**cellphone_number** | **String** |  | [optional] 
**payee_type** | [**PayeeType**](PayeeType.md) |  | [optional] 
**company** | [**CompanyV1**](CompanyV1.md) |  | [optional] 
**individual** | [**IndividualV1**](IndividualV1.md) |  | [optional] 
**created** | **Time** |  | [optional] 
**grace_period_end_date** | **Date** |  | [optional] [readonly] 
**watchlist_status_updated_timestamp** | **String** |  | [optional] [readonly] 
**marketing_opt_ins** | [**Array&lt;MarketingOptIn&gt;**](MarketingOptIn.md) |  | [optional] 
**onboarded_status** | [**OnboardedStatus**](OnboardedStatus.md) |  | [optional] 
**remote_id** | **String** | Remote Id must be between 1 and 100 characters long | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::Payee2.new(type: null,
                                 payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
                                 payor_refs: null,
                                 email: bob@example.com,
                                 address: null,
                                 country: US,
                                 display_name: Bob,
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
                                 onboarded_status: null,
                                 remote_id: remoteId123)
```


