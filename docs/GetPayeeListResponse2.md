# VeloPayments::GetPayeeListResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  | [optional][readonly] |
| **payor_refs** | [**Array&lt;PayeePayorRef&gt;**](PayeePayorRef.md) |  | [optional][readonly] |
| **email** | **String** |  | [optional] |
| **onboarded_status** | [**OnboardedStatus**](OnboardedStatus.md) |  | [optional] |
| **watchlist_status** | [**WatchlistStatus2**](WatchlistStatus2.md) |  | [optional] |
| **watchlist_status_updated_timestamp** | **String** |  | [optional][readonly] |
| **watchlist_override_comment** | **String** |  | [optional] |
| **language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |
| **created** | **Time** |  | [optional] |
| **country** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **payee_type** | [**PayeeType**](PayeeType.md) |  | [optional] |
| **disabled** | **Boolean** |  | [optional] |
| **disabled_comment** | **String** |  | [optional] |
| **disabled_updated_timestamp** | **Time** |  | [optional] |
| **individual** | [**GetPayeeListResponseIndividual2**](GetPayeeListResponseIndividual2.md) |  | [optional] |
| **company** | [**GetPayeeListResponseCompany2**](GetPayeeListResponseCompany2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPayeeListResponse2.new(
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
  individual: null,
  company: null
)
```

