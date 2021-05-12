# VeloPayments::CurrenciesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_supported_currencies_v2**](CurrenciesApi.md#list_supported_currencies_v2) | **GET** /v2/currencies | List Supported Currencies |


## list_supported_currencies_v2

> <SupportedCurrencyResponseV2> list_supported_currencies_v2

List Supported Currencies

List the supported currencies.

### Examples

```ruby
require 'time'
require 'velopayments'

api_instance = VeloPayments::CurrenciesApi.new

begin
  # List Supported Currencies
  result = api_instance.list_supported_currencies_v2
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling CurrenciesApi->list_supported_currencies_v2: #{e}"
end
```

#### Using the list_supported_currencies_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupportedCurrencyResponseV2>, Integer, Hash)> list_supported_currencies_v2_with_http_info

```ruby
begin
  # List Supported Currencies
  data, status_code, headers = api_instance.list_supported_currencies_v2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupportedCurrencyResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling CurrenciesApi->list_supported_currencies_v2_with_http_info: #{e}"
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

