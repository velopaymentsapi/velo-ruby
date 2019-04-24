# VeloPayments::FundingManagerApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_ach_funding_request**](FundingManagerApi.md#create_ach_funding_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/achFundingRequest | Create Funding Request
[**create_funding_request**](FundingManagerApi.md#create_funding_request) | **POST** /v2/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request
[**get_fundings**](FundingManagerApi.md#get_fundings) | **GET** /v1/paymentaudit/fundings | Get Fundings for Payor
[**get_source_account**](FundingManagerApi.md#get_source_account) | **GET** /v1/sourceAccounts/{sourceAccountId} | Get details about given source account.
[**get_source_accounts**](FundingManagerApi.md#get_source_accounts) | **GET** /v1/sourceAccounts | Get list of source accounts
[**set_payor_funding_bank_details**](FundingManagerApi.md#set_payor_funding_bank_details) | **POST** /v1/payors/{payorId}/payorFundingBankDetailsUpdate | Set Funding Bank Details



## create_ach_funding_request

> create_ach_funding_request(source_account_id, funding_request)

Create Funding Request

Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo  (202 - accepted, 400 - invalid request body, 404 - source account not found).

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = 'source_account_id_example' # String | Source account id
funding_request = VeloPayments::FundingRequest.new # FundingRequest | Body to included ammount to be funded

begin
  #Create Funding Request
  api_instance.create_ach_funding_request(source_account_id, funding_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerApi->create_ach_funding_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_account_id** | [**String**](.md)| Source account id | 
 **funding_request** | [**FundingRequest**](FundingRequest.md)| Body to included ammount to be funded | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_funding_request

> create_funding_request(source_account_id, funding_request2)

Create Funding Request

Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo  (202 - accepted, 400 - invalid request body, 404 - source account not found).

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = 'source_account_id_example' # String | Source account id
funding_request2 = VeloPayments::FundingRequest2.new # FundingRequest2 | Body to included ammount to be funded

begin
  #Create Funding Request
  api_instance.create_funding_request(source_account_id, funding_request2)
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerApi->create_funding_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_account_id** | [**String**](.md)| Source account id | 
 **funding_request2** | [**FundingRequest2**](FundingRequest2.md)| Body to included ammount to be funded | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_fundings

> GetFundingsResponse get_fundings(opts)

Get Fundings for Payor

Get a list of Fundings for a payor. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  payor_id: 'payor_id_example', # String | The account owner Payor ID
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'sort_example' # String | List of sort fields. Example: ```?sort=destinationCurrency:asc,destinationAmount:asc``` Default is no sort. The supported sort fields are: dateTime and amount. 
}

begin
  #Get Fundings for Payor
  result = api_instance.get_fundings(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerApi->get_fundings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount.  | [optional] 

### Return type

[**GetFundingsResponse**](GetFundingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_account

> SourceAccountResponse get_source_account(source_account_id)

Get details about given source account.

Get details about given source account.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
source_account_id = 'source_account_id_example' # String | Source account id

begin
  #Get details about given source account.
  result = api_instance.get_source_account(source_account_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerApi->get_source_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_account_id** | [**String**](.md)| Source account id | 

### Return type

[**SourceAccountResponse**](SourceAccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_source_accounts

> ListSourceAccountResponse get_source_accounts(opts)

Get list of source accounts

List source accounts.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
opts = {
  physical_account_name: 'physical_account_name_example', # String | Physical Account Name
  payor_id: 'payor_id_example', # String | The account owner Payor ID
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'sort_example' # String | Sort String
}

begin
  #Get list of source accounts
  result = api_instance.get_source_accounts(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerApi->get_source_accounts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **physical_account_name** | **String**| Physical Account Name | [optional] 
 **payor_id** | [**String**](.md)| The account owner Payor ID | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| Sort String | [optional] 

### Return type

[**ListSourceAccountResponse**](ListSourceAccountResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_payor_funding_bank_details

> set_payor_funding_bank_details(payor_id, payor_funding_bank_details_update)

Set Funding Bank Details

This API allows you to set or update the funding details for the given Payor ID. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::FundingManagerApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
payor_funding_bank_details_update = VeloPayments::PayorFundingBankDetailsUpdate.new # PayorFundingBankDetailsUpdate | Update Funding bank details of given Payor Id

begin
  #Set Funding Bank Details
  api_instance.set_payor_funding_bank_details(payor_id, payor_funding_bank_details_update)
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerApi->set_payor_funding_bank_details: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **payor_funding_bank_details_update** | [**PayorFundingBankDetailsUpdate**](PayorFundingBankDetailsUpdate.md)| Update Funding bank details of given Payor Id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

