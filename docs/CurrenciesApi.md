# VeloPayments::CurrenciesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_supported_currencies_v2**](CurrenciesApi.md#list_supported_currencies_v2) | **GET** /v2/currencies | List Supported Currencies



## list_supported_currencies_v2

> SupportedCurrencyResponseV2 list_supported_currencies_v2

List Supported Currencies

List the supported currencies.

### Example

```ruby
# load the gem
require 'velopayments'

api_instance = VeloPayments::CurrenciesApi.new

begin
  #List Supported Currencies
  result = api_instance.list_supported_currencies_v2
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling CurrenciesApi->list_supported_currencies_v2: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SupportedCurrencyResponseV2**](SupportedCurrencyResponseV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

