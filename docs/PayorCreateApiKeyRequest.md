# VeloPayments::PayorCreateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for the key. |  |
| **description** | **String** | Description of the key. | [optional] |
| **roles** | **Array&lt;String&gt;** | &lt;p&gt;A role to assign to the key.&lt;/p&gt; &lt;p&gt;If you want your API key to have write access then assign the role velo.payor.admin&lt;/p&gt; &lt;p&gt;A later version will change this property from a list to string&lt;/p&gt;  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorCreateApiKeyRequest.new(
  name: SAP Key 01,
  description: An API Key for the SAP Application,
  roles: [&quot;payor.admin&quot;]
)
```

