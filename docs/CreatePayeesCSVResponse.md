# VeloPayments::CreatePayeesCSVResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** |  | [optional] |
| **rejected_csv_rows** | [**Array&lt;CreatePayeesCSVResponseRejectedCsvRows&gt;**](CreatePayeesCSVResponseRejectedCsvRows.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeesCSVResponse.new(
  batch_id: cb6ff8c6-85e9-45a6-b7d9-d05305db67f3,
  rejected_csv_rows: null
)
```

