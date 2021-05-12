# VeloPayments::ErrorData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The description of the error data content | [optional] |
| **content** | **Object** | Object containing typed error data specific to the API | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ErrorData.new(
  description: The rejected CSV rows,
  content: null
)
```

