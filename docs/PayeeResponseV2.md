# VeloPayments::PayeeResponseV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | [optional] [readonly] 
**payor_refs** | [**Array&lt;PayeePayorRefV2&gt;**](PayeePayorRefV2.md) |  | [optional] [readonly] 
**email** | **String** |  | [optional] 
**onboarded_status** | [**OnboardedStatus2**](OnboardedStatus2.md) |  | [optional] 
**ofac_status** | [**OfacStatus2**](OfacStatus2.md) |  | [optional] 
**language** | [**Language2**](Language2.md) |  | [optional] 
**created** | **DateTime** |  | [optional] 
**country** | **String** |  | [optional] 
**display_name** | **String** |  | [optional] 
**payee_type** | [**PayeeType**](PayeeType.md) |  | [optional] 
**disabled** | **Boolean** |  | [optional] 
**disabled_comment** | **String** |  | [optional] 
**disabled_updated_timestamp** | **DateTime** |  | [optional] 
**address** | [**PayeeAddress2**](PayeeAddress2.md) |  | [optional] 
**individual** | [**Individual**](Individual.md) |  | [optional] 
**company** | [**Company**](Company.md) |  | [optional] 
**cellphone_number** | **String** |  | [optional] 
**last_ofac_check_timestamp** | **String** |  | [optional] [readonly] 
**ofac_override** | **Boolean** |  | [optional] 
**ofac_override_reason** | **String** |  | [optional] 
**ofac_override_timestamp** | **String** |  | [optional] 
**grace_period_end_date** | **Date** |  | [optional] [readonly] 
**enhanced_kyc_completed** | **Boolean** |  | [optional] 
**kyc_completed_timestamp** | **String** |  | [optional] 
**pause_payment** | **Boolean** |  | [optional] 
**pause_payment_timestamp** | **String** |  | [optional] 
**marketing_opt_in_decision** | **Boolean** |  | [optional] 
**marketing_opt_in_timestamp** | **String** |  | [optional] 
**accept_terms_and_conditions_timestamp** | **DateTime** | The timestamp when the payee last accepted T&amp;Cs | [optional] [readonly] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayeeResponseV2.new(payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
                                 payor_refs: null,
                                 email: bob@example.com,
                                 onboarded_status: null,
                                 ofac_status: null,
                                 language: null,
                                 created: 2019-01-20T09:00Z,
                                 country: US,
                                 display_name: Bob,
                                 payee_type: null,
                                 disabled: null,
                                 disabled_comment: reason for disabled,
                                 disabled_updated_timestamp: 2019-01-20T09:00Z,
                                 address: null,
                                 individual: null,
                                 company: null,
                                 cellphone_number: 1234567890,
                                 last_ofac_check_timestamp: 2019-01-20T09:00:00+00:00,
                                 ofac_override: null,
                                 ofac_override_reason: ofac override reason,
                                 ofac_override_timestamp: 2019-01-20T09:00:00+00:00,
                                 grace_period_end_date: Sun Jan 20 00:00:00 GMT 2019,
                                 enhanced_kyc_completed: null,
                                 kyc_completed_timestamp: 2019-01-20T09:00:00+00:00,
                                 pause_payment: null,
                                 pause_payment_timestamp: 2019-01-20T09:00:00+00:00,
                                 marketing_opt_in_decision: null,
                                 marketing_opt_in_timestamp: 2019-01-20T09:00:00+00:00,
                                 accept_terms_and_conditions_timestamp: 2019-01-20T09:00Z)
```


