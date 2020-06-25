# VeloPayments::PaymentAuditServiceApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_transactions_csvv3**](PaymentAuditServiceApi.md#export_transactions_csvv3) | **GET** /v3/paymentaudit/transactions | Export Transactions
[**export_transactions_csvv4**](PaymentAuditServiceApi.md#export_transactions_csvv4) | **GET** /v4/paymentaudit/transactions | Export Transactions
[**get_fundings_v1**](PaymentAuditServiceApi.md#get_fundings_v1) | **GET** /v1/paymentaudit/fundings | Get Fundings for Payor
[**get_fundings_v4**](PaymentAuditServiceApi.md#get_fundings_v4) | **GET** /v4/paymentaudit/fundings | Get Fundings for Payor
[**get_payment_details**](PaymentAuditServiceApi.md#get_payment_details) | **GET** /v3/paymentaudit/payments/{paymentId} | Get Payment
[**get_payment_details_v4**](PaymentAuditServiceApi.md#get_payment_details_v4) | **GET** /v4/paymentaudit/payments/{paymentId} | Get Payment
[**get_payments_for_payout**](PaymentAuditServiceApi.md#get_payments_for_payout) | **GET** /v3/paymentaudit/payouts/{payoutId} | Get Payments for Payout
[**get_payments_for_payout_v4**](PaymentAuditServiceApi.md#get_payments_for_payout_v4) | **GET** /v4/paymentaudit/payouts/{payoutId} | Get Payments for Payout
[**get_payout_stats_v1**](PaymentAuditServiceApi.md#get_payout_stats_v1) | **GET** /v1/paymentaudit/payoutStatistics | Get Payout Statistics
[**get_payout_stats_v4**](PaymentAuditServiceApi.md#get_payout_stats_v4) | **GET** /v4/paymentaudit/payoutStatistics | Get Payout Statistics
[**get_payouts_for_payor_v3**](PaymentAuditServiceApi.md#get_payouts_for_payor_v3) | **GET** /v3/paymentaudit/payouts | Get Payouts for Payor
[**get_payouts_for_payor_v4**](PaymentAuditServiceApi.md#get_payouts_for_payor_v4) | **GET** /v4/paymentaudit/payouts | Get Payouts for Payor
[**list_payment_changes**](PaymentAuditServiceApi.md#list_payment_changes) | **GET** /v1/deltas/payments | List Payment Changes
[**list_payment_changes_v4**](PaymentAuditServiceApi.md#list_payment_changes_v4) | **GET** /v4/payments/deltas | List Payment Changes
[**list_payments_audit**](PaymentAuditServiceApi.md#list_payments_audit) | **GET** /v3/paymentaudit/payments | Get List of Payments
[**list_payments_audit_v4**](PaymentAuditServiceApi.md#list_payments_audit_v4) | **GET** /v4/paymentaudit/payments | Get List of Payments



## export_transactions_csvv3

> PayorAmlTransactionV3 export_transactions_csvv3(opts)

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
  payor_id: 'payor_id_example', # String | The Payor ID for whom you wish to run the report. For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor. 
  start_date: Date.parse('2013-10-20'), # Date | Start date, inclusive. Format is YYYY-MM-DD
  end_date: Date.parse('2013-10-20') # Date | End date, inclusive. Format is YYYY-MM-DD
}

begin
  #Export Transactions
  result = api_instance.export_transactions_csvv3(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->export_transactions_csvv3: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The Payor ID for whom you wish to run the report. For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor.  | [optional] 
 **start_date** | **Date**| Start date, inclusive. Format is YYYY-MM-DD | [optional] 
 **end_date** | **Date**| End date, inclusive. Format is YYYY-MM-DD | [optional] 

### Return type

[**PayorAmlTransactionV3**](PayorAmlTransactionV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/csv, application/json


## export_transactions_csvv4

> PayorAmlTransactionV4 export_transactions_csvv4(opts)

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
  payor_id: 'payor_id_example', # String | <p>The Payor ID for whom you wish to run the report.</p> <p>For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor.</p> 
  start_date: Date.parse('2013-10-20'), # Date | Start date, inclusive. Format is YYYY-MM-DD
  end_date: Date.parse('2013-10-20'), # Date | End date, inclusive. Format is YYYY-MM-DD
  include: 'include_example' # String | <p>Mode to determine whether to include other Payor's data in the results.</p> <p>May only be used if payorId is specified.</p> <p>Can be omitted or set to 'payorOnly' or 'payorAndDescendants'.</p> <p>payorOnly: Only include results for the specified Payor. This is the default if 'include' is omitted.</p> <p>payorAndDescendants: Aggregate results for all descendant Payors of the specified Payor. Should only be used if the Payor with the specified payorId has at least one child Payor.</p> <p>Note when a Payor requests the report and include=payorAndDescendants is used, the following additional columns are included in the CSV: Payor Name, Payor Id</p> 
}

begin
  #Export Transactions
  result = api_instance.export_transactions_csvv4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->export_transactions_csvv4: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| &lt;p&gt;The Payor ID for whom you wish to run the report.&lt;/p&gt; &lt;p&gt;For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor.&lt;/p&gt;  | [optional] 
 **start_date** | **Date**| Start date, inclusive. Format is YYYY-MM-DD | [optional] 
 **end_date** | **Date**| End date, inclusive. Format is YYYY-MM-DD | [optional] 
 **include** | **String**| &lt;p&gt;Mode to determine whether to include other Payor&#39;s data in the results.&lt;/p&gt; &lt;p&gt;May only be used if payorId is specified.&lt;/p&gt; &lt;p&gt;Can be omitted or set to &#39;payorOnly&#39; or &#39;payorAndDescendants&#39;.&lt;/p&gt; &lt;p&gt;payorOnly: Only include results for the specified Payor. This is the default if &#39;include&#39; is omitted.&lt;/p&gt; &lt;p&gt;payorAndDescendants: Aggregate results for all descendant Payors of the specified Payor. Should only be used if the Payor with the specified payorId has at least one child Payor.&lt;/p&gt; &lt;p&gt;Note when a Payor requests the report and include&#x3D;payorAndDescendants is used, the following additional columns are included in the CSV: Payor Name, Payor Id&lt;/p&gt;  | [optional] 

### Return type

[**PayorAmlTransactionV4**](PayorAmlTransactionV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/csv


## get_fundings_v1

> GetFundingsResponse get_fundings_v1(payor_id, opts)

Get Fundings for Payor

<p>Get a list of Fundings for a payor.</p> <p>Deprecated (use v4/paymentaudit/fundings)</p> 

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
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields. Example: ```?sort=destinationCurrency:asc,destinationAmount:asc``` Default is no sort. The supported sort fields are: dateTime and amount. 
}

begin
  #Get Fundings for Payor
  result = api_instance.get_fundings_v1(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_fundings_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount.  | [optional] 

### Return type

[**GetFundingsResponse**](GetFundingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fundings_v4

> GetFundingsResponse get_fundings_v4(payor_id, opts)

Get Fundings for Payor

<p>Get a list of Fundings for a payor.</p> 

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
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields. Example: ```?sort=destinationCurrency:asc,destinationAmount:asc``` Default is no sort. The supported sort fields are: dateTime and amount. 
}

begin
  #Get Fundings for Payor
  result = api_instance.get_fundings_v4(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_fundings_v4: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount.  | [optional] 

### Return type

[**GetFundingsResponse**](GetFundingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_details

> PaymentResponseV3 get_payment_details(payment_id, opts)

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

[**PaymentResponseV3**](PaymentResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_details_v4

> PaymentResponseV4 get_payment_details_v4(payment_id, opts)

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
  result = api_instance.get_payment_details_v4(payment_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payment_details_v4: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | [**String**](.md)| Payment Id | 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**PaymentResponseV4**](PaymentResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments_for_payout

> GetPaymentsForPayoutResponseV3 get_payments_for_payout(payout_id, opts)

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
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | <p>List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId</p> <p>The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status</p> 
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
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| &lt;p&gt;List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId&lt;/p&gt; &lt;p&gt;The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status&lt;/p&gt;  | [optional] 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**GetPaymentsForPayoutResponseV3**](GetPaymentsForPayoutResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments_for_payout_v4

> GetPaymentsForPayoutResponseV4 get_payments_for_payout_v4(payout_id, opts)

Get Payments for Payout

Get List of payments for Payout, allowing for RETURNED status 

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
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  #Get Payments for Payout
  result = api_instance.get_payments_for_payout_v4(payout_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payments_for_payout_v4: #{e}"
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
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status  | [optional] 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**GetPaymentsForPayoutResponseV4**](GetPaymentsForPayoutResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_stats_v1

> GetPayoutStatistics get_payout_stats_v1(opts)

Get Payout Statistics

<p>Get payout statistics for a payor.</p> <p>Deprecated (Use /v4/paymentaudit/payoutStatistics)</p> 

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
  payor_id: 'payor_id_example' # String | The account owner Payor ID. Required for external users.
}

begin
  #Get Payout Statistics
  result = api_instance.get_payout_stats_v1(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payout_stats_v1: #{e}"
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


## get_payout_stats_v4

> GetPayoutStatistics get_payout_stats_v4(opts)

Get Payout Statistics

<p>Get payout statistics for a payor.</p> 

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
  payor_id: 'payor_id_example' # String | The account owner Payor ID. Required for external users.
}

begin
  #Get Payout Statistics
  result = api_instance.get_payout_stats_v4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payout_stats_v4: #{e}"
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


## get_payouts_for_payor_v3

> GetPayoutsResponseV3 get_payouts_for_payor_v3(payor_id, opts)

Get Payouts for Payor

<p>Get List of payouts for payor</p> <p>Deprecated Use v4</p> 

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
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status. 
}

begin
  #Get Payouts for Payor
  result = api_instance.get_payouts_for_payor_v3(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payouts_for_payor_v3: #{e}"
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
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status.  | [optional] 

### Return type

[**GetPayoutsResponseV3**](GetPayoutsResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payouts_for_payor_v4

> GetPayoutsResponseV4 get_payouts_for_payor_v4(opts)

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
opts = {
  payor_id: 'payor_id_example', # String | The id (UUID) of the payor funding the payout or the payor whose payees are being paid.
  payout_memo: 'payout_memo_example', # String | Payout Memo filter - case insensitive sub-string match
  status: 'status_example', # String | Payout Status
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  from_payor_name: 'from_payor_name_example', # String | The name of the payor whose payees are being paid. This filters via a case insensitive substring match.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status, totalPayments, payoutId 
}

begin
  #Get Payouts for Payor
  result = api_instance.get_payouts_for_payor_v4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->get_payouts_for_payor_v4: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The id (UUID) of the payor funding the payout or the payor whose payees are being paid. | [optional] 
 **payout_memo** | **String**| Payout Memo filter - case insensitive sub-string match | [optional] 
 **status** | **String**| Payout Status | [optional] 
 **submitted_date_from** | **Date**| The submitted date from range filter. Format is yyyy-MM-dd. | [optional] 
 **submitted_date_to** | **Date**| The submitted date to range filter. Format is yyyy-MM-dd. | [optional] 
 **from_payor_name** | **String**| The name of the payor whose payees are being paid. This filters via a case insensitive substring match. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status, totalPayments, payoutId  | [optional] 

### Return type

[**GetPayoutsResponseV4**](GetPayoutsResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_changes

> PaymentDeltaResponse list_payment_changes(payor_id, updated_since, opts)

List Payment Changes

Get a paginated response listing payment changes.

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
payor_id = 'payor_id_example' # String | The Payor ID to find associated Payments
updated_since = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 1, # Integer | Page number. Default is 1.
  page_size: 100 # Integer | The number of results to return in a page
}

begin
  #List Payment Changes
  result = api_instance.list_payment_changes(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->list_payment_changes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The Payor ID to find associated Payments | 
 **updated_since** | **DateTime**| The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm | 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 100]

### Return type

[**PaymentDeltaResponse**](PaymentDeltaResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_changes_v4

> PaymentDeltaResponseV4 list_payment_changes_v4(payor_id, updated_since, opts)

List Payment Changes

Get a paginated response listing payment changes.

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
payor_id = 'payor_id_example' # String | The Payor ID to find associated Payments
updated_since = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 1, # Integer | Page number. Default is 1.
  page_size: 100 # Integer | The number of results to return in a page
}

begin
  #List Payment Changes
  result = api_instance.list_payment_changes_v4(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->list_payment_changes_v4: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The Payor ID to find associated Payments | 
 **updated_since** | **DateTime**| The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm | 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 100]

### Return type

[**PaymentDeltaResponseV4**](PaymentDeltaResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments_audit

> ListPaymentsResponseV3 list_payments_audit(opts)

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
  payment_currency: 'payment_currency_example', # String | The payment currency filter. Filters based on an exact match on the currency.
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  payment_memo: 'payment_memo_example', # String | The payment memo filter. This filters via a case insensitive substring match.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | The number of results to return in a page
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
 **payment_currency** | **String**| The payment currency filter. Filters based on an exact match on the currency. | [optional] 
 **submitted_date_from** | **Date**| The submitted date from range filter. Format is yyyy-MM-dd. | [optional] 
 **submitted_date_to** | **Date**| The submitted date to range filter. Format is yyyy-MM-dd. | [optional] 
 **payment_memo** | **String**| The payment memo filter. This filters via a case insensitive substring match. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status  | [optional] 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**ListPaymentsResponseV3**](ListPaymentsResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments_audit_v4

> ListPaymentsResponseV4 list_payments_audit_v4(opts)

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
  payment_currency: 'payment_currency_example', # String | The payment currency filter. Filters based on an exact match on the currency.
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  payment_memo: 'payment_memo_example', # String | The payment memo filter. This filters via a case insensitive substring match.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by submittedDateTime:desc,paymentId:asc The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime, status and paymentId 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  #Get List of Payments
  result = api_instance.list_payments_audit_v4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PaymentAuditServiceApi->list_payments_audit_v4: #{e}"
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
 **payment_currency** | **String**| The payment currency filter. Filters based on an exact match on the currency. | [optional] 
 **submitted_date_from** | **Date**| The submitted date from range filter. Format is yyyy-MM-dd. | [optional] 
 **submitted_date_to** | **Date**| The submitted date to range filter. Format is yyyy-MM-dd. | [optional] 
 **payment_memo** | **String**| The payment memo filter. This filters via a case insensitive substring match. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return in a page | [optional] [default to 25]
 **sort** | **String**| List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by submittedDateTime:desc,paymentId:asc The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime, status and paymentId  | [optional] 
 **sensitive** | **Boolean**| Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] 

### Return type

[**ListPaymentsResponseV4**](ListPaymentsResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

