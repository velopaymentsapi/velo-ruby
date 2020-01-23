# VeloPayments::LoginApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logout**](LoginApi.md#logout) | **POST** /v1/logout | Logout
[**reset_password**](LoginApi.md#reset_password) | **POST** /v1/password/reset | Reset password
[**validate_access_token**](LoginApi.md#validate_access_token) | **POST** /v1/validate | validate
[**velo_auth**](LoginApi.md#velo_auth) | **POST** /v1/authenticate | Authentication endpoint



## logout

> logout

Logout

<p>Given a valid access token in the header then log out the authenticated user or client </p> <p>Will revoke the token</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::LoginApi.new

begin
  #Logout
  api_instance.logout
rescue VeloPayments::ApiError => e
  puts "Exception when calling LoginApi->logout: #{e}"
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

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::LoginApi.new
reset_password_request = VeloPayments::ResetPasswordRequest.new # ResetPasswordRequest | An Email address to send the reset password link to

begin
  #Reset password
  api_instance.reset_password(reset_password_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling LoginApi->reset_password: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reset_password_request** | [**ResetPasswordRequest**](ResetPasswordRequest.md)| An Email address to send the reset password link to | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_access_token

> AccessTokenResponse validate_access_token(access_token_validation_request)

validate

<p>The second part of login involves validating using an MFA device</p> <p>An access token with PRE_AUTH authorities is required</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::LoginApi.new
access_token_validation_request = VeloPayments::AccessTokenValidationRequest.new # AccessTokenValidationRequest | An OTP from the user's registered MFA Device 

begin
  #validate
  result = api_instance.validate_access_token(access_token_validation_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling LoginApi->validate_access_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token_validation_request** | [**AccessTokenValidationRequest**](AccessTokenValidationRequest.md)| An OTP from the user&#39;s registered MFA Device  | 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## velo_auth

> AuthResponse velo_auth(opts)

Authentication endpoint

Use this endpoint to obtain an access token for calling Velo Payments APIs. Use HTTP Basic Auth. String value of Basic and a Base64 endcoded string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret  (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. Basic 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = VeloPayments::LoginApi.new
opts = {
  grant_type: 'client_credentials' # String | OAuth grant type. Should use 'client_credentials'
}

begin
  #Authentication endpoint
  result = api_instance.velo_auth(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling LoginApi->velo_auth: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| OAuth grant type. Should use &#39;client_credentials&#39; | [optional] [default to &#39;client_credentials&#39;]

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

