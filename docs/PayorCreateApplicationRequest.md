# VeloPayments::PayorCreateApplicationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the application. |  |
| **description** | **String** | Description of the application. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorCreateApplicationRequest.new(
  name: SAP,
  description: SAP Application integration
)
```

