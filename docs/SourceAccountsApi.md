# VeloPayments::SourceAccountsApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_source_account_v2**](SourceAccountsApi.md#get_source_account_v2) | **GET** /v2/sourceAccounts/{sourceAccountId} | Get Source Account |
| [**get_source_account_v3**](SourceAccountsApi.md#get_source_account_v3) | **GET** /v3/sourceAccounts/{sourceAccountId} | Get details about given source account. |
| [**get_source_accounts_v2**](SourceAccountsApi.md#get_source_accounts_v2) | **GET** /v2/sourceAccounts | Get list of source accounts |
| [**get_source_accounts_v3**](SourceAccountsApi.md#get_source_accounts_v3) | **GET** /v3/sourceAccounts | Get list of source accounts |
| [**set_notifications_request**](SourceAccountsApi.md#set_notifications_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/notifications | Set notifications |
| [**set_notifications_request_v3**](SourceAccountsApi.md#set_notifications_request_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/notifications | Set notifications |
| [**transfer_funds_v2**](SourceAccountsApi.md#transfer_funds_v2) | **POST** /v2/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts |
| [**transfer_funds_v3**](SourceAccountsApi.md#transfer_funds_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts |


## get_source_account_v2

> <SourceAccountResponseV2> get_source_account_v2(source_account_id)

Get Source Account

Get details about given source account.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id

begin
  # Get Source Account
  result = api_instance.get_source_account_v2(source_account_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_account_v2: #{e}"
end
```

#### Using the get_source_account_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SourceAccountResponseV2>, Integer, Hash)> get_source_account_v2_with_http_info(source_account_id)

```ruby
begin
  # Get Source Account
  data, status_code, headers = api_instance.get_source_account_v2_with_http_info(source_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SourceAccountResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_account_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |

### Return type

[**SourceAccountResponseV2**](SourceAccountResponseV2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_account_v3

> <SourceAccountResponseV3> get_source_account_v3(source_account_id)

Get details about given source account.

Get details about given source account.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id

begin
  # Get details about given source account.
  result = api_instance.get_source_account_v3(source_account_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_account_v3: #{e}"
end
```

#### Using the get_source_account_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SourceAccountResponseV3>, Integer, Hash)> get_source_account_v3_with_http_info(source_account_id)

```ruby
begin
  # Get details about given source account.
  data, status_code, headers = api_instance.get_source_account_v3_with_http_info(source_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SourceAccountResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_account_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |

### Return type

[**SourceAccountResponseV3**](SourceAccountResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_accounts_v2

> <ListSourceAccountResponseV2> get_source_accounts_v2(opts)

Get list of source accounts

List source accounts.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
opts = {
  physical_account_name: 'physical_account_name_example', # String | Physical Account Name
  physical_account_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The physical account ID
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The account owner Payor ID
  funding_account_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The funding account ID
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields e.g. ?sort=name:asc Default is name:asc The supported sort fields are - fundingRef, name, balance 
}

begin
  # Get list of source accounts
  result = api_instance.get_source_accounts_v2(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_accounts_v2: #{e}"
end
```

#### Using the get_source_accounts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSourceAccountResponseV2>, Integer, Hash)> get_source_accounts_v2_with_http_info(opts)

```ruby
begin
  # Get list of source accounts
  data, status_code, headers = api_instance.get_source_accounts_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSourceAccountResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_accounts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **physical_account_name** | **String** | Physical Account Name | [optional] |
| **physical_account_id** | **String** | The physical account ID | [optional] |
| **payor_id** | **String** | The account owner Payor ID | [optional] |
| **funding_account_id** | **String** | The funding account ID | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields e.g. ?sort&#x3D;name:asc Default is name:asc The supported sort fields are - fundingRef, name, balance  | [optional][default to &#39;fundingRef:asc&#39;] |

### Return type

[**ListSourceAccountResponseV2**](ListSourceAccountResponseV2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_accounts_v3

> <ListSourceAccountResponseV3> get_source_accounts_v3(opts)

Get list of source accounts

List source accounts.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
opts = {
  physical_account_name: 'physical_account_name_example', # String | Physical Account Name
  physical_account_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The physical account ID
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The account owner Payor ID
  funding_account_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The funding account ID
  include_user_deleted: 'include_user_deleted_example', # Boolean | A filter for retrieving both active accounts and user deleted ones
  type: 'type_example', # String | The type of source account.
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields e.g. ?sort=name:asc Default is name:asc The supported sort fields are - fundingRef, name, balance 
}

begin
  # Get list of source accounts
  result = api_instance.get_source_accounts_v3(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_accounts_v3: #{e}"
end
```

#### Using the get_source_accounts_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSourceAccountResponseV3>, Integer, Hash)> get_source_accounts_v3_with_http_info(opts)

```ruby
begin
  # Get list of source accounts
  data, status_code, headers = api_instance.get_source_accounts_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSourceAccountResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->get_source_accounts_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **physical_account_name** | **String** | Physical Account Name | [optional] |
| **physical_account_id** | **String** | The physical account ID | [optional] |
| **payor_id** | **String** | The account owner Payor ID | [optional] |
| **funding_account_id** | **String** | The funding account ID | [optional] |
| **include_user_deleted** | **Boolean** | A filter for retrieving both active accounts and user deleted ones | [optional] |
| **type** | **String** | The type of source account. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields e.g. ?sort&#x3D;name:asc Default is name:asc The supported sort fields are - fundingRef, name, balance  | [optional][default to &#39;fundingRef:asc&#39;] |

### Return type

[**ListSourceAccountResponseV3**](ListSourceAccountResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_notifications_request

> set_notifications_request(source_account_id, set_notifications_request)

Set notifications

<p>Set notifications for a given source account</p> <p>deprecated since 2.34 (use v3 version)</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id
set_notifications_request = VeloPayments::SetNotificationsRequest.new({minimum_balance: 3.56}) # SetNotificationsRequest | Body to included minimum balance to set

begin
  # Set notifications
  api_instance.set_notifications_request(source_account_id, set_notifications_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->set_notifications_request: #{e}"
end
```

#### Using the set_notifications_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_notifications_request_with_http_info(source_account_id, set_notifications_request)

```ruby
begin
  # Set notifications
  data, status_code, headers = api_instance.set_notifications_request_with_http_info(source_account_id, set_notifications_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->set_notifications_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |
| **set_notifications_request** | [**SetNotificationsRequest**](SetNotificationsRequest.md) | Body to included minimum balance to set |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_notifications_request_v3

> set_notifications_request_v3(source_account_id, set_notifications_request2)

Set notifications

<p>Set notifications for a given source account</p> <p>If the balance falls below the amount set in the request an email notification will be sent to the email address registered in the payor profile</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id
set_notifications_request2 = VeloPayments::SetNotificationsRequest2.new({minimum_balance: 10000000}) # SetNotificationsRequest2 | Body to included minimum balance to set

begin
  # Set notifications
  api_instance.set_notifications_request_v3(source_account_id, set_notifications_request2)
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->set_notifications_request_v3: #{e}"
end
```

#### Using the set_notifications_request_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_notifications_request_v3_with_http_info(source_account_id, set_notifications_request2)

```ruby
begin
  # Set notifications
  data, status_code, headers = api_instance.set_notifications_request_v3_with_http_info(source_account_id, set_notifications_request2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->set_notifications_request_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |
| **set_notifications_request2** | [**SetNotificationsRequest2**](SetNotificationsRequest2.md) | Body to included minimum balance to set |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_funds_v2

> transfer_funds_v2(source_account_id, transfer_request_v2)

Transfer Funds between source accounts

Transfer funds between source accounts for a Payor. The 'from' source account is identified in the URL, and is the account which will be debited. The 'to' (destination) source account is in the body, and is the account which will be credited. Both source accounts must belong to the same Payor. There must be sufficient balance in the 'from' source account, otherwise the transfer attempt will fail.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The 'from' source account id, which will be debited
transfer_request_v2 = VeloPayments::TransferRequestV2.new({to_source_account_id: 'to_source_account_id_example', amount: 3.56, currency: 'USD'}) # TransferRequestV2 | Body

begin
  # Transfer Funds between source accounts
  api_instance.transfer_funds_v2(source_account_id, transfer_request_v2)
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->transfer_funds_v2: #{e}"
end
```

#### Using the transfer_funds_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_funds_v2_with_http_info(source_account_id, transfer_request_v2)

```ruby
begin
  # Transfer Funds between source accounts
  data, status_code, headers = api_instance.transfer_funds_v2_with_http_info(source_account_id, transfer_request_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->transfer_funds_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | The &#39;from&#39; source account id, which will be debited |  |
| **transfer_request_v2** | [**TransferRequestV2**](TransferRequestV2.md) | Body |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_funds_v3

> transfer_funds_v3(source_account_id, transfer_request_v3)

Transfer Funds between source accounts

Transfer funds between source accounts for a Payor. The 'from' source account is identified in the URL, and is the account which will be debited. The 'to' (destination) source account is in the body, and is the account which will be credited. Both source accounts must belong to the same Payor. There must be sufficient balance in the 'from' source account, otherwise the transfer attempt will fail.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SourceAccountsApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The 'from' source account id, which will be debited
transfer_request_v3 = VeloPayments::TransferRequestV3.new({to_source_account_id: 'to_source_account_id_example', amount: 3.56, currency: 'USD'}) # TransferRequestV3 | Body

begin
  # Transfer Funds between source accounts
  api_instance.transfer_funds_v3(source_account_id, transfer_request_v3)
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->transfer_funds_v3: #{e}"
end
```

#### Using the transfer_funds_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_funds_v3_with_http_info(source_account_id, transfer_request_v3)

```ruby
begin
  # Transfer Funds between source accounts
  data, status_code, headers = api_instance.transfer_funds_v3_with_http_info(source_account_id, transfer_request_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling SourceAccountsApi->transfer_funds_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | The &#39;from&#39; source account id, which will be debited |  |
| **transfer_request_v3** | [**TransferRequestV3**](TransferRequestV3.md) | Body |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

