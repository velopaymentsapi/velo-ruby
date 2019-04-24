# VeloPayments::PayoutHistoryApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payments_for_payout**](PayoutHistoryApi.md#get_payments_for_payout) | **GET** /v3/paymentaudit/payouts/{payoutId} | Get Payments for Payout
[**get_payout_stats**](PayoutHistoryApi.md#get_payout_stats) | **GET** /v1/paymentaudit/payoutStatistics | Get Payout Statistics



## get_payments_for_payout

> GetPaymentsForPayoutResponse get_payments_for_payout(payout_id, opts)

Get Payments for Payout

Get List of payments for Payout 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutHistoryApi.new
payout_id = 'payout_id_example' # String | The id (UUID) of the payout.
opts = {
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  status: 'status_example', # String | Payment Status
  source_amount_from: 56, # Integer | The source amount from range filter. Filters for sourceAmount >= sourceAmountFrom
  source_amount_to: 56, # Integer | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
  payment_amount_from: 56, # Integer | The payment amount from range filter. Filters for paymentAmount >= paymentAmountFrom
  payment_amount_to: 56, # Integer | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  #Get Payments for Payout
  result = api_instance.get_payments_for_payout(payout_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayoutHistoryApi->get_payments_for_payout: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_id** | [**String**](.md)| The id (UUID) of the payout. | 
 **remote_id** | **String**| The remote id of the payees. | [optional] 
 **status** | **String**| Payment Status | [optional] 
 **source_amount_from** | **Integer**| The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom | [optional] 
 **source_amount_to** | **Integer**| The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo | [optional] 
 **payment_amount_from** | **Integer**| The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom | [optional] 
 **payment_amount_to** | **Integer**| The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo | [optional] 
 **submitted_date_from** | **Date**| The submitted date from range filter. Format is yyyy-MM-dd. | [optional] 
 **submitted_date_to** | **Date**| The submitted date to range filter. Format is yyyy-MM-dd. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status  | [optional] 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**GetPaymentsForPayoutResponse**](GetPaymentsForPayoutResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_stats

> GetPayoutStatistics get_payout_stats(opts)

Get Payout Statistics

Get payout statistics for a payor.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayoutHistoryApi.new
opts = {
  payor_id: 'payor_id_example' # String | The account owner Payor ID. Required for external users.
}

begin
  #Get Payout Statistics
  result = api_instance.get_payout_stats(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayoutHistoryApi->get_payout_stats: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID. Required for external users. | [optional] 

### Return type

[**GetPayoutStatistics**](GetPayoutStatistics.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

