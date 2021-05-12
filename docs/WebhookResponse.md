# VeloPayments::WebhookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **webhook_url** | **String** |  | [optional] |
| **authorization_header** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::WebhookResponse.new(
  id: null,
  payor_id: null,
  webhook_url: null,
  authorization_header: null,
  enabled: null,
  categories: null
)
```

