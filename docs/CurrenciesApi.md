# VeloPayments::CurrenciesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_supported_currencies**](CurrenciesApi.md#list_supported_currencies) | **GET** /v2/currencies | List Supported Currencies



## list_supported_currencies

> SupportedCurrencyResponse list_supported_currencies

List Supported Currencies

List the supported currencies.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::CurrenciesApi.new

begin
  #List Supported Currencies
  result = api_instance.list_supported_currencies
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling CurrenciesApi->list_supported_currencies: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SupportedCurrencyResponse**](SupportedCurrencyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

