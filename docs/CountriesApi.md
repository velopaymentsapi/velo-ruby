# VeloPayments::CountriesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_payment_channel_rules_v1**](CountriesApi.md#list_payment_channel_rules_v1) | **GET** /v1/paymentChannelRules | List Payment Channel Country Rules |
| [**list_supported_countries_v1**](CountriesApi.md#list_supported_countries_v1) | **GET** /v1/supportedCountries | List Supported Countries |
| [**list_supported_countries_v2**](CountriesApi.md#list_supported_countries_v2) | **GET** /v2/supportedCountries | List Supported Countries |


## list_payment_channel_rules_v1

> <PaymentChannelRulesResponse> list_payment_channel_rules_v1

List Payment Channel Country Rules

List the country specific payment channel rules.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::CountriesApi.new

begin
  # List Payment Channel Country Rules
  result = api_instance.list_payment_channel_rules_v1
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling CountriesApi->list_payment_channel_rules_v1: #{e}"
end
```

#### Using the list_payment_channel_rules_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentChannelRulesResponse>, Integer, Hash)> list_payment_channel_rules_v1_with_http_info

```ruby
begin
  # List Payment Channel Country Rules
  data, status_code, headers = api_instance.list_payment_channel_rules_v1_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentChannelRulesResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling CountriesApi->list_payment_channel_rules_v1_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PaymentChannelRulesResponse**](PaymentChannelRulesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_supported_countries_v1

> <SupportedCountriesResponse> list_supported_countries_v1

List Supported Countries

<p>List the supported countries.</p> <p>This version will be retired in March 2020. Use /v2/supportedCountries</p> 

### Examples

```ruby
require 'time'
require 'velopayments'

api_instance = VeloPayments::CountriesApi.new

begin
  # List Supported Countries
  result = api_instance.list_supported_countries_v1
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling CountriesApi->list_supported_countries_v1: #{e}"
end
```

#### Using the list_supported_countries_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupportedCountriesResponse>, Integer, Hash)> list_supported_countries_v1_with_http_info

```ruby
begin
  # List Supported Countries
  data, status_code, headers = api_instance.list_supported_countries_v1_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupportedCountriesResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling CountriesApi->list_supported_countries_v1_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SupportedCountriesResponse**](SupportedCountriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_supported_countries_v2

> <SupportedCountriesResponseV2> list_supported_countries_v2

List Supported Countries

List the supported countries.

### Examples

```ruby
require 'time'
require 'velopayments'

api_instance = VeloPayments::CountriesApi.new

begin
  # List Supported Countries
  result = api_instance.list_supported_countries_v2
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling CountriesApi->list_supported_countries_v2: #{e}"
end
```

#### Using the list_supported_countries_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupportedCountriesResponseV2>, Integer, Hash)> list_supported_countries_v2_with_http_info

```ruby
begin
  # List Supported Countries
  data, status_code, headers = api_instance.list_supported_countries_v2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupportedCountriesResponseV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling CountriesApi->list_supported_countries_v2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SupportedCountriesResponseV2**](SupportedCountriesResponseV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

