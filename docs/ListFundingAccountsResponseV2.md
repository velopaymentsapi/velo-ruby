# VeloPayments::ListFundingAccountsResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**ListFundingAccountsResponseV2Page**](ListFundingAccountsResponseV2Page.md) |  | [optional] |
| **links** | [**Array&lt;ListSourceAccountResponseV2Links&gt;**](ListSourceAccountResponseV2Links.md) |  | [optional] |
| **content** | [**Array&lt;FundingAccountResponseV2&gt;**](FundingAccountResponseV2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ListFundingAccountsResponseV2.new(
  page: null,
  links: null,
  content: null
)
```

