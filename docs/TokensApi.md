# VeloPayments::TokensApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**resend_token**](TokensApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token |


## resend_token

> resend_token(user_id, resend_token_request)

Resend a token

<p>Resend the specified token </p> <p>The token to resend must already exist for the user </p> <p>It will be revoked and a new one issued</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::TokensApi.new
user_id = TODO # String | The UUID of the User.
resend_token_request = VeloPayments::ResendTokenRequest.new({token_type: 'INVITE_MFA_USER'}) # ResendTokenRequest | The type of token to resend

begin
  # Resend a token
  api_instance.resend_token(user_id, resend_token_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling TokensApi->resend_token: #{e}"
end
```

#### Using the resend_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_token_with_http_info(user_id, resend_token_request)

```ruby
begin
  # Resend a token
  data, status_code, headers = api_instance.resend_token_with_http_info(user_id, resend_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling TokensApi->resend_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |
| **resend_token_request** | [**ResendTokenRequest**](ResendTokenRequest.md) | The type of token to resend |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

