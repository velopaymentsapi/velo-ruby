# VeloPayments::AccessTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | Bearer token used in headers to access secure endpoints  | [optional] 
**token_type** | **String** | the type of the token | [optional] [default to &#39;bearer&#39;]
**refresh_token** | **String** | can be used to obtain a new access token | [optional] 
**expires_in** | **Integer** | The lifetime in seconds of the access token | [optional] 
**scope** | **String** | the scope of the access token | [optional] 
**user_info** | [**UserInfo**](UserInfo.md) |  | [optional] 
**entity_ids** | **Array&lt;String&gt;** | If the user is a payee then the payeeId&lt;P&gt; If the user is a payor then the payorId  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::AccessTokenResponse.new(access_token: 9b58410b-e1b7-4f90-bebb-7e09c5427020,
                                 token_type: bearer,
                                 refresh_token: c3d0f771-0997-4814-84e3-09690208545a,
                                 expires_in: 1800,
                                 scope: https://api.velopayments.com/scopes/auth/users,
                                 user_info: null,
                                 entity_ids: [&quot;ed89eaa0-4450-4916-a4ff-62a328d60bd6&quot;])
```


