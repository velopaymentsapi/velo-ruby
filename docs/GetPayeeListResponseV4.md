# VeloPayments::GetPayeeListResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRefV4&gt;**](PayeePayorRefV4.md) |  | [optional][readonly] |
| **email** | **String** |  | [optional] |
| **onboarded_status** | **String** | Payee onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED | [optional] |
| **watchlist_status** | **String** | Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED | [optional] |
| **watchlist_status_updated_timestamp** | **String** |  | [optional][readonly] |
| **watchlist_override_comment** | **String** |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **created** | **Time** |  | [optional] |
| **country** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |
| **display_name** | **String** |  | [optional] |
| **payee_type** | **String** | Type of Payee. One of the following values: Individual, Company | [optional] |
| **disabled** | **Boolean** |  | [optional] |
| **disabled_comment** | **String** |  | [optional] |
| **disabled_updated_timestamp** | **Time** |  | [optional] |
| **managed_by_payor_id** | **String** | The id of the payor if the payee is managed | [optional] |
| **individual** | [**GetPayeeListResponseIndividualV4**](GetPayeeListResponseIndividualV4.md) |  | [optional] |
| **company** | [**GetPayeeListResponseCompanyV4**](GetPayeeListResponseCompanyV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPayeeListResponseV4.new(
  payee_id: 2aa5d7e0-2ecb-403f-8494-1865ed0454e9,
  payor_refs: null,
  email: bob@example.com,
  onboarded_status: null,
  watchlist_status: null,
  watchlist_status_updated_timestamp: 2019-01-20T09:00:00+00:00,
  watchlist_override_comment: Example reason for the watchlist status being overridden,
  language: en-US,
  created: 2019-01-20T09:00Z,
  country: US,
  display_name: ABC,
  payee_type: null,
  disabled: null,
  disabled_comment: reason for disabled,
  disabled_updated_timestamp: 2019-01-20T09:00Z,
  managed_by_payor_id: a2967711-df07-41e5-b5ea-0f563088911c,
  individual: null,
  company: null
)
```

