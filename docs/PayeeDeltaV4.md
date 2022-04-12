# VeloPayments::PayeeDeltaV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** |  |  |
| **payee_id** | **String** |  | [readonly] |
| **display_name** | **String** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **payee_country** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |
| **onboarded_status** | [**OnboardedStatusV42**](OnboardedStatusV42.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeDeltaV4.new(
  remote_id: payee_1,
  payee_id: null,
  display_name: Payee1,
  dba_name: Payee DBA Name,
  email: payee1@example.com,
  payee_country: US,
  onboarded_status: null
)
```

