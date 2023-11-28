# VeloPayments::FundingManagerPrivateApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_account_v2**](FundingManagerPrivateApi.md#create_funding_account_v2) | **POST** /v2/fundingAccounts | Create Funding Account |
| [**delete_source_account_v3**](FundingManagerPrivateApi.md#delete_source_account_v3) | **DELETE** /v3/sourceAccounts/{sourceAccountId} | Delete a source account by ID |


## create_funding_account_v2

> create_funding_account_v2(opts)

Create Funding Account

Create Funding Account

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerPrivateApi.new
opts = {
  create_funding_account_request_v2: VeloPayments::CreateFundingAccountRequestV2.new({type: 'FBO', name: 'name_example', payor_id: 'payor_id_example', country_code: 'US'}) # CreateFundingAccountRequestV2 | 
}

begin
  # Create Funding Account
  api_instance.create_funding_account_v2(opts)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerPrivateApi->create_funding_account_v2: #{e}"
end
```

#### Using the create_funding_account_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_funding_account_v2_with_http_info(opts)

```ruby
begin
  # Create Funding Account
  data, status_code, headers = api_instance.create_funding_account_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerPrivateApi->create_funding_account_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_funding_account_request_v2** | [**CreateFundingAccountRequestV2**](CreateFundingAccountRequestV2.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_source_account_v3

> delete_source_account_v3(source_account_id)

Delete a source account by ID

Mark a source account as deleted by ID

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerPrivateApi.new
source_account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Source account id

begin
  # Delete a source account by ID
  api_instance.delete_source_account_v3(source_account_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerPrivateApi->delete_source_account_v3: #{e}"
end
```

#### Using the delete_source_account_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_source_account_v3_with_http_info(source_account_id)

```ruby
begin
  # Delete a source account by ID
  data, status_code, headers = api_instance.delete_source_account_v3_with_http_info(source_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling FundingManagerPrivateApi->delete_source_account_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_id** | **String** | Source account id |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

