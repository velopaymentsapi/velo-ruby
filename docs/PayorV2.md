# VeloPayments::PayorV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | [optional] 
**payor_name** | **String** | The name of the payor. | 
**address** | [**Address**](Address.md) |  | [optional] 
**primary_contact_name** | **String** | Name of primary contact for the payor. | [optional] 
**primary_contact_phone** | **String** | Primary contact phone number for the payor. | [optional] 
**primary_contact_email** | **String** | Primary contact email for the payor. | [optional] 
**kyc_state** | **String** | The kyc state of the payor. | [optional] 
**manual_lockout** | **Boolean** | Whether or not the payor has been manually locked by the backoffice. | [optional] 
**payee_grace_period_processing_enabled** | **Boolean** | Whether grace period processing is enabled. | [optional] 
**payee_grace_period_days** | **Integer** | The grace period for paying payees in days. | [optional] 
**collective_alias** | **String** | How the payor has chosen to refer to payees. | [optional] 
**support_contact** | **String** | The payor’s support contact email address. | [optional] 
**dba_name** | **String** | The payor’s &#39;Doing Business As&#39; name. | [optional] 
**allows_language_choice** | **Boolean** | Whether or not the payor allows language choice in the UI. | [optional] 
**reminder_emails_opt_out** | **Boolean** | Whether or not the payor has opted-out of reminder emails being sent. | [optional] 
**language** | **String** | The payor’s language preference. Must be one of [EN, FR]. | [optional] 
**includes_reports** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayorV2.new(payor_id: null,
                                 payor_name: Example, Corp,
                                 address: null,
                                 primary_contact_name: Joe Buck,
                                 primary_contact_phone: 123-123-1234,
                                 primary_contact_email: joe.buck@example.com,
                                 kyc_state: PASSED_KYC,
                                 manual_lockout: null,
                                 payee_grace_period_processing_enabled: null,
                                 payee_grace_period_days: null,
                                 collective_alias: Payee,
                                 support_contact: support@example.com,
                                 dba_name: Some Biz,
                                 allows_language_choice: null,
                                 reminder_emails_opt_out: null,
                                 language: EN,
                                 includes_reports: null)
```

