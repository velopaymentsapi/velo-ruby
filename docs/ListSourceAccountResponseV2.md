# VeloPayments::ListSourceAccountResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PagedUserResponsePage**](PagedUserResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;ListSourceAccountResponseV2Links&gt;**](ListSourceAccountResponseV2Links.md) |  | [optional] |
| **content** | [**Array&lt;SourceAccountResponseV2&gt;**](SourceAccountResponseV2.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::ListSourceAccountResponseV2.new(
  page: null,
  links: null,
  content: null
)
```

