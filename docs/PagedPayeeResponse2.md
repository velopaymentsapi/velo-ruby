# VeloPayments::PagedPayeeResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**PagedPayeeResponseSummary**](PagedPayeeResponseSummary.md) |  | [optional] |
| **page** | [**PagedPayeeResponsePage**](PagedPayeeResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;GetPayeeListResponse2&gt;**](GetPayeeListResponse2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeResponse2.new(
  summary: null,
  page: null,
  links: null,
  content: null
)
```

