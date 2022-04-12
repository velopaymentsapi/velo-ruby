# VeloPayments::CreatePayeesCSVResponseV3RejectedCsvRows

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_number** | **Integer** |  | [optional] |
| **rejected_content** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeesCSVResponseV3RejectedCsvRows.new(
  line_number: 3,
  rejected_content: unable,to,process,csv,line,
  message: rejected message 1
)
```

