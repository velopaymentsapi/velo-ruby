# VeloPayments::PayorsApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payor_by_id**](PayorsApi.md#get_payor_by_id) | **GET** /v1/payors/{payorId} | Get Payor |
| [**get_payor_by_id_v2**](PayorsApi.md#get_payor_by_id_v2) | **GET** /v2/payors/{payorId} | Get Payor |
| [**payor_add_payor_logo**](PayorsApi.md#payor_add_payor_logo) | **POST** /v1/payors/{payorId}/branding/logos | Add Logo |
| [**payor_create_api_key_request**](PayorsApi.md#payor_create_api_key_request) | **POST** /v1/payors/{payorId}/applications/{applicationId}/keys | Create API Key |
| [**payor_create_application_request**](PayorsApi.md#payor_create_application_request) | **POST** /v1/payors/{payorId}/applications | Create Application |
| [**payor_email_opt_out**](PayorsApi.md#payor_email_opt_out) | **POST** /v1/payors/{payorId}/reminderEmailsUpdate | Reminder Email Opt-Out |
| [**payor_get_branding**](PayorsApi.md#payor_get_branding) | **GET** /v1/payors/{payorId}/branding | Get Branding |
| [**payor_links**](PayorsApi.md#payor_links) | **GET** /v1/payorLinks | List Payor Links |


## get_payor_by_id

> <PayorV1> get_payor_by_id(payor_id)

Get Payor

Get a Single Payor by Id. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id

begin
  # Get Payor
  result = api_instance.get_payor_by_id(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->get_payor_by_id: #{e}"
end
```

#### Using the get_payor_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorV1>, Integer, Hash)> get_payor_by_id_with_http_info(payor_id)

```ruby
begin
  # Get Payor
  data, status_code, headers = api_instance.get_payor_by_id_with_http_info(payor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorV1>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->get_payor_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |

### Return type

[**PayorV1**](PayorV1.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payor_by_id_v2

> <PayorV2> get_payor_by_id_v2(payor_id)

Get Payor

Get a Single Payor by Id. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id

begin
  # Get Payor
  result = api_instance.get_payor_by_id_v2(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->get_payor_by_id_v2: #{e}"
end
```

#### Using the get_payor_by_id_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorV2>, Integer, Hash)> get_payor_by_id_v2_with_http_info(payor_id)

```ruby
begin
  # Get Payor
  data, status_code, headers = api_instance.get_payor_by_id_v2_with_http_info(payor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorV2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->get_payor_by_id_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |

### Return type

[**PayorV2**](PayorV2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payor_add_payor_logo

> payor_add_payor_logo(payor_id, opts)

Add Logo

Add Payor Logo. Logo file is used in your branding, and emails sent to payees.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id
opts = {
  logo: File.new('/path/to/some/file') # File | 
}

begin
  # Add Logo
  api_instance.payor_add_payor_logo(payor_id, opts)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_add_payor_logo: #{e}"
end
```

#### Using the payor_add_payor_logo_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payor_add_payor_logo_with_http_info(payor_id, opts)

```ruby
begin
  # Add Logo
  data, status_code, headers = api_instance.payor_add_payor_logo_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_add_payor_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |
| **logo** | **File** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## payor_create_api_key_request

> <PayorCreateApiKeyResponse> payor_create_api_key_request(payor_id, application_id, payor_create_api_key_request)

Create API Key

Create an an API key for the given payor Id and application Id

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id
application_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Application ID
payor_create_api_key_request = VeloPayments::PayorCreateApiKeyRequest.new({name: 'iOS Key', roles: ["payor.admin"]}) # PayorCreateApiKeyRequest | Details of application API key to create

begin
  # Create API Key
  result = api_instance.payor_create_api_key_request(payor_id, application_id, payor_create_api_key_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_create_api_key_request: #{e}"
end
```

#### Using the payor_create_api_key_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorCreateApiKeyResponse>, Integer, Hash)> payor_create_api_key_request_with_http_info(payor_id, application_id, payor_create_api_key_request)

```ruby
begin
  # Create API Key
  data, status_code, headers = api_instance.payor_create_api_key_request_with_http_info(payor_id, application_id, payor_create_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorCreateApiKeyResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_create_api_key_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |
| **application_id** | **String** | Application ID |  |
| **payor_create_api_key_request** | [**PayorCreateApiKeyRequest**](PayorCreateApiKeyRequest.md) | Details of application API key to create |  |

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

Create an application for the given Payor ID. Applications are programatic users which can be assigned unique keys.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id
payor_create_application_request = VeloPayments::PayorCreateApplicationRequest.new({name: 'SAP'}) # PayorCreateApplicationRequest | Details of application to create

begin
  # Create Application
  api_instance.payor_create_application_request(payor_id, payor_create_application_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_create_application_request: #{e}"
end
```

#### Using the payor_create_application_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payor_create_application_request_with_http_info(payor_id, payor_create_application_request)

```ruby
begin
  # Create Application
  data, status_code, headers = api_instance.payor_create_application_request_with_http_info(payor_id, payor_create_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_create_application_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |
| **payor_create_application_request** | [**PayorCreateApplicationRequest**](PayorCreateApplicationRequest.md) | Details of application to create |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payor_email_opt_out

> payor_email_opt_out(payor_id, payor_email_opt_out_request)

Reminder Email Opt-Out

Update the emailRemindersOptOut field for a Payor. This API can be used to opt out or opt into Payor Reminder emails. These emails are typically around payee events such as payees registering and onboarding. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id
payor_email_opt_out_request = VeloPayments::PayorEmailOptOutRequest.new({reminder_emails_opt_out: false}) # PayorEmailOptOutRequest | Reminder Emails Opt-Out Request

begin
  # Reminder Email Opt-Out
  api_instance.payor_email_opt_out(payor_id, payor_email_opt_out_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_email_opt_out: #{e}"
end
```

#### Using the payor_email_opt_out_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> payor_email_opt_out_with_http_info(payor_id, payor_email_opt_out_request)

```ruby
begin
  # Reminder Email Opt-Out
  data, status_code, headers = api_instance.payor_email_opt_out_with_http_info(payor_id, payor_email_opt_out_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_email_opt_out_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |
| **payor_email_opt_out_request** | [**PayorEmailOptOutRequest**](PayorEmailOptOutRequest.md) | Reminder Emails Opt-Out Request |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## payor_get_branding

> <PayorBrandingResponse> payor_get_branding(payor_id)

Get Branding

Get the payor branding details.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor Id

begin
  # Get Branding
  result = api_instance.payor_get_branding(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_get_branding: #{e}"
end
```

#### Using the payor_get_branding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorBrandingResponse>, Integer, Hash)> payor_get_branding_with_http_info(payor_id)

```ruby
begin
  # Get Branding
  data, status_code, headers = api_instance.payor_get_branding_with_http_info(payor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorBrandingResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_get_branding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor Id |  |

### Return type

[**PayorBrandingResponse**](PayorBrandingResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payor_links

> <PayorLinksResponse> payor_links(opts)

List Payor Links

This endpoint allows you to list payor links

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorsApi.new
opts = {
  descendants_of_payor: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The Payor ID from which to start the query to show all descendants
  parent_of_payor: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Look for the parent payor details for this payor id
  fields: 'fields_example' # String | List of additional Payor fields to include in the response for each Payor. The values of payorId and payorName and always included for each Payor - 'fields' allows you to add to this. Example: ```fields=primaryContactEmail,kycState``` - will include payorId+payorName+primaryContactEmail+kycState for each Payor Default if not specified is to include only payorId and payorName. The supported fields are any combination of: primaryContactEmail,kycState 
}

begin
  # List Payor Links
  result = api_instance.payor_links(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_links: #{e}"
end
```

#### Using the payor_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorLinksResponse>, Integer, Hash)> payor_links_with_http_info(opts)

```ruby
begin
  # List Payor Links
  data, status_code, headers = api_instance.payor_links_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorLinksResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorsApi->payor_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **descendants_of_payor** | **String** | The Payor ID from which to start the query to show all descendants | [optional] |
| **parent_of_payor** | **String** | Look for the parent payor details for this payor id | [optional] |
| **fields** | **String** | List of additional Payor fields to include in the response for each Payor. The values of payorId and payorName and always included for each Payor - &#39;fields&#39; allows you to add to this. Example: &#x60;&#x60;&#x60;fields&#x3D;primaryContactEmail,kycState&#x60;&#x60;&#x60; - will include payorId+payorName+primaryContactEmail+kycState for each Payor Default if not specified is to include only payorId and payorName. The supported fields are any combination of: primaryContactEmail,kycState  | [optional] |

### Return type

[**PayorLinksResponse**](PayorLinksResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

