# VeloPayments::AuthResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** |  | 
**token_type** | **String** |  | 
**expires_in** | **Float** |  | [optional] 
**refresh_token** | **String** |  | [optional] 
**scope** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::AuthResponse.new(access_token: null,
                                 token_type: bearer,
                                 expires_in: 1799,
                                 refresh_token: IwOGYzYTlmM2YxOTQ5MGE3YmNmMDFkNTVk,
                                 scope: example_scope)
```


