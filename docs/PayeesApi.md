# VeloPayments::PayeesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payee_by_id**](PayeesApi.md#delete_payee_by_id) | **DELETE** /v1/payees/{payeeId} | Delete Payee by Id
[**get_payee_by_id**](PayeesApi.md#get_payee_by_id) | **GET** /v1/payees/{payeeId} | Get Payee by Id
[**list_payees**](PayeesApi.md#list_payees) | **GET** /v1/payees | List Payees



## delete_payee_by_id

> delete_payee_by_id(payee_id)

Delete Payee by Id

This API will delete Payee by Id (UUID). Deletion by ID is not allowed if: * Payee ID is not found * If Payee has not been on-boarded * If Payee is in grace period * If Payee has existing payments 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = 'payee_id_example' # String | The UUID of the payee.

begin
  #Delete Payee by Id
  api_instance.delete_payee_by_id(payee_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeesApi->delete_payee_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payee_by_id

> Payee get_payee_by_id(payee_id, opts)

Get Payee by Id

Get Payee by Id

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = 'payee_id_example' # String | The UUID of the payee.
opts = {
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  #Get Payee by Id
  result = api_instance.get_payee_by_id(payee_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeesApi->get_payee_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**Payee**](Payee.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payees

> PayeeResponse list_payees(payor_id, opts)

List Payees

Get a paginated response listing the payees for a payor.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
opts = {
  ofac_status: VeloPayments::OfacStatus.new, # OfacStatus | The ofacStatus of the payees.
  onboarded_status: VeloPayments::OnboardedStatus.new, # OnboardedStatus | The onboarded status of the payees.
  email: 'email_example', # String | Email address
  display_name: 'display_name_example', # String | The display name of the payees.
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  payee_type: VeloPayments::PayeeType.new, # PayeeType | The onboarded status of the payees.
  payee_country: 'payee_country_example', # String | The country of the payees.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'displayName:asc' # String | List of sort fields (e.g. ?sort=onboardedStatus:asc,name:asc) Default is name:asc 'name' is treated as company name for companies - last name + ',' + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
}

begin
  #List Payees
  result = api_instance.list_payees(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeesApi->list_payees: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **ofac_status** | [**OfacStatus**](.md)| The ofacStatus of the payees. | [optional] 
 **onboarded_status** | [**OnboardedStatus**](.md)| The onboarded status of the payees. | [optional] 
 **email** | [**String**](.md)| Email address | [optional] 
 **display_name** | **String**| The display name of the payees. | [optional] 
 **remote_id** | **String**| The remote id of the payees. | [optional] 
 **payee_type** | [**PayeeType**](.md)| The onboarded status of the payees. | [optional] 
 **payee_country** | **String**| The country of the payees. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  | [optional] [default to &#39;displayName:asc&#39;]

### Return type

[**PayeeResponse**](PayeeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
