# VeloPayments::PagedPayeeResponseV3Page

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_elements** | **Integer** |  | [optional] |
| **total_elements** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PagedPayeeResponseV3Page.new(
  number_of_elements: 10,
  total_elements: 10,
  total_pages: 10,
  page: 10,
  page_size: 10
)
```
