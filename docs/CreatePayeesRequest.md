# VeloPayments::CreatePayeesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **payees** | [**Array&lt;CreatePayee&gt;**](CreatePayee.md) |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeesRequest.new(
  payor_id: 9ac75325-5dcd-42d5-b992-175d7e0a035e,
  payees: null
)
```

