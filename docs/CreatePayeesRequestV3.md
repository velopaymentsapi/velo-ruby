# VeloPayments::CreatePayeesRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **payees** | [**Array&lt;CreatePayeeV3&gt;**](CreatePayeeV3.md) |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeesRequestV3.new(
  payor_id: 9ac75325-5dcd-42d5-b992-175d7e0a035e,
  payees: null
)
```

