# VeloPayments::PayorV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [readonly] |
| **payor_name** | **String** | The name of the payor. |  |
| **payor_xid** | **String** | A unique identifier that an external system uses to reference the payor in their system | [optional] |
| **provider** | **String** | The source of the payorXid, default is null which means Velo | [optional] |
| **address** | [**PayorAddressV2**](PayorAddressV2.md) |  | [optional] |
| **primary_contact_name** | **String** | Name of primary contact for the payor. | [optional] |
| **primary_contact_phone** | **String** | Primary contact phone number for the payor. | [optional] |
| **primary_contact_email** | **String** | Primary contact email for the payor. | [optional] |
| **kyc_state** | **String** | The kyc state of the payor. One of the following values: FAILED_KYC, PASSED_KYC, REQUIRES_KYC | [optional][readonly] |
| **manual_lockout** | **Boolean** | Whether or not the payor has been manually locked by the backoffice. | [optional] |
| **open_banking_enabled** | **Boolean** | Is Open Banking supported for this payor | [optional] |
| **payee_grace_period_processing_enabled** | **Boolean** | Whether grace period processing is enabled. | [optional][readonly] |
| **payee_grace_period_days** | **Integer** | The grace period for paying payees in days. | [optional][readonly] |
| **collective_alias** | **String** | How the payor has chosen to refer to payees. | [optional] |
| **support_contact** | **String** | The payor’s support contact email address. | [optional] |
| **dba_name** | **String** | The payor’s &#39;Doing Business As&#39; name. | [optional] |
| **allows_language_choice** | **Boolean** | Whether or not the payor allows language choice in the UI. | [optional] |
| **reminder_emails_opt_out** | **Boolean** | Whether or not the payor has opted-out of reminder emails being sent. | [optional][readonly] |
| **language** | **String** | The payor’s language preference. Must be one of [EN, FR] | [optional] |
| **includes_reports** | **Boolean** |  | [optional] |
| **wu_customer_id** | **String** |  | [optional] |
| **max_master_payor_admins** | **Integer** |  | [optional] |
| **payment_rails** | **String** | The id of the payment rails | [optional] |
| **transmission_types** | [**TransmissionTypes2**](TransmissionTypes2.md) |  | [optional] |
| **remote_system_ids** | **Array&lt;String&gt;** | The payor’s supported remote systems by id | [optional] |
| **usd_txn_value_reporting_threshold** | **Integer** | USD in minor units | [optional] |
| **managing_payees** | **Boolean** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorV2.new(
  payor_id: null,
  payor_name: Example, Corp,
  payor_xid: ABC_201234,
  provider: null,
  address: null,
  primary_contact_name: Joe Buck,
  primary_contact_phone: 123-123-1234,
  primary_contact_email: joe.buck@example.com,
  kyc_state: PASSED_KYC,
  manual_lockout: null,
  open_banking_enabled: null,
  payee_grace_period_processing_enabled: null,
  payee_grace_period_days: null,
  collective_alias: Payee,
  support_contact: support@example.com,
  dba_name: Some Biz,
  allows_language_choice: null,
  reminder_emails_opt_out: null,
  language: EN,
  includes_reports: null,
  wu_customer_id: null,
  max_master_payor_admins: null,
  payment_rails: null,
  transmission_types: null,
  remote_system_ids: null,
  usd_txn_value_reporting_threshold: 1000000,
  managing_payees: null
)
```

