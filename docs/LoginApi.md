# VeloPayments::LoginApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**logout**](LoginApi.md#logout) | **POST** /v1/logout | Logout |
| [**reset_password**](LoginApi.md#reset_password) | **POST** /v1/password/reset | Reset password |
| [**validate_access_token**](LoginApi.md#validate_access_token) | **POST** /v1/validate | validate |
| [**velo_auth**](LoginApi.md#velo_auth) | **POST** /v1/authenticate | Authentication endpoint |


## logout

> logout

Logout

<p>Given a valid access token in the header then log out the authenticated user or client </p> <p>Will revoke the token</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::LoginApi.new

begin
  # Logout
  api_instance.logout
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info

```ruby
begin
  # Logout
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->logout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_password

> reset_password(reset_password_request)

Reset password

<p>Reset password </p> <p>An email with an embedded link will be sent to the receipient of the email address </p> <p>The link will contain a token to be used for resetting the password </p> 

### Examples

```ruby
require 'time'
require 'velopayments'

api_instance = VeloPayments::LoginApi.new
reset_password_request = VeloPayments::ResetPasswordRequest.new({email: 'foo@example.com'}) # ResetPasswordRequest | An Email address to send the reset password link to

begin
  # Reset password
  api_instance.reset_password(reset_password_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->reset_password: #{e}"
end
```

#### Using the reset_password_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_password_with_http_info(reset_password_request)

```ruby
begin
  # Reset password
  data, status_code, headers = api_instance.reset_password_with_http_info(reset_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->reset_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reset_password_request** | [**ResetPasswordRequest**](ResetPasswordRequest.md) | An Email address to send the reset password link to |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_access_token

> <AccessTokenResponse> validate_access_token(access_token_validation_request, opts)

validate

<p>The second part of login involves validating using an MFA device</p> <p>An access token with PRE_AUTH authorities is required</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::LoginApi.new
access_token_validation_request = VeloPayments::AccessTokenValidationRequest.new({otp: '123456'}) # AccessTokenValidationRequest | An OTP from the user's registered MFA Device 
opts = {
  authorization: 'authorization_example' # String | Bearer token authorization leg of validate
}

begin
  # validate
  result = api_instance.validate_access_token(access_token_validation_request, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->validate_access_token: #{e}"
end
```

#### Using the validate_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessTokenResponse>, Integer, Hash)> validate_access_token_with_http_info(access_token_validation_request, opts)

```ruby
begin
  # validate
  data, status_code, headers = api_instance.validate_access_token_with_http_info(access_token_validation_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessTokenResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->validate_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token_validation_request** | [**AccessTokenValidationRequest**](AccessTokenValidationRequest.md) | An OTP from the user&#39;s registered MFA Device  |  |
| **authorization** | **String** | Bearer token authorization leg of validate | [optional] |

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## velo_auth

> <AuthResponse> velo_auth(opts)

Authentication endpoint

<p>Use this endpoint to obtain an access token for calling Velo Payments APIs. </p> <p>You need your API key and API secret issued by Velo</p> <p>To login and get an access token the API key and API secret must be Base64 encoded by concatenating them with a colon between them</p> <p>e.g. Given an ApiKey: 44a9537d-d55d-4b47-8082-14061c2bcdd8 and ApiSecret: c396b26b-137a-44fd-87f5-34631f8fd529</p> <p>Using a Base64 encode function Base64Encoder().encode(\"44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529\")</p> <p>Included as a Basic Authorization header: -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" </p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = VeloPayments::LoginApi.new
opts = {
  grant_type: 'grant_type_example' # String | OAuth grant type. Should use 'client_credentials'
}

begin
  # Authentication endpoint
  result = api_instance.velo_auth(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->velo_auth: #{e}"
end
```

#### Using the velo_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> velo_auth_with_http_info(opts)

```ruby
begin
  # Authentication endpoint
  data, status_code, headers = api_instance.velo_auth_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling LoginApi->velo_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | OAuth grant type. Should use &#39;client_credentials&#39; | [optional][default to &#39;client_credentials&#39;] |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

