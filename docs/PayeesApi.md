# VeloPayments::PayeesApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_payee_by_id_v3**](PayeesApi.md#delete_payee_by_id_v3) | **DELETE** /v3/payees/{payeeId} | Delete Payee by Id |
| [**delete_payee_by_id_v4**](PayeesApi.md#delete_payee_by_id_v4) | **DELETE** /v4/payees/{payeeId} | Delete Payee by Id |
| [**get_payee_by_id_v3**](PayeesApi.md#get_payee_by_id_v3) | **GET** /v3/payees/{payeeId} | Get Payee by Id |
| [**get_payee_by_id_v4**](PayeesApi.md#get_payee_by_id_v4) | **GET** /v4/payees/{payeeId} | Get Payee by Id |
| [**list_payee_changes_v3**](PayeesApi.md#list_payee_changes_v3) | **GET** /v3/payees/deltas | List Payee Changes |
| [**list_payee_changes_v4**](PayeesApi.md#list_payee_changes_v4) | **GET** /v4/payees/deltas | List Payee Changes |
| [**list_payees_v3**](PayeesApi.md#list_payees_v3) | **GET** /v3/payees | List Payees |
| [**list_payees_v4**](PayeesApi.md#list_payees_v4) | **GET** /v4/payees | List Payees |
| [**payee_details_update_v3**](PayeesApi.md#payee_details_update_v3) | **POST** /v3/payees/{payeeId}/payeeDetailsUpdate | Update Payee Details |
| [**payee_details_update_v4**](PayeesApi.md#payee_details_update_v4) | **POST** /v4/payees/{payeeId}/payeeDetailsUpdate | Update Payee Details |
| [**v3_payees_payee_id_remote_id_update_post**](PayeesApi.md#v3_payees_payee_id_remote_id_update_post) | **POST** /v3/payees/{payeeId}/remoteIdUpdate | Update Payee Remote Id |
| [**v4_payees_payee_id_remote_id_update_post**](PayeesApi.md#v4_payees_payee_id_remote_id_update_post) | **POST** /v4/payees/{payeeId}/remoteIdUpdate | Update Payee Remote Id |


## delete_payee_by_id_v3

> delete_payee_by_id_v3(payee_id)

Delete Payee by Id

<p>Use v4 instead</p> <p>This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:</p> <p>* Payee ID is not found</p> <p>* If Payee has not been on-boarded</p> <p>* If Payee is in grace period</p> <p>* If Payee has existing payments</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.

begin
  # Delete Payee by Id
  api_instance.delete_payee_by_id_v3(payee_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->delete_payee_by_id_v3: #{e}"
end
```

#### Using the delete_payee_by_id_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payee_by_id_v3_with_http_info(payee_id)

```ruby
begin
  # Delete Payee by Id
  data, status_code, headers = api_instance.delete_payee_by_id_v3_with_http_info(payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->delete_payee_by_id_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_payee_by_id_v4

> delete_payee_by_id_v4(payee_id)

Delete Payee by Id

<p>This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:</p> <p>* Payee ID is not found</p> <p>* If Payee has not been on-boarded</p> <p>* If Payee is in grace period</p> <p>* If Payee has existing payments</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.

begin
  # Delete Payee by Id
  api_instance.delete_payee_by_id_v4(payee_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->delete_payee_by_id_v4: #{e}"
end
```

#### Using the delete_payee_by_id_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payee_by_id_v4_with_http_info(payee_id)

```ruby
begin
  # Delete Payee by Id
  data, status_code, headers = api_instance.delete_payee_by_id_v4_with_http_info(payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->delete_payee_by_id_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payee_by_id_v3

> <PayeeDetailResponse> get_payee_by_id_v3(payee_id, opts)

Get Payee by Id

<p>Use v4 instead</p> <p>Get Payee by Id</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
opts = {
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # Get Payee by Id
  result = api_instance.get_payee_by_id_v3(payee_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->get_payee_by_id_v3: #{e}"
end
```

#### Using the get_payee_by_id_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeDetailResponse>, Integer, Hash)> get_payee_by_id_v3_with_http_info(payee_id, opts)

```ruby
begin
  # Get Payee by Id
  data, status_code, headers = api_instance.get_payee_by_id_v3_with_http_info(payee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeDetailResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->get_payee_by_id_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**PayeeDetailResponse**](PayeeDetailResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payee_by_id_v4

> <PayeeDetailResponse2> get_payee_by_id_v4(payee_id, opts)

Get Payee by Id

Get Payee by Id

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
opts = {
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # Get Payee by Id
  result = api_instance.get_payee_by_id_v4(payee_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->get_payee_by_id_v4: #{e}"
end
```

#### Using the get_payee_by_id_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeDetailResponse2>, Integer, Hash)> get_payee_by_id_v4_with_http_info(payee_id, opts)

```ruby
begin
  # Get Payee by Id
  data, status_code, headers = api_instance.get_payee_by_id_v4_with_http_info(payee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeDetailResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->get_payee_by_id_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**PayeeDetailResponse2**](PayeeDetailResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payee_changes_v3

> <PayeeDeltaResponse> list_payee_changes_v3(payor_id, updated_since, opts)

List Payee Changes

<p>Use v4 instead</p> <p>Get a paginated response listing payee changes.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor ID to find associated Payees
updated_since = Time.parse('2013-10-20T19:20:30+01:00') # Time | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 1, # Integer | Page number. Default is 1.
  page_size: 100 # Integer | Page size. Default is 100. Max allowable is 1000.
}

begin
  # List Payee Changes
  result = api_instance.list_payee_changes_v3(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payee_changes_v3: #{e}"
end
```

#### Using the list_payee_changes_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeDeltaResponse>, Integer, Hash)> list_payee_changes_v3_with_http_info(payor_id, updated_since, opts)

```ruby
begin
  # List Payee Changes
  data, status_code, headers = api_instance.list_payee_changes_v3_with_http_info(payor_id, updated_since, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeDeltaResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payee_changes_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor ID to find associated Payees |  |
| **updated_since** | **Time** | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm |  |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 100. Max allowable is 1000. | [optional][default to 100] |

### Return type

[**PayeeDeltaResponse**](PayeeDeltaResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payee_changes_v4

> <PayeeDeltaResponse2> list_payee_changes_v4(payor_id, updated_since, opts)

List Payee Changes

Get a paginated response listing payee changes (updated since a particular time) to a limited set of fields: - dbaName - displayName - email - onboardedStatus - payeeCountry - payeeId - remoteId 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor ID to find associated Payees
updated_since = Time.parse('2013-10-20T19:20:30+01:00') # Time | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 1, # Integer | Page number. Default is 1.
  page_size: 100 # Integer | Page size. Default is 100. Max allowable is 1000.
}

begin
  # List Payee Changes
  result = api_instance.list_payee_changes_v4(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payee_changes_v4: #{e}"
end
```

#### Using the list_payee_changes_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeDeltaResponse2>, Integer, Hash)> list_payee_changes_v4_with_http_info(payor_id, updated_since, opts)

```ruby
begin
  # List Payee Changes
  data, status_code, headers = api_instance.list_payee_changes_v4_with_http_info(payor_id, updated_since, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeDeltaResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payee_changes_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor ID to find associated Payees |  |
| **updated_since** | **Time** | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm |  |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 100. Max allowable is 1000. | [optional][default to 100] |

### Return type

[**PayeeDeltaResponse2**](PayeeDeltaResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payees_v3

> <PagedPayeeResponse> list_payees_v3(payor_id, opts)

List Payees

<p>Use v4 instead</p> Get a paginated response listing the payees for a payor. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID
opts = {
  watchlist_status: VeloPayments::WatchlistStatus::NONE, # WatchlistStatus | The watchlistStatus of the payees.
  disabled: true, # Boolean | Payee disabled
  onboarded_status: VeloPayments::OnboardedStatus::CREATED, # OnboardedStatus | The onboarded status of the payees.
  email: 'bob@example.com', # String | Email address
  display_name: 'Bob Smith', # String | The display name of the payees.
  remote_id: 'remoteId123', # String | The remote id of the payees.
  payee_type: VeloPayments::PayeeType2::INDIVIDUAL, # PayeeType2 | The onboarded status of the payees.
  payee_country: 'US', # String | The country of the payee - 2 letter ISO 3166-1 country code (upper case)
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'displayName:asc' # String | List of sort fields (e.g. ?sort=onboardedStatus:asc,name:asc) Default is name:asc 'name' is treated as company name for companies - last name + ',' + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
}

begin
  # List Payees
  result = api_instance.list_payees_v3(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payees_v3: #{e}"
end
```

#### Using the list_payees_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagedPayeeResponse>, Integer, Hash)> list_payees_v3_with_http_info(payor_id, opts)

```ruby
begin
  # List Payees
  data, status_code, headers = api_instance.list_payees_v3_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPayeeResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payees_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **watchlist_status** | [**WatchlistStatus**](.md) | The watchlistStatus of the payees. | [optional] |
| **disabled** | **Boolean** | Payee disabled | [optional] |
| **onboarded_status** | [**OnboardedStatus**](.md) | The onboarded status of the payees. | [optional] |
| **email** | **String** | Email address | [optional] |
| **display_name** | **String** | The display name of the payees. | [optional] |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **payee_type** | [**PayeeType2**](.md) | The onboarded status of the payees. | [optional] |
| **payee_country** | **String** | The country of the payee - 2 letter ISO 3166-1 country code (upper case) | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 25. Max allowable is 100. | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  | [optional][default to &#39;displayName:asc&#39;] |

### Return type

[**PagedPayeeResponse**](PagedPayeeResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payees_v4

> <PagedPayeeResponse2> list_payees_v4(payor_id, opts)

List Payees

Get a paginated response listing the payees for a payor.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID
opts = {
  watchlist_status: VeloPayments::WatchlistStatus::NONE, # WatchlistStatus | The watchlistStatus of the payees.
  disabled: true, # Boolean | Payee disabled
  onboarded_status: VeloPayments::OnboardedStatus::CREATED, # OnboardedStatus | The onboarded status of the payees.
  email: 'bob@example.com', # String | Email address
  display_name: 'Bob Smith', # String | The display name of the payees.
  remote_id: 'remoteId123', # String | The remote id of the payees.
  payee_type: VeloPayments::PayeeType2::INDIVIDUAL, # PayeeType2 | The onboarded status of the payees.
  payee_country: 'US', # String | The country of the payee - 2 letter ISO 3166-1 country code (upper case)
  ofac_status: VeloPayments::OfacStatus::PENDING, # OfacStatus | The ofacStatus of the payees.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'displayName:asc' # String | List of sort fields (e.g. ?sort=onboardedStatus:asc,name:asc) Default is name:asc 'name' is treated as company name for companies - last name + ',' + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
}

begin
  # List Payees
  result = api_instance.list_payees_v4(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payees_v4: #{e}"
end
```

#### Using the list_payees_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagedPayeeResponse2>, Integer, Hash)> list_payees_v4_with_http_info(payor_id, opts)

```ruby
begin
  # List Payees
  data, status_code, headers = api_instance.list_payees_v4_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPayeeResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->list_payees_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **watchlist_status** | [**WatchlistStatus**](.md) | The watchlistStatus of the payees. | [optional] |
| **disabled** | **Boolean** | Payee disabled | [optional] |
| **onboarded_status** | [**OnboardedStatus**](.md) | The onboarded status of the payees. | [optional] |
| **email** | **String** | Email address | [optional] |
| **display_name** | **String** | The display name of the payees. | [optional] |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **payee_type** | [**PayeeType2**](.md) | The onboarded status of the payees. | [optional] |
| **payee_country** | **String** | The country of the payee - 2 letter ISO 3166-1 country code (upper case) | [optional] |
| **ofac_status** | [**OfacStatus**](.md) | The ofacStatus of the payees. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 25. Max allowable is 100. | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  | [optional][default to &#39;displayName:asc&#39;] |

### Return type

[**PagedPayeeResponse2**](PagedPayeeResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payee_details_update_v3

> payee_details_update_v3(payee_id, update_payee_details_request)

Update Payee Details

<p>Use v4 instead</p> <p>Update payee details for the given Payee Id.<p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
update_payee_details_request = VeloPayments::UpdatePayeeDetailsRequest.new # UpdatePayeeDetailsRequest | Request to update payee details

begin
  # Update Payee Details
  api_instance.payee_details_update_v3(payee_id, update_payee_details_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->payee_details_update_v3: #{e}"
end
```

#### Using the payee_details_update_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payee_details_update_v3_with_http_info(payee_id, update_payee_details_request)

```ruby
begin
  # Update Payee Details
  data, status_code, headers = api_instance.payee_details_update_v3_with_http_info(payee_id, update_payee_details_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->payee_details_update_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **update_payee_details_request** | [**UpdatePayeeDetailsRequest**](UpdatePayeeDetailsRequest.md) | Request to update payee details |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payee_details_update_v4

> payee_details_update_v4(payee_id, update_payee_details_request2)

Update Payee Details

<p>Update payee details for the given Payee Id.</p> <p>Payors may only update the payee details if the payee has not yet onboarded</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
update_payee_details_request2 = VeloPayments::UpdatePayeeDetailsRequest2.new # UpdatePayeeDetailsRequest2 | Request to update payee details

begin
  # Update Payee Details
  api_instance.payee_details_update_v4(payee_id, update_payee_details_request2)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->payee_details_update_v4: #{e}"
end
```

#### Using the payee_details_update_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payee_details_update_v4_with_http_info(payee_id, update_payee_details_request2)

```ruby
begin
  # Update Payee Details
  data, status_code, headers = api_instance.payee_details_update_v4_with_http_info(payee_id, update_payee_details_request2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->payee_details_update_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **update_payee_details_request2** | [**UpdatePayeeDetailsRequest2**](UpdatePayeeDetailsRequest2.md) | Request to update payee details |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v3_payees_payee_id_remote_id_update_post

> v3_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request)

Update Payee Remote Id

<p>Use v4 instead</p> <p>Update the remote Id for the given Payee Id.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
update_remote_id_request = VeloPayments::UpdateRemoteIdRequest.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e', remote_id: 'remoteId123'}) # UpdateRemoteIdRequest | Request to update payee remote id v3

begin
  # Update Payee Remote Id
  api_instance.v3_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->v3_payees_payee_id_remote_id_update_post: #{e}"
end
```

#### Using the v3_payees_payee_id_remote_id_update_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v3_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request)

```ruby
begin
  # Update Payee Remote Id
  data, status_code, headers = api_instance.v3_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->v3_payees_payee_id_remote_id_update_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **update_remote_id_request** | [**UpdateRemoteIdRequest**](UpdateRemoteIdRequest.md) | Request to update payee remote id v3 |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v4_payees_payee_id_remote_id_update_post

> v4_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request2)

Update Payee Remote Id

<p>Update the remote Id for the given Payee Id.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeesApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
update_remote_id_request2 = VeloPayments::UpdateRemoteIdRequest2.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e', remote_id: 'remoteId123'}) # UpdateRemoteIdRequest2 | Request to update payee remote id v4

begin
  # Update Payee Remote Id
  api_instance.v4_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request2)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->v4_payees_payee_id_remote_id_update_post: #{e}"
end
```

#### Using the v4_payees_payee_id_remote_id_update_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v4_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request2)

```ruby
begin
  # Update Payee Remote Id
  data, status_code, headers = api_instance.v4_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeesApi->v4_payees_payee_id_remote_id_update_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **update_remote_id_request2** | [**UpdateRemoteIdRequest2**](UpdateRemoteIdRequest2.md) | Request to update payee remote id v4 |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

