# VeloPayments::UpdateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_url** | **String** | the webhook URL to use. | [optional] |
| **authorization_header** | **String** | the authorization header to include with the notification. | [optional] |
| **enabled** | **Boolean** | whether the webhook is enabled. | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | The notification categories to enable. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UpdateWebhookRequest.new(
  webhook_url: null,
  authorization_header: null,
  enabled: null,
  categories: null
)
```

