# VeloPayments::GetPayoutsResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**GetPayoutsResponseV3Page**](GetPayoutsResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;GetPayoutsResponseV3Links&gt;**](GetPayoutsResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;PayoutSummaryAuditV3&gt;**](PayoutSummaryAuditV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::GetPayoutsResponseV3.new(
  page: null,
  links: null,
  content: null
)
```

