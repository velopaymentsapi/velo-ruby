# VeloPayments::CreatePayeesRequestV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **payees** | [**Array&lt;CreatePayeeV4&gt;**](CreatePayeeV4.md) |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeesRequestV4.new(
  payor_id: 9ac75325-5dcd-42d5-b992-175d7e0a035e,
  payees: null
)
```

