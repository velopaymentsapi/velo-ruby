# VeloPayments::PayeeDeltaResponsePage

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

instance = VeloPayments::PayeeDeltaResponsePage.new(
  number_of_elements: 2,
  total_elements: 2,
  total_pages: 1,
  page: 1,
  page_size: 25
)
```

