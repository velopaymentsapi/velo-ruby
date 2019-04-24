# VeloPayments::CountriesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_supported_countries**](CountriesApi.md#list_supported_countries) | **GET** /v1/supportedCountries | List Supported Countries
[**v1_payment_channel_rules_get**](CountriesApi.md#v1_payment_channel_rules_get) | **GET** /v1/paymentChannelRules | List Payment Channel Country Rules



## list_supported_countries

> SupportedCountriesResponse list_supported_countries

List Supported Countries

List the supported countries.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::CountriesApi.new

begin
  #List Supported Countries
  result = api_instance.list_supported_countries
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling CountriesApi->list_supported_countries: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SupportedCountriesResponse**](SupportedCountriesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_payment_channel_rules_get

> PaymentChannelRulesResponse v1_payment_channel_rules_get

List Payment Channel Country Rules

List the country specific payment channel rules.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::CountriesApi.new

begin
  #List Payment Channel Country Rules
  result = api_instance.v1_payment_channel_rules_get
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling CountriesApi->v1_payment_channel_rules_get: #{e}"
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
