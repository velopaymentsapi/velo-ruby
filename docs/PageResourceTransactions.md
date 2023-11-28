# VeloPayments::PageResourceTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**Array&lt;LinkForResponse&gt;**](LinkForResponse.md) |  | [optional] |
| **page** | [**PageForResponse**](PageForResponse.md) |  | [optional] |
| **content** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PageResourceTransactions.new(
  links: null,
  page: null,
  content: null
)
```

