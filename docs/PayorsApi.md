# VeloPayments::PayorsApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payor_by_id**](PayorsApi.md#get_payor_by_id) | **GET** /v1/payors/{payorId} | Get Payor
[**payor_add_payor_logo**](PayorsApi.md#payor_add_payor_logo) | **POST** /v1/payors/{payorId}/branding/logos | Add Logo
[**payor_email_opt_out**](PayorsApi.md#payor_email_opt_out) | **POST** /v1/payors/{payorId}/reminderEmailsUpdate | Reminder Email Opt-Out
[**payor_get_branding**](PayorsApi.md#payor_get_branding) | **GET** /v1/payors/{payorId}/branding | Get Branding



## get_payor_by_id

> Payor get_payor_by_id(payor_id)

Get Payor

Get a Single Payor by Id (200 - OK, 404 - payor not found). 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID

begin
  #Get Payor
  result = api_instance.get_payor_by_id(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorsApi->get_payor_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 

### Return type

[**Payor**](Payor.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payor_add_payor_logo

> payor_add_payor_logo(payor_id, opts)

Add Logo

Add Payor Logo

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
opts = {
  logo: File.new('/path/to/file') # File | 
}

begin
  #Add Logo
  api_instance.payor_add_payor_logo(payor_id, opts)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorsApi->payor_add_payor_logo: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **logo** | **File**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## payor_email_opt_out

> payor_email_opt_out(payor_id, payor_email_opt_out_request)

Reminder Email Opt-Out

Update the emailRemindersOptOut field for a Payor. This API can be used to opt out or opt into Payor Reminder emails. These emails are typically around payee events such as payees registering and onboarding. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
payor_email_opt_out_request = VeloPayments::PayorEmailOptOutRequest.new # PayorEmailOptOutRequest | Details of application API key to create

begin
  #Reminder Email Opt-Out
  api_instance.payor_email_opt_out(payor_id, payor_email_opt_out_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorsApi->payor_email_opt_out: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **payor_email_opt_out_request** | [**PayorEmailOptOutRequest**](PayorEmailOptOutRequest.md)| Details of application API key to create | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## payor_get_branding

> PayorBrandingResponse payor_get_branding(payor_id)

Get Branding

Get the payor branding details.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID

begin
  #Get Branding
  result = api_instance.payor_get_branding(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayorsApi->payor_get_branding: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 

### Return type

[**PayorBrandingResponse**](PayorBrandingResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

