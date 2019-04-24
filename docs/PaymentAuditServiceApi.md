# VeloPayments::PaymentAuditServiceApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_transactions_csv**](PaymentAuditServiceApi.md#export_transactions_csv) | **GET** /v4/paymentaudit/transactions | Export Transactions
[**get_fundings**](PaymentAuditServiceApi.md#get_fundings) | **GET** /v1/paymentaudit/fundings | Get Fundings for Payor
[**get_payment_details**](PaymentAuditServiceApi.md#get_payment_details) | **GET** /v3/paymentaudit/payments/{paymentId} | Get Payment
[**get_payments_for_payout**](PaymentAuditServiceApi.md#get_payments_for_payout) | **GET** /v3/paymentaudit/payouts/{payoutId} | Get Payments for Payout
[**get_payouts_for_payor**](PaymentAuditServiceApi.md#get_payouts_for_payor) | **GET** /v3/paymentaudit/payouts | Get Payouts for Payor
[**list_payments_audit**](PaymentAuditServiceApi.md#list_payments_audit) | **GET** /v3/paymentaudit/payments | Get List of Payments



## export_transactions_csv

> String export_transactions_csv(opts)

Export Transactions

Download a CSV file containing payments in a date range. Uses Transfer-Encoding - chunked to stream to the client. Date range is inclusive of both the start and end dates.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payor_id: 'payor_id_example', # String | The account owner Payor ID
  start_date: Date.parse('2013-10-20'), # Date | Start date, inclusive. Format is YYYY-MM-DD
  submitted_date_from: Date.parse('2013-10-20') # Date | Start date, inclusive. Format is YYYY-MM-DD
}

begin
  #Export Transactions
  result = api_instance.export_transactions_csv(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->export_transactions_csv: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | [optional] 
 **start_date** | **Date**| Start date, inclusive. Format is YYYY-MM-DD | [optional] 
 **submitted_date_from** | **Date**| Start date, inclusive. Format is YYYY-MM-DD | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/csv


## get_fundings

> GetFundingsResponse get_fundings(opts)

Get Fundings for Payor

Get a list of Fundings for a payor. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payor_id: 'payor_id_example', # String | The account owner Payor ID
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'sort_example' # String | List of sort fields. Example: ```?sort=destinationCurrency:asc,destinationAmount:asc``` Default is no sort. The supported sort fields are: dateTime and amount. 
}

begin
  #Get Fundings for Payor
  result = api_instance.get_fundings(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_fundings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount.  | [optional] 

### Return type

[**GetFundingsResponse**](GetFundingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_details

> PaymentResponse get_payment_details(payment_id, opts)

Get Payment

Get the payment with the given id. This contains the payment history. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
payment_id = 'payment_id_example' # String | Payment Id
opts = {
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  #Get Payment
  result = api_instance.get_payment_details(payment_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payment_details: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | [**String**](.md)| Payment Id | 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**PaymentResponse**](PaymentResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

api_instance = VeloPayments::PaymentAuditServiceApi.new
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
  puts "Exception when calling PaymentAuditServiceApi->get_payments_for_payout: #{e}"
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


## get_payouts_for_payor

> GetPayoutsResponse get_payouts_for_payor(payor_id, opts)

Get Payouts for Payor

Get List of payouts for payor 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
opts = {
  payout_memo: 'payout_memo_example', # String | Payout Memo filter - case insensitive sub-string match
  status: 'status_example', # String | Payout Status
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'sort_example' # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status. 
}

begin
  #Get Payouts for Payor
  result = api_instance.get_payouts_for_payor(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payouts_for_payor: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **payout_memo** | **String**| Payout Memo filter - case insensitive sub-string match | [optional] 
 **status** | **String**| Payout Status | [optional] 
 **submitted_date_from** | **Date**| The submitted date from range filter. Format is yyyy-MM-dd. | [optional] 
 **submitted_date_to** | **Date**| The submitted date to range filter. Format is yyyy-MM-dd. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status.  | [optional] 

### Return type

[**GetPayoutsResponse**](GetPayoutsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments_audit

> ListPaymentsResponse list_payments_audit(opts)

Get List of Payments

Get payments for the given payor Id

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payee_id: 'payee_id_example', # String | The UUID of the payee.
  payor_id: 'payor_id_example', # String | The account owner Payor Id. Required for external users.
  payor_name: 'payor_name_example', # String | The payor’s name. This filters via a case insensitive substring match.
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  status: 'status_example', # String | Payment Status
  source_account_name: 'source_account_name_example', # String | The source account name filter. This filters via a case insensitive substring match.
  source_amount_from: 56, # Integer | The source amount from range filter. Filters for sourceAmount >= sourceAmountFrom
  source_amount_to: 56, # Integer | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
  source_currency: 'source_currency_example', # String | The source currency filter. Filters based on an exact match on the currency.
  payment_amount_from: 56, # Integer | The payment amount from range filter. Filters for paymentAmount >= paymentAmountFrom
  payment_amount_to: 56, # Integer | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
  payment_currency: 'payment_currency_example', # String | The source currency filter. Filters based on an exact match on the currency.
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  payment_memo: 'payment_memo_example', # String | The payment memo filter. This filters via a case insensitive substring match.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  #Get List of Payments
  result = api_instance.list_payments_audit(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->list_payments_audit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | [optional] 
 **payor_id** | [**String**](.md)| The account owner Payor Id. Required for external users. | [optional] 
 **payor_name** | **String**| The payor’s name. This filters via a case insensitive substring match. | [optional] 
 **remote_id** | **String**| The remote id of the payees. | [optional] 
 **status** | **String**| Payment Status | [optional] 
 **source_account_name** | **String**| The source account name filter. This filters via a case insensitive substring match. | [optional] 
 **source_amount_from** | **Integer**| The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom | [optional] 
 **source_amount_to** | **Integer**| The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo | [optional] 
 **source_currency** | **String**| The source currency filter. Filters based on an exact match on the currency. | [optional] 
 **payment_amount_from** | **Integer**| The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom | [optional] 
 **payment_amount_to** | **Integer**| The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo | [optional] 
 **payment_currency** | **String**| The source currency filter. Filters based on an exact match on the currency. | [optional] 
 **submitted_date_from** | **Date**| The submitted date from range filter. Format is yyyy-MM-dd. | [optional] 
 **submitted_date_to** | **Date**| The submitted date to range filter. Format is yyyy-MM-dd. | [optional] 
 **payment_memo** | **String**| The payment memo filter. This filters via a case insensitive substring match. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status  | [optional] 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**ListPaymentsResponse**](ListPaymentsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

