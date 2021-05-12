# VeloPayments::ListFundingAccountsResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**ListSourceAccountResponsePage**](ListSourceAccountResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;ListSourceAccountResponseLinks&gt;**](ListSourceAccountResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;FundingAccountResponse2&gt;**](FundingAccountResponse2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ListFundingAccountsResponse2.new(
  page: null,
  links: null,
  content: null
)
```

