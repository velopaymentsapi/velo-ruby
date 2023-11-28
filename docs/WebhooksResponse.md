# VeloPayments::WebhooksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**CommonPageObject**](CommonPageObject.md) |  | [optional] |
| **links** | [**Array&lt;CommonLinkObject&gt;**](CommonLinkObject.md) |  | [optional] |
| **content** | [**Array&lt;WebhookResponse&gt;**](WebhookResponse.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::WebhooksResponse.new(
  page: null,
  links: null,
  content: null
)
```

