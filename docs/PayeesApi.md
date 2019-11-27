# VeloPayments::PayeesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payee_by_id**](PayeesApi.md#delete_payee_by_id) | **DELETE** /v1/payees/{payeeId} | Delete Payee by Id
[**get_payee_by_id**](PayeesApi.md#get_payee_by_id) | **GET** /v1/payees/{payeeId} | Get Payee by Id
[**list_payee_changes**](PayeesApi.md#list_payee_changes) | **GET** /v1/deltas/payees | List Payee Changes
[**list_payees**](PayeesApi.md#list_payees) | **GET** /v1/payees | List Payees
[**list_payees_v3**](PayeesApi.md#list_payees_v3) | **GET** /v3/payees | List Payees
[**v1_payees_payee_id_remote_id_update_post**](PayeesApi.md#v1_payees_payee_id_remote_id_update_post) | **POST** /v1/payees/{payeeId}/remoteIdUpdate | Update Payee Remote Id



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


## list_payee_changes

> PayeeDeltaResponse list_payee_changes(payor_id, updated_since, opts)

List Payee Changes

Get a paginated response listing payee changes.

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
payor_id = 'payor_id_example' # String | The Payor ID to find associated Payees
updated_since = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 1, # Integer | Page number. Default is 1.
  page_size: 100 # Integer | Page size. Default is 100. Max allowable is 1000.
}

begin
  #List Payee Changes
  result = api_instance.list_payee_changes(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeesApi->list_payee_changes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The Payor ID to find associated Payees | 
 **updated_since** | **DateTime**| The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm | 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 100. Max allowable is 1000. | [optional] [default to 100]

### Return type

[**PayeeDeltaResponse**](PayeeDeltaResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payees

> PagedPayeeResponse list_payees(payor_id, opts)

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
  payee_country: 'payee_country_example', # String | The country of the payee - 2 letter ISO 3166-1 country code (upper case)
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
 **payee_country** | **String**| The country of the payee - 2 letter ISO 3166-1 country code (upper case) | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  | [optional] [default to &#39;displayName:asc&#39;]

### Return type

[**PagedPayeeResponse**](PagedPayeeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payees_v3

> PagedPayeeResponse2 list_payees_v3(payor_id, opts)

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
  ofac_status: VeloPayments::WatchlistStatus.new, # WatchlistStatus | The watchlistStatus of the payees.
  onboarded_status: VeloPayments::OnboardedStatus.new, # OnboardedStatus | The onboarded status of the payees.
  email: 'email_example', # String | Email address
  display_name: 'display_name_example', # String | The display name of the payees.
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  payee_type: VeloPayments::PayeeType.new, # PayeeType | The onboarded status of the payees.
  payee_country: 'payee_country_example', # String | The country of the payee - 2 letter ISO 3166-1 country code (upper case)
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'displayName:asc' # String | List of sort fields (e.g. ?sort=onboardedStatus:asc,name:asc) Default is name:asc 'name' is treated as company name for companies - last name + ',' + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
}

begin
  #List Payees
  result = api_instance.list_payees_v3(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeesApi->list_payees_v3: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **ofac_status** | [**WatchlistStatus**](.md)| The watchlistStatus of the payees. | [optional] 
 **onboarded_status** | [**OnboardedStatus**](.md)| The onboarded status of the payees. | [optional] 
 **email** | [**String**](.md)| Email address | [optional] 
 **display_name** | **String**| The display name of the payees. | [optional] 
 **remote_id** | **String**| The remote id of the payees. | [optional] 
 **payee_type** | [**PayeeType**](.md)| The onboarded status of the payees. | [optional] 
 **payee_country** | **String**| The country of the payee - 2 letter ISO 3166-1 country code (upper case) | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  | [optional] [default to &#39;displayName:asc&#39;]

### Return type

[**PagedPayeeResponse2**](PagedPayeeResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_payees_payee_id_remote_id_update_post

> v1_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request)

Update Payee Remote Id

Update the remote Id for the given Payee Id.

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
update_remote_id_request = VeloPayments::UpdateRemoteIdRequest.new # UpdateRemoteIdRequest | Request to update payee remote id

begin
  #Update Payee Remote Id
  api_instance.v1_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeesApi->v1_payees_payee_id_remote_id_update_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | 
 **update_remote_id_request** | [**UpdateRemoteIdRequest**](UpdateRemoteIdRequest.md)| Request to update payee remote id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

