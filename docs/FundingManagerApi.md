# VeloPayments::FundingManagerApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ach_funding_request**](FundingManagerApi.md#create_ach_funding_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/achFundingRequest | Create Funding Request |
| [**create_funding_request**](FundingManagerApi.md#create_funding_request) | **POST** /v2/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request |
| [**create_funding_request_v3**](FundingManagerApi.md#create_funding_request_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request |
| [**get_funding_account**](FundingManagerApi.md#get_funding_account) | **GET** /v1/fundingAccounts/{fundingAccountId} | Get Funding Account |
| [**get_funding_account_v2**](FundingManagerApi.md#get_funding_account_v2) | **GET** /v2/fundingAccounts/{fundingAccountId} | Get Funding Account |
| [**get_funding_accounts**](FundingManagerApi.md#get_funding_accounts) | **GET** /v1/fundingAccounts | Get Funding Accounts |
| [**get_funding_accounts_v2**](FundingManagerApi.md#get_funding_accounts_v2) | **GET** /v2/fundingAccounts | Get Funding Accounts |
| [**get_source_account**](FundingManagerApi.md#get_source_account) | **GET** /v1/sourceAccounts/{sourceAccountId} | Get details about given source account. |
| [**get_source_account_v2**](FundingManagerApi.md#get_source_account_v2) | **GET** /v2/sourceAccounts/{sourceAccountId} | Get details about given source account. |
| [**get_source_account_v3**](FundingManagerApi.md#get_source_account_v3) | **GET** /v3/sourceAccounts/{sourceAccountId} | Get details about given source account. |
| [**get_source_accounts**](FundingManagerApi.md#get_source_accounts) | **GET** /v1/sourceAccounts | Get list of source accounts |
| [**get_source_accounts_v2**](FundingManagerApi.md#get_source_accounts_v2) | **GET** /v2/sourceAccounts | Get list of source accounts |
| [**get_source_accounts_v3**](FundingManagerApi.md#get_source_accounts_v3) | **GET** /v3/sourceAccounts | Get list of source accounts |
| [**list_funding_audit_deltas**](FundingManagerApi.md#list_funding_audit_deltas) | **GET** /v1/deltas/fundings | Get Funding Audit Delta |
| [**set_notifications_request**](FundingManagerApi.md#set_notifications_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/notifications | Set notifications |
| [**transfer_funds**](FundingManagerApi.md#transfer_funds) | **POST** /v2/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts |
| [**transfer_funds_v3**](FundingManagerApi.md#transfer_funds_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts |


## create_ach_funding_request

> create_ach_funding_request(source_account_id, funding_request_v1)

Create Funding Request

Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id
funding_request_v1 = VeloPayments::FundingRequestV1.new({amount: 3.56}) # FundingRequestV1 | Body to included amount to be funded

begin
  # Create Funding Request
  api_instance.create_ach_funding_request(source_account_id, funding_request_v1)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->create_ach_funding_request: #{e}"
end
```

#### Using the create_ach_funding_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_ach_funding_request_with_http_info(source_account_id, funding_request_v1)

```ruby
begin
  # Create Funding Request
  data, status_code, headers = api_instance.create_ach_funding_request_with_http_info(source_account_id, funding_request_v1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->create_ach_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |
| **funding_request_v1** | [**FundingRequestV1**](FundingRequestV1.md) | Body to included amount to be funded |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_funding_request

> create_funding_request(source_account_id, funding_request_v2)

Create Funding Request

Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo  (202 - accepted, 400 - invalid request body, 404 - source account not found).

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id
funding_request_v2 = VeloPayments::FundingRequestV2.new({amount: 3.56}) # FundingRequestV2 | Body to included amount to be funded

begin
  # Create Funding Request
  api_instance.create_funding_request(source_account_id, funding_request_v2)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->create_funding_request: #{e}"
end
```

#### Using the create_funding_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_funding_request_with_http_info(source_account_id, funding_request_v2)

```ruby
begin
  # Create Funding Request
  data, status_code, headers = api_instance.create_funding_request_with_http_info(source_account_id, funding_request_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->create_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |
| **funding_request_v2** | [**FundingRequestV2**](FundingRequestV2.md) | Body to included amount to be funded |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_funding_request_v3

> create_funding_request_v3(source_account_id, funding_request_v3)

Create Funding Request

Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo  (202 - accepted, 400 - invalid request body, 404 - source account not found).

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id
funding_request_v3 = VeloPayments::FundingRequestV3.new({funding_account_id: 'funding_account_id_example', amount: 3.56}) # FundingRequestV3 | Body to included amount to be funded

begin
  # Create Funding Request
  api_instance.create_funding_request_v3(source_account_id, funding_request_v3)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->create_funding_request_v3: #{e}"
end
```

#### Using the create_funding_request_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_funding_request_v3_with_http_info(source_account_id, funding_request_v3)

```ruby
begin
  # Create Funding Request
  data, status_code, headers = api_instance.create_funding_request_v3_with_http_info(source_account_id, funding_request_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->create_funding_request_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |
| **funding_request_v3** | [**FundingRequestV3**](FundingRequestV3.md) | Body to included amount to be funded |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_funding_account

> <FundingAccountResponse> get_funding_account(funding_account_id, opts)

Get Funding Account

Get Funding Account by ID

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
funding_account_id = TODO # String | 
opts = {
  sensitive: true # Boolean | 
}

begin
  # Get Funding Account
  result = api_instance.get_funding_account(funding_account_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_account: #{e}"
end
```

#### Using the get_funding_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountResponse>, Integer, Hash)> get_funding_account_with_http_info(funding_account_id, opts)

```ruby
begin
  # Get Funding Account
  data, status_code, headers = api_instance.get_funding_account_with_http_info(funding_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_account_id** | [**String**](.md) |  |  |
| **sensitive** | **Boolean** |  | [optional][default to false] |

### Return type

[**FundingAccountResponse**](FundingAccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_account_v2

> <FundingAccountResponse2> get_funding_account_v2(funding_account_id, opts)

Get Funding Account

Get Funding Account by ID

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
funding_account_id = TODO # String | 
opts = {
  sensitive: true # Boolean | 
}

begin
  # Get Funding Account
  result = api_instance.get_funding_account_v2(funding_account_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_account_v2: #{e}"
end
```

#### Using the get_funding_account_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountResponse2>, Integer, Hash)> get_funding_account_v2_with_http_info(funding_account_id, opts)

```ruby
begin
  # Get Funding Account
  data, status_code, headers = api_instance.get_funding_account_v2_with_http_info(funding_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_account_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_account_id** | [**String**](.md) |  |  |
| **sensitive** | **Boolean** |  | [optional][default to false] |

### Return type

[**FundingAccountResponse2**](FundingAccountResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_accounts

> <ListFundingAccountsResponse> get_funding_accounts(opts)

Get Funding Accounts

Get the funding accounts.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  payor_id: TODO, # String | 
  source_account_id: TODO, # String | 
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name and currency.
  sensitive: true # Boolean | 
}

begin
  # Get Funding Accounts
  result = api_instance.get_funding_accounts(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_accounts: #{e}"
end
```

#### Using the get_funding_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingAccountsResponse>, Integer, Hash)> get_funding_accounts_with_http_info(opts)

```ruby
begin
  # Get Funding Accounts
  data, status_code, headers = api_instance.get_funding_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingAccountsResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | [**String**](.md) |  | [optional] |
| **source_account_id** | [**String**](.md) |  | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name and currency. | [optional][default to &#39;accountName:asc&#39;] |
| **sensitive** | **Boolean** |  | [optional][default to false] |

### Return type

[**ListFundingAccountsResponse**](ListFundingAccountsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_accounts_v2

> <ListFundingAccountsResponse2> get_funding_accounts_v2(opts)

Get Funding Accounts

Get the funding accounts.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  payor_id: TODO, # String | 
  name: 'name_example', # String | The descriptive funding account name
  country: 'US', # String | The 2 letter ISO 3166-1 country code (upper case)
  currency: 'USD', # String | The ISO 4217 currency code
  type: VeloPayments::FundingAccountType::FBO, # FundingAccountType | The type of funding account.
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name.
  sensitive: true # Boolean | 
}

begin
  # Get Funding Accounts
  result = api_instance.get_funding_accounts_v2(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_accounts_v2: #{e}"
end
```

#### Using the get_funding_accounts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingAccountsResponse2>, Integer, Hash)> get_funding_accounts_v2_with_http_info(opts)

```ruby
begin
  # Get Funding Accounts
  data, status_code, headers = api_instance.get_funding_accounts_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingAccountsResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_funding_accounts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | [**String**](.md) |  | [optional] |
| **name** | **String** | The descriptive funding account name | [optional] |
| **country** | **String** | The 2 letter ISO 3166-1 country code (upper case) | [optional] |
| **currency** | **String** | The ISO 4217 currency code | [optional] |
| **type** | [**FundingAccountType**](.md) | The type of funding account. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name. | [optional][default to &#39;accountName:asc&#39;] |
| **sensitive** | **Boolean** |  | [optional][default to false] |

### Return type

[**ListFundingAccountsResponse2**](ListFundingAccountsResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_account

> <SourceAccountResponse> get_source_account(source_account_id)

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

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id

begin
  # Get details about given source account.
  result = api_instance.get_source_account(source_account_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_account: #{e}"
end
```

#### Using the get_source_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SourceAccountResponse>, Integer, Hash)> get_source_account_with_http_info(source_account_id)

```ruby
begin
  # Get details about given source account.
  data, status_code, headers = api_instance.get_source_account_with_http_info(source_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SourceAccountResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |

### Return type

[**SourceAccountResponse**](SourceAccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_account_v2

> <SourceAccountResponseV2> get_source_account_v2(source_account_id)

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

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id

begin
  # Get details about given source account.
  result = api_instance.get_source_account_v2(source_account_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_account_v2: #{e}"
end
```

#### Using the get_source_account_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SourceAccountResponseV2>, Integer, Hash)> get_source_account_v2_with_http_info(source_account_id)

```ruby
begin
  # Get details about given source account.
  data, status_code, headers = api_instance.get_source_account_v2_with_http_info(source_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SourceAccountResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_account_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |

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

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id

begin
  # Get details about given source account.
  result = api_instance.get_source_account_v3(source_account_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_account_v3: #{e}"
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
  puts "Error when calling FundingManagerApi->get_source_account_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |

### Return type

[**SourceAccountResponseV3**](SourceAccountResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_accounts

> <ListSourceAccountResponse> get_source_accounts(opts)

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

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  physical_account_name: 'physical_account_name_example', # String | Physical Account Name
  payor_id: TODO, # String | The account owner Payor ID
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields e.g. ?sort=name:asc Default is name:asc The supported sort fields are - fundingRef 
}

begin
  # Get list of source accounts
  result = api_instance.get_source_accounts(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_accounts: #{e}"
end
```

#### Using the get_source_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSourceAccountResponse>, Integer, Hash)> get_source_accounts_with_http_info(opts)

```ruby
begin
  # Get list of source accounts
  data, status_code, headers = api_instance.get_source_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSourceAccountResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **physical_account_name** | **String** | Physical Account Name | [optional] |
| **payor_id** | [**String**](.md) | The account owner Payor ID | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields e.g. ?sort&#x3D;name:asc Default is name:asc The supported sort fields are - fundingRef  | [optional][default to &#39;fundingRef:asc&#39;] |

### Return type

[**ListSourceAccountResponse**](ListSourceAccountResponse.md)

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

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  physical_account_name: 'physical_account_name_example', # String | Physical Account Name
  physical_account_id: TODO, # String | The physical account ID
  payor_id: TODO, # String | The account owner Payor ID
  funding_account_id: TODO, # String | The funding account ID
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields e.g. ?sort=name:asc Default is name:asc The supported sort fields are - fundingRef, name, balance 
}

begin
  # Get list of source accounts
  result = api_instance.get_source_accounts_v2(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_accounts_v2: #{e}"
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
  puts "Error when calling FundingManagerApi->get_source_accounts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **physical_account_name** | **String** | Physical Account Name | [optional] |
| **physical_account_id** | [**String**](.md) | The physical account ID | [optional] |
| **payor_id** | [**String**](.md) | The account owner Payor ID | [optional] |
| **funding_account_id** | [**String**](.md) | The funding account ID | [optional] |
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

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  physical_account_name: 'physical_account_name_example', # String | Physical Account Name
  physical_account_id: TODO, # String | The physical account ID
  payor_id: TODO, # String | The account owner Payor ID
  funding_account_id: TODO, # String | The funding account ID
  include_user_deleted: 'include_user_deleted_example', # Boolean | A filter for retrieving both active accounts and user deleted ones
  type: VeloPayments::SourceAccountType::FBO, # SourceAccountType | The type of source account.
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields e.g. ?sort=name:asc Default is name:asc The supported sort fields are - fundingRef, name, balance 
}

begin
  # Get list of source accounts
  result = api_instance.get_source_accounts_v3(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->get_source_accounts_v3: #{e}"
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
  puts "Error when calling FundingManagerApi->get_source_accounts_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **physical_account_name** | **String** | Physical Account Name | [optional] |
| **physical_account_id** | [**String**](.md) | The physical account ID | [optional] |
| **payor_id** | [**String**](.md) | The account owner Payor ID | [optional] |
| **funding_account_id** | [**String**](.md) | The funding account ID | [optional] |
| **include_user_deleted** | **Boolean** | A filter for retrieving both active accounts and user deleted ones | [optional] |
| **type** | [**SourceAccountType**](.md) | The type of source account. | [optional] |
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


## list_funding_audit_deltas

> <PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse> list_funding_audit_deltas(payor_id, updated_since, opts)

Get Funding Audit Delta

Get funding audit deltas for a payor

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
payor_id = TODO # String | 
updated_since = Time.parse('2013-10-20T19:20:30+01:00') # Time | 
opts = {
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56 # Integer | The number of results to return in a page
}

begin
  # Get Funding Audit Delta
  result = api_instance.list_funding_audit_deltas(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->list_funding_audit_deltas: #{e}"
end
```

#### Using the list_funding_audit_deltas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse>, Integer, Hash)> list_funding_audit_deltas_with_http_info(payor_id, updated_since, opts)

```ruby
begin
  # Get Funding Audit Delta
  data, status_code, headers = api_instance.list_funding_audit_deltas_with_http_info(payor_id, updated_since, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->list_funding_audit_deltas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | [**String**](.md) |  |  |
| **updated_since** | **Time** |  |  |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |

### Return type

[**PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse**](PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_notifications_request

> set_notifications_request(source_account_id, set_notifications_request)

Set notifications

Set notifications for a given source account

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | Source account id
set_notifications_request = VeloPayments::SetNotificationsRequest.new({minimum_balance: 3.56}) # SetNotificationsRequest | Body to included minimum balance to set

begin
  # Set notifications
  api_instance.set_notifications_request(source_account_id, set_notifications_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->set_notifications_request: #{e}"
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
  puts "Error when calling FundingManagerApi->set_notifications_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | Source account id |  |
| **set_notifications_request** | [**SetNotificationsRequest**](SetNotificationsRequest.md) | Body to included minimum balance to set |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_funds

> transfer_funds(source_account_id, transfer_request)

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

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | The 'from' source account id, which will be debited
transfer_request = VeloPayments::TransferRequest.new({to_source_account_id: 'to_source_account_id_example', amount: 3.56, currency: 'USD'}) # TransferRequest | Body

begin
  # Transfer Funds between source accounts
  api_instance.transfer_funds(source_account_id, transfer_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->transfer_funds: #{e}"
end
```

#### Using the transfer_funds_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_funds_with_http_info(source_account_id, transfer_request)

```ruby
begin
  # Transfer Funds between source accounts
  data, status_code, headers = api_instance.transfer_funds_with_http_info(source_account_id, transfer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->transfer_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | The &#39;from&#39; source account id, which will be debited |  |
| **transfer_request** | [**TransferRequest**](TransferRequest.md) | Body |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_funds_v3

> transfer_funds_v3(source_account_id, transfer_request2)

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

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = TODO # String | The 'from' source account id, which will be debited
transfer_request2 = VeloPayments::TransferRequest2.new({to_source_account_id: 'to_source_account_id_example', amount: 3.56, currency: 'USD'}) # TransferRequest2 | Body

begin
  # Transfer Funds between source accounts
  api_instance.transfer_funds_v3(source_account_id, transfer_request2)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->transfer_funds_v3: #{e}"
end
```

#### Using the transfer_funds_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transfer_funds_v3_with_http_info(source_account_id, transfer_request2)

```ruby
begin
  # Transfer Funds between source accounts
  data, status_code, headers = api_instance.transfer_funds_v3_with_http_info(source_account_id, transfer_request2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerApi->transfer_funds_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | [**String**](.md) | The &#39;from&#39; source account id, which will be debited |  |
| **transfer_request2** | [**TransferRequest2**](TransferRequest2.md) | Body |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

