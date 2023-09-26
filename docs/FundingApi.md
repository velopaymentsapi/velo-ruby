# VeloPayments::FundingApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_request_v2**](FundingApi.md#create_funding_request_v2) | **POST** /v2/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request |
| [**create_funding_request_v3**](FundingApi.md#create_funding_request_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request |
| [**get_funding_account_v2**](FundingApi.md#get_funding_account_v2) | **GET** /v2/fundingAccounts/{fundingAccountId} | Get Funding Account |
| [**get_funding_accounts_v2**](FundingApi.md#get_funding_accounts_v2) | **GET** /v2/fundingAccounts | Get Funding Accounts |
| [**get_funding_by_id_v1**](FundingApi.md#get_funding_by_id_v1) | **GET** /v1/fundings/{fundingId} | Get Funding |
| [**list_funding_audit_deltas**](FundingApi.md#list_funding_audit_deltas) | **GET** /v1/deltas/fundings | Get Funding Audit Delta |


## create_funding_request_v2

> create_funding_request_v2(source_account_id, funding_request_v2)

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

api_instance = VeloPayments::FundingApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id
funding_request_v2 = VeloPayments::FundingRequestV2.new({amount: 3.56}) # FundingRequestV2 | Body to included amount to be funded

begin
  # Create Funding Request
  api_instance.create_funding_request_v2(source_account_id, funding_request_v2)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->create_funding_request_v2: #{e}"
end
```

#### Using the create_funding_request_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_funding_request_v2_with_http_info(source_account_id, funding_request_v2)

```ruby
begin
  # Create Funding Request
  data, status_code, headers = api_instance.create_funding_request_v2_with_http_info(source_account_id, funding_request_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->create_funding_request_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |
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

<p>Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id
funding_request_v3 = VeloPayments::FundingRequestV3.new({funding_account_id: 'funding_account_id_example', amount: 3.56}) # FundingRequestV3 | Body to included amount to be funded

begin
  # Create Funding Request
  api_instance.create_funding_request_v3(source_account_id, funding_request_v3)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->create_funding_request_v3: #{e}"
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
  puts "Error when calling FundingApi->create_funding_request_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |
| **funding_request_v3** | [**FundingRequestV3**](FundingRequestV3.md) | Body to included amount to be funded |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_funding_account_v2

> <FundingAccountResponseV2> get_funding_account_v2(funding_account_id, opts)

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

api_instance = VeloPayments::FundingApi.new
funding_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  sensitive: true # Boolean | 
}

begin
  # Get Funding Account
  result = api_instance.get_funding_account_v2(funding_account_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->get_funding_account_v2: #{e}"
end
```

#### Using the get_funding_account_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountResponseV2>, Integer, Hash)> get_funding_account_v2_with_http_info(funding_account_id, opts)

```ruby
begin
  # Get Funding Account
  data, status_code, headers = api_instance.get_funding_account_v2_with_http_info(funding_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->get_funding_account_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_account_id** | **String** |  |  |
| **sensitive** | **Boolean** |  | [optional][default to false] |

### Return type

[**FundingAccountResponseV2**](FundingAccountResponseV2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_accounts_v2

> <ListFundingAccountsResponseV2> get_funding_accounts_v2(opts)

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

api_instance = VeloPayments::FundingApi.new
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  name: 'name_example', # String | The descriptive funding account name
  country: 'US', # String | The 2 letter ISO 3166-1 country code (upper case)
  currency: 'USD', # String | The ISO 4217 currency code
  type: 'type_example', # String | The type of funding account.
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
  puts "Error when calling FundingApi->get_funding_accounts_v2: #{e}"
end
```

#### Using the get_funding_accounts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFundingAccountsResponseV2>, Integer, Hash)> get_funding_accounts_v2_with_http_info(opts)

```ruby
begin
  # Get Funding Accounts
  data, status_code, headers = api_instance.get_funding_accounts_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFundingAccountsResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->get_funding_accounts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **name** | **String** | The descriptive funding account name | [optional] |
| **country** | **String** | The 2 letter ISO 3166-1 country code (upper case) | [optional] |
| **currency** | **String** | The ISO 4217 currency code | [optional] |
| **type** | **String** | The type of funding account. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name. | [optional][default to &#39;accountName:asc&#39;] |
| **sensitive** | **Boolean** |  | [optional][default to false] |

### Return type

[**ListFundingAccountsResponseV2**](ListFundingAccountsResponseV2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_by_id_v1

> <FundingResponse> get_funding_by_id_v1(funding_id)

Get Funding

Get Funding by Id

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingApi.new
funding_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Funding
  result = api_instance.get_funding_by_id_v1(funding_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->get_funding_by_id_v1: #{e}"
end
```

#### Using the get_funding_by_id_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingResponse>, Integer, Hash)> get_funding_by_id_v1_with_http_info(funding_id)

```ruby
begin
  # Get Funding
  data, status_code, headers = api_instance.get_funding_by_id_v1_with_http_info(funding_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingApi->get_funding_by_id_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_id** | **String** |  |  |

### Return type

[**FundingResponse**](FundingResponse.md)

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

api_instance = VeloPayments::FundingApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
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
  puts "Error when calling FundingApi->list_funding_audit_deltas: #{e}"
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
  puts "Error when calling FundingApi->list_funding_audit_deltas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
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

