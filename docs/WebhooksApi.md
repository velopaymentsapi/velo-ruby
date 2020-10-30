# VeloPayments::WebhooksApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook_v1**](WebhooksApi.md#create_webhook_v1) | **POST** /v1/webhooks | Create Webhook
[**get_webhook_v1**](WebhooksApi.md#get_webhook_v1) | **GET** /v1/webhooks/{webhookId} | Get details about the given webhook.
[**list_webhooks_v1**](WebhooksApi.md#list_webhooks_v1) | **GET** /v1/webhooks | List the details about the webhooks for the given payor.
[**ping_webhook_v1**](WebhooksApi.md#ping_webhook_v1) | **POST** /v1/webhooks/{webhookId}/ping | 
[**update_webhook_v1**](WebhooksApi.md#update_webhook_v1) | **POST** /v1/webhooks/{webhookId} | Update Webhook



## create_webhook_v1

> create_webhook_v1(opts)

Create Webhook

Create Webhook

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
opts = {
  create_webhook_request: VeloPayments::CreateWebhookRequest.new # CreateWebhookRequest | 
}

begin
  #Create Webhook
  api_instance.create_webhook_v1(opts)
rescue VeloPayments::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_webhook_v1

> WebhookResponse get_webhook_v1(webhook_id)

Get details about the given webhook.

Get details about the given webhook.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook id

begin
  #Get details about the given webhook.
  result = api_instance.get_webhook_v1(webhook_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| Webhook id | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks_v1

> WebhooksResponse list_webhooks_v1(payor_id, opts)

List the details about the webhooks for the given payor.

List the details about the webhooks for the given payor.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
payor_id = 'payor_id_example' # String | The Payor ID
opts = {
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25 # Integer | The number of results to return in a page
}

begin
  #List the details about the webhooks for the given payor.
  result = api_instance.list_webhooks_v1(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling WebhooksApi->list_webhooks_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The Payor ID | 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]

### Return type

[**WebhooksResponse**](WebhooksResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ping_webhook_v1

> PingResponse ping_webhook_v1(webhook_id)



### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook id

begin
  result = api_instance.ping_webhook_v1(webhook_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling WebhooksApi->ping_webhook_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| Webhook id | 

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

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook id
opts = {
  update_webhook_request: VeloPayments::UpdateWebhookRequest.new # UpdateWebhookRequest | 
}

begin
  #Update Webhook
  api_instance.update_webhook_v1(webhook_id, opts)
rescue VeloPayments::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| Webhook id | 
 **update_webhook_request** | [**UpdateWebhookRequest**](UpdateWebhookRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

