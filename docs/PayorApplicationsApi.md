# VeloPayments::PayorApplicationsApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payor_create_api_key_request**](PayorApplicationsApi.md#payor_create_api_key_request) | **POST** /v1/payors/{payorId}/applications/{applicationId}/keys | Create API Key
[**payor_create_application_request**](PayorApplicationsApi.md#payor_create_application_request) | **POST** /v1/payors/{payorId}/applications | Create Application



## payor_create_api_key_request

> PayorCreateApiKeyResponse payor_create_api_key_request(payor_id, application_id, payor_create_api_key_request)

Create API Key

Create an an API key for the given payor Id and application Id

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorApplicationsApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
application_id = 'application_id_example' # String | Application ID
payor_create_api_key_request = VeloPayments::PayorCreateApiKeyRequest.new # PayorCreateApiKeyRequest | Details of application API key to create

begin
  #Create API Key
  result = api_instance.payor_create_api_key_request(payor_id, application_id, payor_create_api_key_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorApplicationsApi->payor_create_api_key_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **application_id** | [**String**](.md)| Application ID | 
 **payor_create_api_key_request** | [**PayorCreateApiKeyRequest**](PayorCreateApiKeyRequest.md)| Details of application API key to create | 

### Return type

[**PayorCreateApiKeyResponse**](PayorCreateApiKeyResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payor_create_application_request

> payor_create_application_request(payor_id, payor_create_application_request)

Create Application

Create an application for the given Payor ID

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorApplicationsApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
payor_create_application_request = VeloPayments::PayorCreateApplicationRequest.new # PayorCreateApplicationRequest | Details of application to create

begin
  #Create Application
  api_instance.payor_create_application_request(payor_id, payor_create_application_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorApplicationsApi->payor_create_application_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **payor_create_application_request** | [**PayorCreateApplicationRequest**](PayorCreateApplicationRequest.md)| Details of application to create | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

