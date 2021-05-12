# VeloPayments::PayorCreateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for the key. |  |
| **description** | **String** | Description of the key. | [optional] |
| **roles** | **Array&lt;String&gt;** | A list of roles to assign to the key. |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorCreateApiKeyRequest.new(
  name: iOS Key,
  description: Key for iOS mobile application,
  roles: [&quot;payor.admin&quot;]
)
```

