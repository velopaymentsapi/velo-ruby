# VeloPayments::PayeeDetailResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRefV4&gt;**](PayeePayorRefV4.md) |  | [optional][readonly] |
| **email** | **String** |  | [optional] |
| **onboarded_status** | **String** | Payee onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED | [optional] |
| **watchlist_status** | **String** | Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED | [optional] |
| **watchlist_override_expires_at_timestamp** | **Time** |  | [optional] |
| **watchlist_override_comment** | **String** |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **created** | **Time** |  | [optional] |
| **country** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **payee_type** | **String** | Type of Payee. One of the following values: Individual, Company | [optional] |
| **disabled** | **Boolean** |  | [optional] |
| **disabled_comment** | **String** |  | [optional] |
| **disabled_updated_timestamp** | **Time** |  | [optional] |
| **address** | [**PayeeAddressV4**](PayeeAddressV4.md) |  | [optional] |
| **individual** | [**IndividualV4**](IndividualV4.md) |  | [optional] |
| **company** | [**CompanyV4**](CompanyV4.md) |  | [optional] |
| **cellphone_number** | **String** |  | [optional] |
| **watchlist_status_updated_timestamp** | **String** |  | [optional][readonly] |
| **grace_period_end_date** | **Date** |  | [optional][readonly] |
| **enhanced_kyc_completed** | **Boolean** |  | [optional] |
| **kyc_completed_timestamp** | **String** |  | [optional] |
| **pause_payment** | **Boolean** |  | [optional] |
| **pause_payment_timestamp** | **String** |  | [optional] |
| **marketing_opt_in_decision** | **Boolean** |  | [optional] |
| **marketing_opt_in_timestamp** | **String** |  | [optional] |
| **accept_terms_and_conditions_timestamp** | **Time** | The timestamp when the payee last accepted T&amp;Cs | [optional][readonly] |
| **challenge** | [**ChallengeV4**](ChallengeV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeDetailResponseV4.new(
  payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
  payor_refs: null,
  email: bob@example.com,
  onboarded_status: null,
  watchlist_status: null,
  watchlist_override_expires_at_timestamp: 2019-01-20T09:00Z,
  watchlist_override_comment: watchlist override comment,
  language: en-US,
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
  watchlist_status_updated_timestamp: 2019-01-20T09:00:00+00:00,
  grace_period_end_date: Sun Jan 20 00:00:00 UTC 2019,
  enhanced_kyc_completed: null,
  kyc_completed_timestamp: 2019-01-20T09:00:00+00:00,
  pause_payment: null,
  pause_payment_timestamp: 2019-01-20T09:00:00+00:00,
  marketing_opt_in_decision: null,
  marketing_opt_in_timestamp: 2019-01-20T09:00:00+00:00,
  accept_terms_and_conditions_timestamp: 2019-01-20T09:00Z,
  challenge: null
)
```

