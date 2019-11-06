# VeloPayments::AuthApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**velo_auth**](AuthApi.md#velo_auth) | **POST** /v1/authenticate | Authentication endpoint



## velo_auth

> AuthResponse velo_auth(opts)

Authentication endpoint

Use this endpoint to obtain an access token for calling Velo Payments APIs. Use HTTP Basic Auth. String value of Basic and a Base64 endcoded string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret  (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. Basic 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = VeloPayments::AuthApi.new
opts = {
  grant_type: 'client_credentials' # String | OAuth grant type. Should use 'client_credentials'
}

begin
  #Authentication endpoint
  result = api_instance.velo_auth(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling AuthApi->velo_auth: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| OAuth grant type. Should use &#39;client_credentials&#39; | [optional] [default to &#39;client_credentials&#39;]

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

