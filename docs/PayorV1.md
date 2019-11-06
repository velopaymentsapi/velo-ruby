# VeloPayments::PayorV1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | [optional] [readonly] 
**payor_name** | **String** | The name of the payor. | 
**address** | [**PayorAddress**](PayorAddress.md) |  | [optional] 
**primary_contact_name** | **String** | Name of primary contact for the payor. | [optional] 
**primary_contact_phone** | **String** | Primary contact phone number for the payor. | [optional] 
**primary_contact_email** | **String** | Primary contact email for the payor. | [optional] 
**funding_account_routing_number** | **String** | The funding account routing number to be used for the payor. | [optional] 
**funding_account_account_number** | **String** | The funding account number to be used for the payor. | [optional] 
**funding_account_account_name** | **String** | The funding account name to be used for the payor. | [optional] 
**kyc_state** | **String** | The kyc state of the payor. | [optional] [readonly] 
**manual_lockout** | **Boolean** | Whether or not the payor has been manually locked by the backoffice. | [optional] 
**payee_grace_period_processing_enabled** | **Boolean** | Whether grace period processing is enabled. | [optional] [readonly] 
**payee_grace_period_days** | **Integer** | The grace period for paying payees in days. | [optional] [readonly] 
**collective_alias** | **String** | How the payor has chosen to refer to payees. | [optional] 
**support_contact** | **String** | The payor’s support contact email address. | [optional] 
**dba_name** | **String** | The payor’s &#39;Doing Business As&#39; name. | [optional] 
**allows_language_choice** | **Boolean** | Whether or not the payor allows language choice in the UI. | [optional] 
**reminder_emails_opt_out** | **Boolean** | Whether or not the payor has opted-out of reminder emails being sent. | [optional] [readonly] 
**language** | **String** | The payor’s language preference. Must be one of [EN, FR]. | [optional] 
**includes_reports** | **Boolean** |  | [optional] 
**max_master_payor_admins** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayorV1.new(payor_id: null,
                                 payor_name: Example, Corp,
                                 address: null,
                                 primary_contact_name: Joe Buck,
                                 primary_contact_phone: 123-123-1234,
                                 primary_contact_email: joe.buck@example.com,
                                 funding_account_routing_number: 123456789,
                                 funding_account_account_number: 1234567890123,
                                 funding_account_account_name: Example Corp BOA,
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
                                 includes_reports: null,
                                 max_master_payor_admins: null)
```


