# VeloPayments::UsersApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user_by_id_v2**](UsersApi.md#delete_user_by_id_v2) | **DELETE** /v2/users/{userId} | Delete a User |
| [**disable_user_v2**](UsersApi.md#disable_user_v2) | **POST** /v2/users/{userId}/disable | Disable a User |
| [**enable_user_v2**](UsersApi.md#enable_user_v2) | **POST** /v2/users/{userId}/enable | Enable a User |
| [**get_self**](UsersApi.md#get_self) | **GET** /v2/users/self | Get Self |
| [**get_user_by_id_v2**](UsersApi.md#get_user_by_id_v2) | **GET** /v2/users/{userId} | Get User |
| [**invite_user**](UsersApi.md#invite_user) | **POST** /v2/users/invite | Invite a User |
| [**list_users**](UsersApi.md#list_users) | **GET** /v2/users | List Users |
| [**register_sms**](UsersApi.md#register_sms) | **POST** /v2/users/registration/sms | Register SMS Number |
| [**resend_token**](UsersApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token |
| [**role_update**](UsersApi.md#role_update) | **POST** /v2/users/{userId}/roleUpdate | Update User Role |
| [**unlock_user_v2**](UsersApi.md#unlock_user_v2) | **POST** /v2/users/{userId}/unlock | Unlock a User |
| [**unregister_mfa**](UsersApi.md#unregister_mfa) | **POST** /v2/users/{userId}/mfa/unregister | Unregister MFA for the user |
| [**unregister_mfa_for_self**](UsersApi.md#unregister_mfa_for_self) | **POST** /v2/users/self/mfa/unregister | Unregister MFA for Self |
| [**update_password_self**](UsersApi.md#update_password_self) | **POST** /v2/users/self/password | Update Password for self |
| [**user_details_update**](UsersApi.md#user_details_update) | **POST** /v2/users/{userId}/userDetailsUpdate | Update User Details |
| [**user_details_update_for_self**](UsersApi.md#user_details_update_for_self) | **POST** /v2/users/self/userDetailsUpdate | Update User Details for self |
| [**validate_password_self**](UsersApi.md#validate_password_self) | **POST** /v2/users/self/password/validate | Validate the proposed password |


## delete_user_by_id_v2

> delete_user_by_id_v2(user_id)

Delete a User

Delete User by Id. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.

begin
  # Delete a User
  api_instance.delete_user_by_id_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->delete_user_by_id_v2: #{e}"
end
```

#### Using the delete_user_by_id_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_by_id_v2_with_http_info(user_id)

```ruby
begin
  # Delete a User
  data, status_code, headers = api_instance.delete_user_by_id_v2_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->delete_user_by_id_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.

begin
  # Disable a User
  api_instance.disable_user_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->disable_user_v2: #{e}"
end
```

#### Using the disable_user_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_user_v2_with_http_info(user_id)

```ruby
begin
  # Disable a User
  data, status_code, headers = api_instance.disable_user_v2_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->disable_user_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_user_v2

> enable_user_v2(user_id)

Enable a User

<p>If a user has been disabled this endpoints will enable them </p> <p>The invoker must have the appropriate permission </p> <p>A user cannot enable themself </p> <p>If the user is a payor user and the payor is disabled this operation is not allowed</p> <p>If enabling a payor user would breach the limit for master admin payor users the request will be rejected </p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.

begin
  # Enable a User
  api_instance.enable_user_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->enable_user_v2: #{e}"
end
```

#### Using the enable_user_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> enable_user_v2_with_http_info(user_id)

```ruby
begin
  # Enable a User
  data, status_code, headers = api_instance.enable_user_v2_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->enable_user_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self

> <UserResponse> get_self

Get Self

Get the user's details 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new

begin
  # Get Self
  result = api_instance.get_self
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->get_self: #{e}"
end
```

#### Using the get_self_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> get_self_with_http_info

```ruby
begin
  # Get Self
  data, status_code, headers = api_instance.get_self_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->get_self_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_by_id_v2

> <UserResponse> get_user_by_id_v2(user_id)

Get User

Get a Single User by Id. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.

begin
  # Get User
  result = api_instance.get_user_by_id_v2(user_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->get_user_by_id_v2: #{e}"
end
```

#### Using the get_user_by_id_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> get_user_by_id_v2_with_http_info(user_id)

```ruby
begin
  # Get User
  data, status_code, headers = api_instance.get_user_by_id_v2_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->get_user_by_id_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
invite_user_request = VeloPayments::InviteUserRequest.new({email: 'foo@example.com', mfa_type: 'SMS', sms_number: '11235555555', primary_contact_number: '11235555555', roles: ['roles_example']}) # InviteUserRequest | Details of User to invite

begin
  # Invite a User
  api_instance.invite_user(invite_user_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->invite_user: #{e}"
end
```

#### Using the invite_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invite_user_with_http_info(invite_user_request)

```ruby
begin
  # Invite a User
  data, status_code, headers = api_instance.invite_user_with_http_info(invite_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->invite_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_user_request** | [**InviteUserRequest**](InviteUserRequest.md) | Details of User to invite |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_users

> <PagedUserResponse> list_users(opts)

List Users

Get a paginated response listing the Users

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
opts = {
  type: VeloPayments::UserType::BACKOFFICE, # UserType | The Type of the User.
  status: VeloPayments::UserStatus::ENABLED, # UserStatus | The status of the User.
  entity_id: TODO, # String | The entityId of the User.
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields (e.g. ?sort=email:asc,lastName:asc) Default is email:asc 'name' The supported sort fields are - email, lastNmae. 
}

begin
  # List Users
  result = api_instance.list_users(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagedUserResponse>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List Users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedUserResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**UserType**](.md) | The Type of the User. | [optional] |
| **status** | [**UserStatus**](.md) | The status of the User. | [optional] |
| **entity_id** | [**String**](.md) | The entityId of the User. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;email:asc,lastName:asc) Default is email:asc &#39;name&#39; The supported sort fields are - email, lastNmae.  | [optional][default to &#39;email:asc&#39;] |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
register_sms_request = VeloPayments::RegisterSmsRequest.new({sms_number: '11235555555'}) # RegisterSmsRequest | a SMS Number to send an OTP to

begin
  # Register SMS Number
  api_instance.register_sms(register_sms_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->register_sms: #{e}"
end
```

#### Using the register_sms_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> register_sms_with_http_info(register_sms_request)

```ruby
begin
  # Register SMS Number
  data, status_code, headers = api_instance.register_sms_with_http_info(register_sms_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->register_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register_sms_request** | [**RegisterSmsRequest**](RegisterSmsRequest.md) | a SMS Number to send an OTP to |  |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.
resend_token_request = VeloPayments::ResendTokenRequest.new({token_type: 'INVITE_MFA_USER'}) # ResendTokenRequest | The type of token to resend

begin
  # Resend a token
  api_instance.resend_token(user_id, resend_token_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->resend_token: #{e}"
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
  puts "Error when calling UsersApi->resend_token_with_http_info: #{e}"
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


## role_update

> role_update(user_id, role_update_request)

Update User Role

<p>Update the user's Role</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.
role_update_request = VeloPayments::RoleUpdateRequest.new({roles: ['roles_example']}) # RoleUpdateRequest | The Role to change to

begin
  # Update User Role
  api_instance.role_update(user_id, role_update_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->role_update: #{e}"
end
```

#### Using the role_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> role_update_with_http_info(user_id, role_update_request)

```ruby
begin
  # Update User Role
  data, status_code, headers = api_instance.role_update_with_http_info(user_id, role_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->role_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |
| **role_update_request** | [**RoleUpdateRequest**](RoleUpdateRequest.md) | The Role to change to |  |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.

begin
  # Unlock a User
  api_instance.unlock_user_v2(user_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->unlock_user_v2: #{e}"
end
```

#### Using the unlock_user_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlock_user_v2_with_http_info(user_id)

```ruby
begin
  # Unlock a User
  data, status_code, headers = api_instance.unlock_user_v2_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->unlock_user_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.
unregister_mfa_request = VeloPayments::UnregisterMFARequest.new({mfa_type: 'YUBIKEY'}) # UnregisterMFARequest | The MFA Type to unregister

begin
  # Unregister MFA for the user
  api_instance.unregister_mfa(user_id, unregister_mfa_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->unregister_mfa: #{e}"
end
```

#### Using the unregister_mfa_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unregister_mfa_with_http_info(user_id, unregister_mfa_request)

```ruby
begin
  # Unregister MFA for the user
  data, status_code, headers = api_instance.unregister_mfa_with_http_info(user_id, unregister_mfa_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->unregister_mfa_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |
| **unregister_mfa_request** | [**UnregisterMFARequest**](UnregisterMFARequest.md) | The MFA Type to unregister |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unregister_mfa_for_self

> unregister_mfa_for_self(self_mfa_type_unregister_request, opts)

Unregister MFA for Self

<p>Unregister the MFA device for the user </p> <p>If the user does not require further verification then a register new MFA device token will be sent to them via their email address</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
self_mfa_type_unregister_request = VeloPayments::SelfMFATypeUnregisterRequest.new({mfa_type: 'SMS'}) # SelfMFATypeUnregisterRequest | The MFA Type to unregister
opts = {
  authorization: 'authorization_example' # String | Bearer token authorization leg of validate
}

begin
  # Unregister MFA for Self
  api_instance.unregister_mfa_for_self(self_mfa_type_unregister_request, opts)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->unregister_mfa_for_self: #{e}"
end
```

#### Using the unregister_mfa_for_self_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unregister_mfa_for_self_with_http_info(self_mfa_type_unregister_request, opts)

```ruby
begin
  # Unregister MFA for Self
  data, status_code, headers = api_instance.unregister_mfa_for_self_with_http_info(self_mfa_type_unregister_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->unregister_mfa_for_self_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **self_mfa_type_unregister_request** | [**SelfMFATypeUnregisterRequest**](SelfMFATypeUnregisterRequest.md) | The MFA Type to unregister |  |
| **authorization** | **String** | Bearer token authorization leg of validate | [optional] |

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

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
self_update_password_request = VeloPayments::SelfUpdatePasswordRequest.new({old_password: 'My_current_password', new_password: 'My_new_password'}) # SelfUpdatePasswordRequest | The password

begin
  # Update Password for self
  api_instance.update_password_self(self_update_password_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->update_password_self: #{e}"
end
```

#### Using the update_password_self_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_password_self_with_http_info(self_update_password_request)

```ruby
begin
  # Update Password for self
  data, status_code, headers = api_instance.update_password_self_with_http_info(self_update_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->update_password_self_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **self_update_password_request** | [**SelfUpdatePasswordRequest**](SelfUpdatePasswordRequest.md) | The password |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## user_details_update

> user_details_update(user_id, user_details_update_request)

Update User Details

<p>Update the profile details for the given user</p> <p>When updating Payor users with the role of payor.master_admin a verificationCode is required</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
user_id = TODO # String | The UUID of the User.
user_details_update_request = VeloPayments::UserDetailsUpdateRequest.new # UserDetailsUpdateRequest | The details of the user to update

begin
  # Update User Details
  api_instance.user_details_update(user_id, user_details_update_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->user_details_update: #{e}"
end
```

#### Using the user_details_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> user_details_update_with_http_info(user_id, user_details_update_request)

```ruby
begin
  # Update User Details
  data, status_code, headers = api_instance.user_details_update_with_http_info(user_id, user_details_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->user_details_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | [**String**](.md) | The UUID of the User. |  |
| **user_details_update_request** | [**UserDetailsUpdateRequest**](UserDetailsUpdateRequest.md) | The details of the user to update |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## user_details_update_for_self

> user_details_update_for_self(payee_user_self_update_request)

Update User Details for self

<p>Update the profile details for the given user</p> <p>Only Payee user types are supported</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
payee_user_self_update_request = VeloPayments::PayeeUserSelfUpdateRequest.new # PayeeUserSelfUpdateRequest | The details of the user to update

begin
  # Update User Details for self
  api_instance.user_details_update_for_self(payee_user_self_update_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->user_details_update_for_self: #{e}"
end
```

#### Using the user_details_update_for_self_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> user_details_update_for_self_with_http_info(payee_user_self_update_request)

```ruby
begin
  # Update User Details for self
  data, status_code, headers = api_instance.user_details_update_for_self_with_http_info(payee_user_self_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->user_details_update_for_self_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_user_self_update_request** | [**PayeeUserSelfUpdateRequest**](PayeeUserSelfUpdateRequest.md) | The details of the user to update |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_password_self

> <ValidatePasswordResponse> validate_password_self(password_request)

Validate the proposed password

validate the password and return a score 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::UsersApi.new
password_request = VeloPayments::PasswordRequest.new({password: 'My_strong_password'}) # PasswordRequest | The password

begin
  # Validate the proposed password
  result = api_instance.validate_password_self(password_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->validate_password_self: #{e}"
end
```

#### Using the validate_password_self_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidatePasswordResponse>, Integer, Hash)> validate_password_self_with_http_info(password_request)

```ruby
begin
  # Validate the proposed password
  data, status_code, headers = api_instance.validate_password_self_with_http_info(password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidatePasswordResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling UsersApi->validate_password_self_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password_request** | [**PasswordRequest**](PasswordRequest.md) | The password |  |

### Return type

[**ValidatePasswordResponse**](ValidatePasswordResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

