# VeloPayments::PagedPayeeResponseV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**PagedPayeeResponseV3Summary**](PagedPayeeResponseV3Summary.md) |  | [optional] |
| **page** | [**PagedPayeeResponseV3Page**](PagedPayeeResponseV3Page.md) |  | [optional] |
| **links** | [**Array&lt;PagedPayeeResponseV3Links&gt;**](PagedPayeeResponseV3Links.md) |  | [optional] |
| **content** | [**Array&lt;GetPayeeListResponseV3&gt;**](GetPayeeListResponseV3.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeResponseV3.new(
  summary: null,
  page: null,
  links: null,
  content: null
)
```

