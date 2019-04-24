# VeloPayments::PayorCreateApiKeyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | A name for the key. | 
**description** | **String** | Description of the key. | [optional] 
**roles** | **Array&lt;String&gt;** | A list of roles to assign to the key. | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayorCreateApiKeyRequest.new(name: null,
                                 description: null,
                                 roles: null)
```

