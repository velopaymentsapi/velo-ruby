# VeloPayments::FundingManagerPrivateApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_funding_account_v2**](FundingManagerPrivateApi.md#create_funding_account_v2) | **POST** /v2/fundingAccounts | Create Funding Account



## create_funding_account_v2

> create_funding_account_v2(opts)

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

api_instance = VeloPayments::FundingManagerPrivateApi.new
opts = {
  create_funding_account_request_v2: {"type":"FBO","name":"My FBO Account","payorId":"ee53e01d-c078-43fd-abd4-47e92f4a06cf","accountName":"My Account Name","accountNumber":1231231234556,"routingNumber":123456789} # CreateFundingAccountRequestV2 | 
}

begin
  #Create Funding Account
  api_instance.create_funding_account_v2(opts)
rescue VeloPayments::ApiError => e
  puts "Exception when calling FundingManagerPrivateApi->create_funding_account_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_funding_account_request_v2** | [**CreateFundingAccountRequestV2**](CreateFundingAccountRequestV2.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

