# VeloPayments::PagedUserResponsePage

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

instance = VeloPayments::PagedUserResponsePage.new(
  number_of_elements: 12,
  total_elements: 33,
  total_pages: 2,
  page: 1,
  page_size: 25
)
```

