# VeloPayments::PagedPayeeResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**PagedPayeeResponseV3Summary**](PagedPayeeResponseV3Summary.md) |  | [optional] |
| **page** | [**PagedPayeeResponseV3Page**](PagedPayeeResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;GetPayeeListResponseV4&gt;**](GetPayeeListResponseV4.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeResponseV4.new(
  summary: null,
  page: null,
  links: null,
  content: null
)
```

