# VeloPayments::UsersApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_by_id_v2**](UsersApi.md#delete_user_by_id_v2) | **DELETE** /v2/users/{userId} | Delete a User
[**disable_user_v2**](UsersApi.md#disable_user_v2) | **POST** /v2/users/{userId}/disable | Disable a User
[**email_update**](UsersApi.md#email_update) | **POST** /v2/users/{userId}/emailUpdate | Update Email Address
[**enable_user_v2**](UsersApi.md#enable_user_v2) | **POST** /v2/users/{userId}/enable | Enable a User
[**get_self**](UsersApi.md#get_self) | **GET** /v2/users/self | Get Self
[**get_user_by_id_v2**](UsersApi.md#get_user_by_id_v2) | **GET** /v2/users/{userId} | Get User
[**invite_user**](UsersApi.md#invite_user) | **POST** /v2/users/invite | Invite a User
[**list_users**](UsersApi.md#list_users) | **GET** /v2/users | List Users
[**register_sms**](UsersApi.md#register_sms) | **POST** /v2/users/registration/sms | Register SMS Number
[**resend_token**](UsersApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token
[**unlock_user_v2**](UsersApi.md#unlock_user_v2) | **POST** /v2/users/{userId}/unlock | Unlock a User
[**unregister_mfa**](UsersApi.md#unregister_mfa) | **POST** /v2/users/{userId}/mfa/unregister | Unregister MFA for the user
[**unregister_mfa_for_self**](UsersApi.md#unregister_mfa_for_self) | **POST** /v2/users/self/mfa/unregister | Unregister MFA for Self
[**update_password_self**](UsersApi.md#update_password_self) | **POST** /v2/users/self/password | Update Password for self
[**validate_password_self**](UsersApi.md#validate_password_self) | **POST** /v2/users/self/password/validate | Validate the proposed password



## delete_user_by_id_v2

> delete_user_by_id_v2(user_id)

Delete a User

Delete User by Id. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.

begin
  #Delete a User
  api_instance.delete_user_by_id_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->delete_user_by_id_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disable_user_v2

> disable_user_v2(user_id)

Disable a User

<p>If a user is enabled this endpoint will disable them </p> <p>The invoker must have the appropriate permission </p> <p>A user cannot disable themself </p> <p>When a user is disabled any active access tokens will be revoked and the user will not be able to log in</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.

begin
  #Disable a User
  api_instance.disable_user_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->disable_user_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## email_update

> email_update(user_id, email_update_request)

Update Email Address

<p>Update the user's email address </p> <p>If the email address is already in use a 409 will be returned</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.
email_update_request = VeloPayments::EmailUpdateRequest.new # EmailUpdateRequest | a new email address

begin
  #Update Email Address
  api_instance.email_update(user_id, email_update_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->email_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 
 **email_update_request** | [**EmailUpdateRequest**](EmailUpdateRequest.md)| a new email address | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## enable_user_v2

> enable_user_v2(user_id)

Enable a User

<p>If a user has been disabled this endpoints will enable them </p> <p>The invoker must have the appropriate permission </p> <p>A user cannot enable themself </p> <p>If the user is a payor user and the payor is disabled this operation is not allowed</p> <p>If enabling a payor user would breach the limit for master admin payor users the request will be rejected </p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.

begin
  #Enable a User
  api_instance.enable_user_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->enable_user_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self

> UserResponse2 get_self

Get Self

Get the user's details 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new

begin
  #Get Self
  result = api_instance.get_self
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->get_self: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserResponse2**](UserResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_by_id_v2

> UserResponse get_user_by_id_v2(user_id)

Get User

Get a Single User by Id. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.

begin
  #Get User
  result = api_instance.get_user_by_id_v2(user_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_id_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invite_user

> invite_user(invite_user_request)

Invite a User

Create a User and invite them to the system 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
invite_user_request = VeloPayments::InviteUserRequest.new # InviteUserRequest | Details of User to invite

begin
  #Invite a User
  api_instance.invite_user(invite_user_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->invite_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_user_request** | [**InviteUserRequest**](InviteUserRequest.md)| Details of User to invite | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_users

> PagedUserResponse list_users(opts)

List Users

Get a paginated response listing the Users

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
opts = {
  type: VeloPayments::UserType.new, # UserType | The Type of the User.
  status: VeloPayments::UserStatus.new, # UserStatus | The status of the User.
  entity_id: 'entity_id_example', # String | The entityId of the User.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'email:asc' # String | List of sort fields (e.g. ?sort=email:asc,lastName:asc) Default is email:asc 'name' The supported sort fields are - email, lastNmae. 
}

begin
  #List Users
  result = api_instance.list_users(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**UserType**](.md)| The Type of the User. | [optional] 
 **status** | [**UserStatus**](.md)| The status of the User. | [optional] 
 **entity_id** | [**String**](.md)| The entityId of the User. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;email:asc,lastName:asc) Default is email:asc &#39;name&#39; The supported sort fields are - email, lastNmae.  | [optional] [default to &#39;email:asc&#39;]

### Return type

[**PagedUserResponse**](PagedUserResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_sms

> register_sms(register_sms_request)

Register SMS Number

<p>Register an Sms number and send an OTP to it </p> <p>Used for manual verification of a user </p> <p>The backoffice user initiates the request to send the OTP to the user's sms </p> <p>The user then reads back the OTP which the backoffice user enters in the verifactionCode property for requests that require it</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
register_sms_request = VeloPayments::RegisterSmsRequest.new # RegisterSmsRequest | a SMS Number to send an OTP to

begin
  #Register SMS Number
  api_instance.register_sms(register_sms_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->register_sms: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **register_sms_request** | [**RegisterSmsRequest**](RegisterSmsRequest.md)| a SMS Number to send an OTP to | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

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

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.
resend_token_request = VeloPayments::ResendTokenRequest.new # ResendTokenRequest | The type of token to resend

begin
  #Resend a token
  api_instance.resend_token(user_id, resend_token_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->resend_token: #{e}"
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


## unlock_user_v2

> unlock_user_v2(user_id)

Unlock a User

If a user is locked this endpoint will unlock them 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.

begin
  #Unlock a User
  api_instance.unlock_user_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->unlock_user_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unregister_mfa

> unregister_mfa(user_id, unregister_mfa_request)

Unregister MFA for the user

<p>Unregister the MFA device for the user </p> <p>If the user does not require further verification then a register new MFA device token will be sent to them via their email address</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = 'user_id_example' # String | The UUID of the User.
unregister_mfa_request = VeloPayments::UnregisterMFARequest.new # UnregisterMFARequest | The MFA Type to unregister

begin
  #Unregister MFA for the user
  api_instance.unregister_mfa(user_id, unregister_mfa_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->unregister_mfa: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| The UUID of the User. | 
 **unregister_mfa_request** | [**UnregisterMFARequest**](UnregisterMFARequest.md)| The MFA Type to unregister | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unregister_mfa_for_self

> unregister_mfa_for_self(self_mfa_type_unregister_request)

Unregister MFA for Self

<p>Unregister the MFA device for the user </p> <p>If the user does not require further verification then a register new MFA device token will be sent to them via their email address</p> 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
self_mfa_type_unregister_request = VeloPayments::SelfMFATypeUnregisterRequest.new # SelfMFATypeUnregisterRequest | The MFA Type to unregister

begin
  #Unregister MFA for Self
  api_instance.unregister_mfa_for_self(self_mfa_type_unregister_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->unregister_mfa_for_self: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **self_mfa_type_unregister_request** | [**SelfMFATypeUnregisterRequest**](SelfMFATypeUnregisterRequest.md)| The MFA Type to unregister | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_password_self

> update_password_self(self_update_password_request)

Update Password for self

Update password for self 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
self_update_password_request = VeloPayments::SelfUpdatePasswordRequest.new # SelfUpdatePasswordRequest | The password

begin
  #Update Password for self
  api_instance.update_password_self(self_update_password_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->update_password_self: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **self_update_password_request** | [**SelfUpdatePasswordRequest**](SelfUpdatePasswordRequest.md)| The password | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_password_self

> ValidatePasswordResponse validate_password_self(password_request)

Validate the proposed password

validate the password and return a score 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
password_request = VeloPayments::PasswordRequest.new # PasswordRequest | The password

begin
  #Validate the proposed password
  result = api_instance.validate_password_self(password_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling UsersApi->validate_password_self: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_request** | [**PasswordRequest**](PasswordRequest.md)| The password | 

### Return type

[**ValidatePasswordResponse**](ValidatePasswordResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

