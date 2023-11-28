# VeloPayments::TransactionsApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transaction_v1**](TransactionsApi.md#create_transaction_v1) | **POST** /v1/transactions | Create a Transaction |
| [**get_transaction_by_id_v1**](TransactionsApi.md#get_transaction_by_id_v1) | **GET** /v1/transactions/{transactionId} | Get Transaction |
| [**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /v1/transactions | Get Transactions |


## create_transaction_v1

> <CreateTransactionResponse> create_transaction_v1(opts)

Create a Transaction

Create a new Transaction that can be funded

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::TransactionsApi.new
opts = {
  create_transaction_request: VeloPayments::CreateTransactionRequest.new({payor_id: 'payor_id_example', source_account_name: 'Payor_FOO_USD_Account', transaction_reference: 'myInvoiceNumber-1234567890'}) # CreateTransactionRequest | 
}

begin
  # Create a Transaction
  result = api_instance.create_transaction_v1(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling TransactionsApi->create_transaction_v1: #{e}"
end
```

#### Using the create_transaction_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTransactionResponse>, Integer, Hash)> create_transaction_v1_with_http_info(opts)

```ruby
begin
  # Create a Transaction
  data, status_code, headers = api_instance.create_transaction_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTransactionResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling TransactionsApi->create_transaction_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_transaction_request** | [**CreateTransactionRequest**](CreateTransactionRequest.md) |  | [optional] |

### Return type

[**CreateTransactionResponse**](CreateTransactionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_transaction_by_id_v1

> <TransactionResponse> get_transaction_by_id_v1(transaction_id)

Get Transaction

Get Transaction by Id

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::TransactionsApi.new
transaction_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Transaction
  result = api_instance.get_transaction_by_id_v1(transaction_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_by_id_v1: #{e}"
end
```

#### Using the get_transaction_by_id_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponse>, Integer, Hash)> get_transaction_by_id_v1_with_http_info(transaction_id)

```ruby
begin
  # Get Transaction
  data, status_code, headers = api_instance.get_transaction_by_id_v1_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_by_id_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** |  |  |

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions

> <PageResourceTransactions> get_transactions(opts)

Get Transactions

<P>Get list of Transactions</P> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::TransactionsApi.new
opts = {
  payor_id: 'payor_id_example', # String | 
  transaction_reference: 'transaction_reference_example', # String | 
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | 
}

begin
  # Get Transactions
  result = api_instance.get_transactions(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions: #{e}"
end
```

#### Using the get_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageResourceTransactions>, Integer, Hash)> get_transactions_with_http_info(opts)

```ruby
begin
  # Get Transactions
  data, status_code, headers = api_instance.get_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageResourceTransactions>
rescue VeloPayments::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **transaction_reference** | **String** |  | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** |  | [optional][default to &#39;createdAt:asc&#39;] |

### Return type

[**PageResourceTransactions**](PageResourceTransactions.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

