# VeloPayments::Payor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | [optional] 
**payor_name** | **String** | The name of the payor. | 
**address** | [**Address**](Address.md) |  | [optional] 
**primary_contact_name** | **String** | Name of primary contact for the payor. | [optional] 
**primary_contact_phone** | **String** | Primary contact phone number for the payor. | [optional] 
**primary_contact_email** | **String** | Primary contact email for the payor. | [optional] 
**funding_account_routing_number** | **String** | The funding account routing number to be used for the payor. | [optional] 
**funding_account_account_number** | **String** | The funding account number to be used for the payor. | [optional] 
**funding_account_account_name** | **String** | The funding account name to be used for the payor. | [optional] 
**kyc_state** | **String** | The kyc state of the payor. | [optional] 
**manual_lockout** | **Boolean** | Whether or not the payor has been manually locked by the backoffice. | [optional] 
**payee_grace_period_processing_enabled** | **Boolean** | Whether grace period processing is enabled. | [optional] 
**payee_grace_period_days** | **Integer** | The grace period for paying payees in days. | [optional] 
**collective_alias** | **String** | How the payor has chosen to refer to payees. | [optional] 
**support_contact** | **String** | The payor’s support contact address. | [optional] 
**dba_name** | **String** | The payor’s &#39;Doing Business As&#39; name. | [optional] 
**allows_language_choice** | **Boolean** | Whether or not the payor allows language choice in the UI. | [optional] 
**reminder_emails_opt_out** | **Boolean** | Whether or not the payor has opted-out of reminder emails being sent. | [optional] 
**language** | **String** | The payor’s language preference. Must be one of [EN, FR]. | [optional] 
**includes_reports** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::Payor.new(payor_id: null,
                                 payor_name: null,
                                 address: null,
                                 primary_contact_name: null,
                                 primary_contact_phone: null,
                                 primary_contact_email: null,
                                 funding_account_routing_number: null,
                                 funding_account_account_number: null,
                                 funding_account_account_name: null,
                                 kyc_state: null,
                                 manual_lockout: null,
                                 payee_grace_period_processing_enabled: null,
                                 payee_grace_period_days: null,
                                 collective_alias: null,
                                 support_contact: null,
                                 dba_name: null,
                                 allows_language_choice: null,
                                 reminder_emails_opt_out: null,
                                 language: null,
                                 includes_reports: null)
```


