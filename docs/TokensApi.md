# VeloPayments::TokensApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_otp**](TokensApi.md#generate_otp) | **POST** /v1/tokens/{tokenId}/otp | Generate an OTP
[**generate_otp_for_sms**](TokensApi.md#generate_otp_for_sms) | **POST** /v1/tokens/{tokenId}/otp/generate | Send an OTP to SMS Users
[**get_qr_code_for_mfa**](TokensApi.md#get_qr_code_for_mfa) | **GET** /v1/tokens/{tokenId}/mfa/qrcode | Get a QR Code image
[**get_verification_token_by_id**](TokensApi.md#get_verification_token_by_id) | **GET** /v1/tokens/{tokenId} | Get Token
[**register_mfa**](TokensApi.md#register_mfa) | **POST** /v1/tokens/{tokenId}/mfa/register | Register an MFA Device
[**resend_token**](TokensApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token
[**submit_password**](TokensApi.md#submit_password) | **POST** /v1/tokens/{tokenId}/password | Submit a password
[**unlock_account_with_token**](TokensApi.md#unlock_account_with_token) | **POST** /v1/tokens/{tokenId}/password/lockout | Unlock the user
[**validate_mfa**](TokensApi.md#validate_mfa) | **POST** /v1/tokens/{tokenId}/mfa/validate | Validate an MFA Device
[**validate_otp**](TokensApi.md#validate_otp) | **POST** /v1/tokens/{tokenId}/otp/validate | Validate an OTP
[**validate_password**](TokensApi.md#validate_password) | **POST** /v1/tokens/{tokenId}/password/validate | Validate the proposed password



## generate_otp

> generate_otp(token_id, generate_otp_request)

Generate an OTP

Generate an OTP and send to the MFA type specified in the request body 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
generate_otp_request = VeloPayments::GenerateOTPRequest.new # GenerateOTPRequest | The MFA type to send the generated OTP to

begin
  #Generate an OTP
  api_instance.generate_otp(token_id, generate_otp_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->generate_otp: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **generate_otp_request** | [**GenerateOTPRequest**](GenerateOTPRequest.md)| The MFA type to send the generated OTP to | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_otp_for_sms

> generate_otp_for_sms(token_id)

Send an OTP to SMS Users

<p>Generate an OTP and send to the SMS device if the user</p> <p>Only users who have SMS as their registered MFA device will receive an OTP</p> <p>Used in conjuction with endpoints that require the Velo-OTP header</p> 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token

begin
  #Send an OTP to SMS Users
  api_instance.generate_otp_for_sms(token_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->generate_otp_for_sms: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_qr_code_for_mfa

> File get_qr_code_for_mfa(token_id, opts)

Get a QR Code image

<p>Get a QR Code for an MFA device that supports it </p> <p>The device must have first been registered</p> 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
opts = {
  width: 56, # Integer | The width of the image 
  height: 56 # Integer | The height of the image 
}

begin
  #Get a QR Code image
  result = api_instance.get_qr_code_for_mfa(token_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->get_qr_code_for_mfa: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **width** | **Integer**| The width of the image  | [optional] 
 **height** | **Integer**| The height of the image  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png, application/json


## get_verification_token_by_id

> CheckTokenResponse get_verification_token_by_id(token_id)

Get Token

Get a Single Verification Token by Id. 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token

begin
  #Get Token
  result = api_instance.get_verification_token_by_id(token_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->get_verification_token_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 

### Return type

[**CheckTokenResponse**](CheckTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_mfa

> RegisterMFAResponse register_mfa(token_id, register_mfa_request)

Register an MFA Device

<p>Some MFA Devices based on TOTP require a registration step (Authy, Authenticator) </p> <p>Registering the device will create a shared secret that the MFA device uses to generate OTPs</p> 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
register_mfa_request = VeloPayments::RegisterMFARequest.new # RegisterMFARequest | The MFA Type to register

begin
  #Register an MFA Device
  result = api_instance.register_mfa(token_id, register_mfa_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->register_mfa: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **register_mfa_request** | [**RegisterMFARequest**](RegisterMFARequest.md)| The MFA Type to register | 

### Return type

[**RegisterMFAResponse**](RegisterMFAResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_token

> resend_token(user_id, resend_token_request)

Resend a token

<p>Resend the specified token </p> <p>The token to resend must already exist for the user </p> <p>It will be revoked and a new one issued</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::TokensApi.new
user_id = 'user_id_example' # String | The UUID of the User.
resend_token_request = VeloPayments::ResendTokenRequest.new # ResendTokenRequest | The type of token to resend

begin
  #Resend a token
  api_instance.resend_token(user_id, resend_token_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->resend_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 
 **resend_token_request** | [**ResendTokenRequest**](ResendTokenRequest.md)| The type of token to resend | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submit_password

> AccessTokenResponse submit_password(token_id, password_request, opts)

Submit a password

Submit a password 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
password_request = VeloPayments::PasswordRequest.new # PasswordRequest | The password
opts = {
  velo_otp: 'velo_otp_example' # String | required when updating password using reset password <P> The OTP is supplied by the users MFA device 
}

begin
  #Submit a password
  result = api_instance.submit_password(token_id, password_request, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->submit_password: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **password_request** | [**PasswordRequest**](PasswordRequest.md)| The password | 
 **velo_otp** | **String**| required when updating password using reset password &lt;P&gt; The OTP is supplied by the users MFA device  | [optional] 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unlock_account_with_token

> unlock_account_with_token(token_id)

Unlock the user

<p>When a user is locked out of their account due to execeding the limit of login attempts</p> <p>They can use a token to unlock their account </p> <p>Submitting the token will unlock the account associated with the token</p> 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token

begin
  #Unlock the user
  api_instance.unlock_account_with_token(token_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->unlock_account_with_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_mfa

> AccessTokenResponse validate_mfa(token_id, validate_mfa_request)

Validate an MFA Device

<p>Validate the user's registered MFA device with an OTP </p> <p>The response will be different based on the token type against which the MFA is validated </p> <p>For INVITE_MFA_USER tokens the response will be 200 and an access token will be returned i the response </p> <p>For MFA_REGISTRATION tokens the response will be 204</p> 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
validate_mfa_request = VeloPayments::ValidateMFARequest.new # ValidateMFARequest | The OTP generated or received by the device

begin
  #Validate an MFA Device
  result = api_instance.validate_mfa(token_id, validate_mfa_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->validate_mfa: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **validate_mfa_request** | [**ValidateMFARequest**](ValidateMFARequest.md)| The OTP generated or received by the device | 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_otp

> validate_otp(token_id, validate_otp_request)

Validate an OTP

<p>Validate the OTP </p> <p>The token that was used in the request will be revoked and a new token issued </p> <p>The new token link will be returned in a location header</p> <p>If there are too many invalid OTP requests the token may be disabled</p> 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
validate_otp_request = VeloPayments::ValidateOTPRequest.new # ValidateOTPRequest | The OTP generated and sent to the device

begin
  #Validate an OTP
  api_instance.validate_otp(token_id, validate_otp_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->validate_otp: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **validate_otp_request** | [**ValidateOTPRequest**](ValidateOTPRequest.md)| The OTP generated and sent to the device | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_password

> ValidatePasswordResponse validate_password(token_id, password_request)

Validate the proposed password

validate the password and return a score 

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::TokensApi.new
token_id = 'token_id_example' # String | The UUID of the Token
password_request = VeloPayments::PasswordRequest.new # PasswordRequest | The password

begin
  #Validate the proposed password
  result = api_instance.validate_password(token_id, password_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling TokensApi->validate_password: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | [**String**](.md)| The UUID of the Token | 
 **password_request** | [**PasswordRequest**](PasswordRequest.md)| The password | 

### Return type

[**ValidatePasswordResponse**](ValidatePasswordResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

