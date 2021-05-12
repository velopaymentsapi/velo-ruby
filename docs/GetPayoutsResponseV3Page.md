# VeloPayments::GetPayoutsResponseV3Page

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

instance = VeloPayments::GetPayoutsResponseV3Page.new(
  number_of_elements: 12,
  total_elements: 123,
  total_pages: 123,
  page: 1,
  page_size: 25
)
```

