# VeloPayments::PayeePaymentChannelsApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_channel_v4**](PayeePaymentChannelsApi.md#create_payment_channel_v4) | **POST** /v4/payees/{payeeId}/paymentChannels/ | Create Payment Channel |
| [**delete_payment_channel_v4**](PayeePaymentChannelsApi.md#delete_payment_channel_v4) | **DELETE** /v4/payees/{payeeId}/paymentChannels/{paymentChannelId} | Delete Payment Channel |
| [**enable_payment_channel_v4**](PayeePaymentChannelsApi.md#enable_payment_channel_v4) | **POST** /v4/payees/{payeeId}/paymentChannels/{paymentChannelId}/enable | Enable Payment Channel |
| [**get_payment_channel_v4**](PayeePaymentChannelsApi.md#get_payment_channel_v4) | **GET** /v4/payees/{payeeId}/paymentChannels/{paymentChannelId} | Get Payment Channel Details |
| [**get_payment_channels_v4**](PayeePaymentChannelsApi.md#get_payment_channels_v4) | **GET** /v4/payees/{payeeId}/paymentChannels/ | Get All Payment Channels Details |
| [**update_payment_channel_order_v4**](PayeePaymentChannelsApi.md#update_payment_channel_order_v4) | **PUT** /v4/payees/{payeeId}/paymentChannels/order | Update Payees preferred Payment Channel order |
| [**update_payment_channel_v4**](PayeePaymentChannelsApi.md#update_payment_channel_v4) | **POST** /v4/payees/{payeeId}/paymentChannels/{paymentChannelId} | Update Payment Channel |


## create_payment_channel_v4

> create_payment_channel_v4(payee_id, create_payment_channel_request_v4)

Create Payment Channel

<p>Create a payment channel</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
create_payment_channel_request_v4 = VeloPayments::CreatePaymentChannelRequestV4.new # CreatePaymentChannelRequestV4 | Post payment channel to update

begin
  # Create Payment Channel
  api_instance.create_payment_channel_v4(payee_id, create_payment_channel_request_v4)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->create_payment_channel_v4: #{e}"
end
```

#### Using the create_payment_channel_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_payment_channel_v4_with_http_info(payee_id, create_payment_channel_request_v4)

```ruby
begin
  # Create Payment Channel
  data, status_code, headers = api_instance.create_payment_channel_v4_with_http_info(payee_id, create_payment_channel_request_v4)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->create_payment_channel_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **create_payment_channel_request_v4** | [**CreatePaymentChannelRequestV4**](CreatePaymentChannelRequestV4.md) | Post payment channel to update |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_channel_v4

> delete_payment_channel_v4(payee_id, payment_channel_id)

Delete Payment Channel

<p>Delete a payees payment channel</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
payment_channel_id = '70faaff7-2c32-4b44-b27f-f0b6c484e6f3' # String | The UUID of the payment channel.

begin
  # Delete Payment Channel
  api_instance.delete_payment_channel_v4(payee_id, payment_channel_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->delete_payment_channel_v4: #{e}"
end
```

#### Using the delete_payment_channel_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_channel_v4_with_http_info(payee_id, payment_channel_id)

```ruby
begin
  # Delete Payment Channel
  data, status_code, headers = api_instance.delete_payment_channel_v4_with_http_info(payee_id, payment_channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->delete_payment_channel_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **payment_channel_id** | **String** | The UUID of the payment channel. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_payment_channel_v4

> enable_payment_channel_v4(payee_id, payment_channel_id)

Enable Payment Channel

<p>Enable a payment channel for a payee</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
payment_channel_id = '70faaff7-2c32-4b44-b27f-f0b6c484e6f3' # String | The UUID of the payment channel.

begin
  # Enable Payment Channel
  api_instance.enable_payment_channel_v4(payee_id, payment_channel_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->enable_payment_channel_v4: #{e}"
end
```

#### Using the enable_payment_channel_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> enable_payment_channel_v4_with_http_info(payee_id, payment_channel_id)

```ruby
begin
  # Enable Payment Channel
  data, status_code, headers = api_instance.enable_payment_channel_v4_with_http_info(payee_id, payment_channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->enable_payment_channel_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **payment_channel_id** | **String** | The UUID of the payment channel. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_channel_v4

> <PaymentChannelResponseV4> get_payment_channel_v4(payee_id, payment_channel_id, opts)

Get Payment Channel Details

<p>Get the payment channel details for the payee</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
payment_channel_id = '70faaff7-2c32-4b44-b27f-f0b6c484e6f3' # String | The UUID of the payment channel.
opts = {
  payable: true, # Boolean | payable if true only return the payment channel if the payee is payable
  sensitive: true # Boolean | <p>Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked.</p> <p>If set to true, and you have permission, the PII values will be returned as their original unmasked values.</p> 
}

begin
  # Get Payment Channel Details
  result = api_instance.get_payment_channel_v4(payee_id, payment_channel_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->get_payment_channel_v4: #{e}"
end
```

#### Using the get_payment_channel_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentChannelResponseV4>, Integer, Hash)> get_payment_channel_v4_with_http_info(payee_id, payment_channel_id, opts)

```ruby
begin
  # Get Payment Channel Details
  data, status_code, headers = api_instance.get_payment_channel_v4_with_http_info(payee_id, payment_channel_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentChannelResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->get_payment_channel_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **payment_channel_id** | **String** | The UUID of the payment channel. |  |
| **payable** | **Boolean** | payable if true only return the payment channel if the payee is payable | [optional] |
| **sensitive** | **Boolean** | &lt;p&gt;Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked.&lt;/p&gt; &lt;p&gt;If set to true, and you have permission, the PII values will be returned as their original unmasked values.&lt;/p&gt;  | [optional] |

### Return type

[**PaymentChannelResponseV4**](PaymentChannelResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_channels_v4

> <PaymentChannelsResponseV4> get_payment_channels_v4(payee_id, opts)

Get All Payment Channels Details

<p>Get all payment channels details for a payee</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | <p>(UUID) the id of the Payor.</p> <p>If specified the payment channels are filtered to those mapped to this payor.</p> 
  payable: true, # Boolean | payable if true only return the payment channel if the payee is payable
  sensitive: true, # Boolean | <p>Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked.</p> <p>If set to true, and you have permission, the PII values will be returned as their original unmasked values.</p> 
  ignore_payor_invite_status: true # Boolean | payable if true only return the payment channel if the payee is payable
}

begin
  # Get All Payment Channels Details
  result = api_instance.get_payment_channels_v4(payee_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->get_payment_channels_v4: #{e}"
end
```

#### Using the get_payment_channels_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentChannelsResponseV4>, Integer, Hash)> get_payment_channels_v4_with_http_info(payee_id, opts)

```ruby
begin
  # Get All Payment Channels Details
  data, status_code, headers = api_instance.get_payment_channels_v4_with_http_info(payee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentChannelsResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->get_payment_channels_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **payor_id** | **String** | &lt;p&gt;(UUID) the id of the Payor.&lt;/p&gt; &lt;p&gt;If specified the payment channels are filtered to those mapped to this payor.&lt;/p&gt;  | [optional] |
| **payable** | **Boolean** | payable if true only return the payment channel if the payee is payable | [optional] |
| **sensitive** | **Boolean** | &lt;p&gt;Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked.&lt;/p&gt; &lt;p&gt;If set to true, and you have permission, the PII values will be returned as their original unmasked values.&lt;/p&gt;  | [optional] |
| **ignore_payor_invite_status** | **Boolean** | payable if true only return the payment channel if the payee is payable | [optional] |

### Return type

[**PaymentChannelsResponseV4**](PaymentChannelsResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_channel_order_v4

> update_payment_channel_order_v4(payee_id, payment_channel_order_request_v4)

Update Payees preferred Payment Channel order

<p>Update the Payee's preferred order of payment channels by passing in just the payment channel ids. When payments are made to the payee then in the absence of any other rules (e.g. matching on currency) the first payment channel in this list will be chosen. </p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
payment_channel_order_request_v4 = VeloPayments::PaymentChannelOrderRequestV4.new({payment_channel_ids: ['70faaff7-2c32-4b44-b27f-f0b6c484e6f3']}) # PaymentChannelOrderRequestV4 | Put the payment channel ids in the preferred order

begin
  # Update Payees preferred Payment Channel order
  api_instance.update_payment_channel_order_v4(payee_id, payment_channel_order_request_v4)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->update_payment_channel_order_v4: #{e}"
end
```

#### Using the update_payment_channel_order_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_payment_channel_order_v4_with_http_info(payee_id, payment_channel_order_request_v4)

```ruby
begin
  # Update Payees preferred Payment Channel order
  data, status_code, headers = api_instance.update_payment_channel_order_v4_with_http_info(payee_id, payment_channel_order_request_v4)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->update_payment_channel_order_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **payment_channel_order_request_v4** | [**PaymentChannelOrderRequestV4**](PaymentChannelOrderRequestV4.md) | Put the payment channel ids in the preferred order |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_payment_channel_v4

> update_payment_channel_v4(payee_id, payment_channel_id, update_payment_channel_request_v4)

Update Payment Channel

<p>Update the details of the payment channel. Note payment channels are immutable. The current payment channel will be logically deleted as part of this call and replaced with new one with the correct details; this endpoint will return a Location header with a link to the new payment channel upon success. Updating a currently disabled payment channel will result in a new, fully enabled, payment channel.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeePaymentChannelsApi.new
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
payment_channel_id = '70faaff7-2c32-4b44-b27f-f0b6c484e6f3' # String | The UUID of the payment channel.
update_payment_channel_request_v4 = VeloPayments::UpdatePaymentChannelRequestV4.new # UpdatePaymentChannelRequestV4 | Post payment channel to update

begin
  # Update Payment Channel
  api_instance.update_payment_channel_v4(payee_id, payment_channel_id, update_payment_channel_request_v4)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->update_payment_channel_v4: #{e}"
end
```

#### Using the update_payment_channel_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_payment_channel_v4_with_http_info(payee_id, payment_channel_id, update_payment_channel_request_v4)

```ruby
begin
  # Update Payment Channel
  data, status_code, headers = api_instance.update_payment_channel_v4_with_http_info(payee_id, payment_channel_id, update_payment_channel_request_v4)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeePaymentChannelsApi->update_payment_channel_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. |  |
| **payment_channel_id** | **String** | The UUID of the payment channel. |  |
| **update_payment_channel_request_v4** | [**UpdatePaymentChannelRequestV4**](UpdatePaymentChannelRequestV4.md) | Post payment channel to update |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

