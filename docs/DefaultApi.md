# VeloPayments::DefaultApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_funding_account**](DefaultApi.md#create_funding_account) | **POST** /v1/fundingAccounts | Create Funding Account



## create_funding_account

> create_funding_account(opts)

Create Funding Account

Create Funding Account

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::DefaultApi.new
opts = {
  create_funding_account_request: VeloPayments::CreateFundingAccountRequest.new # CreateFundingAccountRequest | 
}

begin
  #Create Funding Account
  api_instance.create_funding_account(opts)
rescue VeloPayments::ApiError => e
  puts "Exception when calling DefaultApi->create_funding_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_funding_account_request** | [**CreateFundingAccountRequest**](CreateFundingAccountRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

