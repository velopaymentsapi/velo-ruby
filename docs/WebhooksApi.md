# VeloPayments::WebhooksApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook_v1**](WebhooksApi.md#create_webhook_v1) | **POST** /v1/webhooks | Create Webhook |
| [**get_webhook_v1**](WebhooksApi.md#get_webhook_v1) | **GET** /v1/webhooks/{webhookId} | Get details about the given webhook. |
| [**list_webhooks_v1**](WebhooksApi.md#list_webhooks_v1) | **GET** /v1/webhooks | List the details about the webhooks for the given payor. |
| [**ping_webhook_v1**](WebhooksApi.md#ping_webhook_v1) | **POST** /v1/webhooks/{webhookId}/ping |  |
| [**update_webhook_v1**](WebhooksApi.md#update_webhook_v1) | **POST** /v1/webhooks/{webhookId} | Update Webhook |


## create_webhook_v1

> create_webhook_v1(opts)

Create Webhook

Create Webhook

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
opts = {
  create_webhook_request: VeloPayments::CreateWebhookRequest.new({payor_id: 'payor_id_example', webhook_url: 'webhook_url_example', enabled: false}) # CreateWebhookRequest | 
}

begin
  # Create Webhook
  api_instance.create_webhook_v1(opts)
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_v1: #{e}"
end
```

#### Using the create_webhook_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_webhook_v1_with_http_info(opts)

```ruby
begin
  # Create Webhook
  data, status_code, headers = api_instance.create_webhook_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_webhook_v1

> <WebhookResponse> get_webhook_v1(webhook_id)

Get details about the given webhook.

Get details about the given webhook.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook id

begin
  # Get details about the given webhook.
  result = api_instance.get_webhook_v1(webhook_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_v1: #{e}"
end
```

#### Using the get_webhook_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> get_webhook_v1_with_http_info(webhook_id)

```ruby
begin
  # Get details about the given webhook.
  data, status_code, headers = api_instance.get_webhook_v1_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook id |  |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks_v1

> <WebhooksResponse> list_webhooks_v1(payor_id, opts)

List the details about the webhooks for the given payor.

List the details about the webhooks for the given payor.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor ID
opts = {
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56 # Integer | The number of results to return in a page
}

begin
  # List the details about the webhooks for the given payor.
  result = api_instance.list_webhooks_v1(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_v1: #{e}"
end
```

#### Using the list_webhooks_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksResponse>, Integer, Hash)> list_webhooks_v1_with_http_info(payor_id, opts)

```ruby
begin
  # List the details about the webhooks for the given payor.
  data, status_code, headers = api_instance.list_webhooks_v1_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor ID |  |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |

### Return type

[**WebhooksResponse**](WebhooksResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ping_webhook_v1

> <PingResponse> ping_webhook_v1(webhook_id)



### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook id

begin
  
  result = api_instance.ping_webhook_v1(webhook_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->ping_webhook_v1: #{e}"
end
```

#### Using the ping_webhook_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PingResponse>, Integer, Hash)> ping_webhook_v1_with_http_info(webhook_id)

```ruby
begin
  
  data, status_code, headers = api_instance.ping_webhook_v1_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PingResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->ping_webhook_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook id |  |

### Return type

[**PingResponse**](PingResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook_v1

> update_webhook_v1(webhook_id, opts)

Update Webhook

Update Webhook

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook id
opts = {
  update_webhook_request: VeloPayments::UpdateWebhookRequest.new # UpdateWebhookRequest | 
}

begin
  # Update Webhook
  api_instance.update_webhook_v1(webhook_id, opts)
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_v1: #{e}"
end
```

#### Using the update_webhook_v1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_webhook_v1_with_http_info(webhook_id, opts)

```ruby
begin
  # Update Webhook
  data, status_code, headers = api_instance.update_webhook_v1_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook id |  |
| **update_webhook_request** | [**UpdateWebhookRequest**](UpdateWebhookRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

