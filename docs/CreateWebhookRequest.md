# VeloPayments::CreateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **webhook_url** | **String** | the webhook URL to use. |  |
| **authorization_header** | **String** | the authorization header to include with the notification. | [optional] |
| **enabled** | **Boolean** | whether the webhook is enabled. |  |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | the categories to enable. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreateWebhookRequest.new(
  payor_id: null,
  webhook_url: null,
  authorization_header: null,
  enabled: null,
  categories: null
)
```

