# VeloPayments::PayorCreateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for the key. |  |
| **description** | **String** | Description of the key. | [optional] |
| **roles** | **Array&lt;String&gt;** | &lt;p&gt;A list of roles to assign to the key.&lt;/p&gt; &lt;p&gt;Only the first role name will be used&lt;/p&gt; &lt;p&gt;A later version will change this from a list to string&lt;/p&gt;  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorCreateApiKeyRequest.new(
  name: iOS Key,
  description: Key for iOS mobile application,
  roles: [&quot;payor.admin&quot;]
)
```

