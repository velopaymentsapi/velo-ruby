# VeloPayments::PayorsPrivateApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payor_links**](PayorsPrivateApi.md#create_payor_links) | **POST** /v1/payorLinks | Create a Payor Link



## create_payor_links

> create_payor_links(create_payor_link_request)

Create a Payor Link

This endpoint allows you to create a payor link.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: oAuthVeloBackOffice
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsPrivateApi.new
create_payor_link_request = VeloPayments::CreatePayorLinkRequest.new # CreatePayorLinkRequest | Request to create a payor link

begin
  #Create a Payor Link
  api_instance.create_payor_links(create_payor_link_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorsPrivateApi->create_payor_links: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payor_link_request** | [**CreatePayorLinkRequest**](CreatePayorLinkRequest.md)| Request to create a payor link | 

### Return type

nil (empty response body)

### Authorization

[oAuthVeloBackOffice](../README.md#oAuthVeloBackOffice)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

