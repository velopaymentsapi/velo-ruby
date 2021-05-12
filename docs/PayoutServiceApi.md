# VeloPayments::PayoutServiceApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_quote_for_payout_v3**](PayoutServiceApi.md#create_quote_for_payout_v3) | **POST** /v3/payouts/{payoutId}/quote | Create a quote for the payout |
| [**get_payments_for_payout_v3**](PayoutServiceApi.md#get_payments_for_payout_v3) | **GET** /v3/payouts/{payoutId}/payments | Retrieve payments for a payout |
| [**get_payout_summary_v3**](PayoutServiceApi.md#get_payout_summary_v3) | **GET** /v3/payouts/{payoutId} | Get Payout Summary |
| [**instruct_payout_v3**](PayoutServiceApi.md#instruct_payout_v3) | **POST** /v3/payouts/{payoutId} | Instruct Payout |
| [**submit_payout_v3**](PayoutServiceApi.md#submit_payout_v3) | **POST** /v3/payouts | Submit Payout |
| [**withdraw_payment**](PayoutServiceApi.md#withdraw_payment) | **POST** /v1/payments/{paymentId}/withdraw | Withdraw a Payment |
| [**withdraw_payout_v3**](PayoutServiceApi.md#withdraw_payout_v3) | **DELETE** /v3/payouts/{payoutId} | Withdraw Payout |


## create_quote_for_payout_v3

> <QuoteResponseV3> create_quote_for_payout_v3(payout_id)

Create a quote for the payout

Create quote for a payout

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
payout_id = TODO # String | Id of the payout

begin
  # Create a quote for the payout
  result = api_instance.create_quote_for_payout_v3(payout_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->create_quote_for_payout_v3: #{e}"
end
```

#### Using the create_quote_for_payout_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteResponseV3>, Integer, Hash)> create_quote_for_payout_v3_with_http_info(payout_id)

```ruby
begin
  # Create a quote for the payout
  data, status_code, headers = api_instance.create_quote_for_payout_v3_with_http_info(payout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->create_quote_for_payout_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | [**String**](.md) | Id of the payout |  |

### Return type

[**QuoteResponseV3**](QuoteResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments_for_payout_v3

> <PagedPaymentsResponseV3> get_payments_for_payout_v3(payout_id, opts)

Retrieve payments for a payout

Retrieve payments for a payout

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
payout_id = TODO # String | Id of the payout
opts = {
  status: 'ACCEPTED', # String | Payment Status * ACCEPTED: any payment which was accepted at submission time (status may have changed since) * REJECTED: any payment rejected by initial submission processing * WITHDRAWN: any payment which has been withdrawn * WITHDRAWABLE: any payment eligible for withdrawal 
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  payor_payment_id: 'payor_payment_id_example', # String | Payor's Id of the Payment
  source_account_name: 'source_account_name_example', # String | Physical Account Name
  transmission_type: 'ACH', # String | Transmission Type * ACH * SAME_DAY_ACH * WIRE 
  payment_memo: 'payment_memo_example', # String | Payment Memo of the Payment
  page_size: 56, # Integer | The number of results to return in a page
  page: 56 # Integer | Page number. Default is 1.
}

begin
  # Retrieve payments for a payout
  result = api_instance.get_payments_for_payout_v3(payout_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->get_payments_for_payout_v3: #{e}"
end
```

#### Using the get_payments_for_payout_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagedPaymentsResponseV3>, Integer, Hash)> get_payments_for_payout_v3_with_http_info(payout_id, opts)

```ruby
begin
  # Retrieve payments for a payout
  data, status_code, headers = api_instance.get_payments_for_payout_v3_with_http_info(payout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPaymentsResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->get_payments_for_payout_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | [**String**](.md) | Id of the payout |  |
| **status** | **String** | Payment Status * ACCEPTED: any payment which was accepted at submission time (status may have changed since) * REJECTED: any payment rejected by initial submission processing * WITHDRAWN: any payment which has been withdrawn * WITHDRAWABLE: any payment eligible for withdrawal  | [optional] |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **payor_payment_id** | **String** | Payor&#39;s Id of the Payment | [optional] |
| **source_account_name** | **String** | Physical Account Name | [optional] |
| **transmission_type** | **String** | Transmission Type * ACH * SAME_DAY_ACH * WIRE  | [optional] |
| **payment_memo** | **String** | Payment Memo of the Payment | [optional] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |

### Return type

[**PagedPaymentsResponseV3**](PagedPaymentsResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_summary_v3

> <PayoutSummaryResponseV3> get_payout_summary_v3(payout_id)

Get Payout Summary

Get payout summary - returns the current state of the payout.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
payout_id = TODO # String | Id of the payout

begin
  # Get Payout Summary
  result = api_instance.get_payout_summary_v3(payout_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->get_payout_summary_v3: #{e}"
end
```

#### Using the get_payout_summary_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutSummaryResponseV3>, Integer, Hash)> get_payout_summary_v3_with_http_info(payout_id)

```ruby
begin
  # Get Payout Summary
  data, status_code, headers = api_instance.get_payout_summary_v3_with_http_info(payout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutSummaryResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->get_payout_summary_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | [**String**](.md) | Id of the payout |  |

### Return type

[**PayoutSummaryResponseV3**](PayoutSummaryResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## instruct_payout_v3

> instruct_payout_v3(payout_id)

Instruct Payout

Instruct a payout to be made for the specified payoutId.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
payout_id = TODO # String | Id of the payout

begin
  # Instruct Payout
  api_instance.instruct_payout_v3(payout_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->instruct_payout_v3: #{e}"
end
```

#### Using the instruct_payout_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> instruct_payout_v3_with_http_info(payout_id)

```ruby
begin
  # Instruct Payout
  data, status_code, headers = api_instance.instruct_payout_v3_with_http_info(payout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->instruct_payout_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | [**String**](.md) | Id of the payout |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_payout_v3

> submit_payout_v3(create_payout_request_v3)

Submit Payout

<p>Create a new payout and return a location header with a link to get the payout.</p> <p>Basic validation of the payout is performed before returning but more comprehensive validation is done asynchronously.</p> <p>The results can be obtained by issuing a HTTP GET to the URL returned in the location header.</p> <p>**NOTE:** amount values in payments must be in 'minor units' format. E.g. cents for USD, pence for GBP etc.</p>  with no decimal places. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
create_payout_request_v3 = VeloPayments::CreatePayoutRequestV3.new({payments: [VeloPayments::PaymentInstructionV3.new({remote_id: 'remoteId1234', currency: 'USD', amount: 1299, source_account_name: 'MyAccountName'})]}) # CreatePayoutRequestV3 | Post amount to transfer using stored funding account details.

begin
  # Submit Payout
  api_instance.submit_payout_v3(create_payout_request_v3)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->submit_payout_v3: #{e}"
end
```

#### Using the submit_payout_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_payout_v3_with_http_info(create_payout_request_v3)

```ruby
begin
  # Submit Payout
  data, status_code, headers = api_instance.submit_payout_v3_with_http_info(create_payout_request_v3)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->submit_payout_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payout_request_v3** | [**CreatePayoutRequestV3**](CreatePayoutRequestV3.md) | Post amount to transfer using stored funding account details. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## withdraw_payment

> withdraw_payment(payment_id, withdraw_payment_request)

Withdraw a Payment

<p>withdraw a payment </p> <p>There are a variety of reasons why this can fail</p> <ul>     <li>the payment must be in a state of 'accepted' or 'unfunded'</li>     <li>the payout must not be in a state of 'instructed'</li> </ul> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
payment_id = TODO # String | Id of the Payment
withdraw_payment_request = VeloPayments::WithdrawPaymentRequest.new({reason: 'Payment submitted in error'}) # WithdrawPaymentRequest | details for withdrawal

begin
  # Withdraw a Payment
  api_instance.withdraw_payment(payment_id, withdraw_payment_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->withdraw_payment: #{e}"
end
```

#### Using the withdraw_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> withdraw_payment_with_http_info(payment_id, withdraw_payment_request)

```ruby
begin
  # Withdraw a Payment
  data, status_code, headers = api_instance.withdraw_payment_with_http_info(payment_id, withdraw_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->withdraw_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | [**String**](.md) | Id of the Payment |  |
| **withdraw_payment_request** | [**WithdrawPaymentRequest**](WithdrawPaymentRequest.md) | details for withdrawal |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## withdraw_payout_v3

> withdraw_payout_v3(payout_id)

Withdraw Payout

Withdraw Payout will delete payout details from payout service and rails services but will just move the status of the payout to WITHDRAWN in payment audit.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutServiceApi.new
payout_id = TODO # String | Id of the payout

begin
  # Withdraw Payout
  api_instance.withdraw_payout_v3(payout_id)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->withdraw_payout_v3: #{e}"
end
```

#### Using the withdraw_payout_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> withdraw_payout_v3_with_http_info(payout_id)

```ruby
begin
  # Withdraw Payout
  data, status_code, headers = api_instance.withdraw_payout_v3_with_http_info(payout_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayoutServiceApi->withdraw_payout_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | [**String**](.md) | Id of the payout |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

