# VeloPayments::PaymentAuditServiceDeprecatedApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_transactions_csvv3**](PaymentAuditServiceDeprecatedApi.md#export_transactions_csvv3) | **GET** /v3/paymentaudit/transactions | V3 Export Transactions |
| [**get_fundings_v1**](PaymentAuditServiceDeprecatedApi.md#get_fundings_v1) | **GET** /v1/paymentaudit/fundings | V1 Get Fundings for Payor |
| [**get_payment_details_v3**](PaymentAuditServiceDeprecatedApi.md#get_payment_details_v3) | **GET** /v3/paymentaudit/payments/{paymentId} | V3 Get Payment |
| [**get_payments_for_payout_pav3**](PaymentAuditServiceDeprecatedApi.md#get_payments_for_payout_pav3) | **GET** /v3/paymentaudit/payouts/{payoutId} | V3 Get Payments for Payout |
| [**get_payout_stats_v1**](PaymentAuditServiceDeprecatedApi.md#get_payout_stats_v1) | **GET** /v1/paymentaudit/payoutStatistics | V1 Get Payout Statistics |
| [**get_payouts_for_payor_v3**](PaymentAuditServiceDeprecatedApi.md#get_payouts_for_payor_v3) | **GET** /v3/paymentaudit/payouts | V3 Get Payouts for Payor |
| [**list_payment_changes**](PaymentAuditServiceDeprecatedApi.md#list_payment_changes) | **GET** /v1/deltas/payments | V1 List Payment Changes |
| [**list_payments_audit_v3**](PaymentAuditServiceDeprecatedApi.md#list_payments_audit_v3) | **GET** /v3/paymentaudit/payments | V3 Get List of Payments |


## export_transactions_csvv3

> <PayorAmlTransactionV3> export_transactions_csvv3(opts)

V3 Export Transactions

Deprecated (use /v4/paymentaudit/transactions instead)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The Payor ID for whom you wish to run the report. For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor. 
  start_date: Date.parse('2013-10-20'), # Date | Start date, inclusive. Format is YYYY-MM-DD
  end_date: Date.parse('2013-10-20') # Date | End date, inclusive. Format is YYYY-MM-DD
}

begin
  # V3 Export Transactions
  result = api_instance.export_transactions_csvv3(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->export_transactions_csvv3: #{e}"
end
```

#### Using the export_transactions_csvv3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAmlTransactionV3>, Integer, Hash)> export_transactions_csvv3_with_http_info(opts)

```ruby
begin
  # V3 Export Transactions
  data, status_code, headers = api_instance.export_transactions_csvv3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAmlTransactionV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->export_transactions_csvv3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor ID for whom you wish to run the report. For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor.  | [optional] |
| **start_date** | **Date** | Start date, inclusive. Format is YYYY-MM-DD | [optional] |
| **end_date** | **Date** | End date, inclusive. Format is YYYY-MM-DD | [optional] |

### Return type

[**PayorAmlTransactionV3**](PayorAmlTransactionV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/csv, application/json


## get_fundings_v1

> <GetFundingsResponse> get_fundings_v1(payor_id, opts)

V1 Get Fundings for Payor

Deprecated (use /v4/paymentaudit/fundings)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID
opts = {
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields. Example: ```?sort=destinationCurrency:asc,destinationAmount:asc``` Default is no sort. The supported sort fields are: dateTime and amount. 
}

begin
  # V1 Get Fundings for Payor
  result = api_instance.get_fundings_v1(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_fundings_v1: #{e}"
end
```

#### Using the get_fundings_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingsResponse>, Integer, Hash)> get_fundings_v1_with_http_info(payor_id, opts)

```ruby
begin
  # V1 Get Fundings for Payor
  data, status_code, headers = api_instance.get_fundings_v1_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingsResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_fundings_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount.  | [optional] |

### Return type

[**GetFundingsResponse**](GetFundingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_details_v3

> <PaymentResponseV3> get_payment_details_v3(payment_id, opts)

V3 Get Payment

Deprecated (use /v4/paymentaudit/payments/<paymentId> instead)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
payment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Payment Id
opts = {
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # V3 Get Payment
  result = api_instance.get_payment_details_v3(payment_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payment_details_v3: #{e}"
end
```

#### Using the get_payment_details_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponseV3>, Integer, Hash)> get_payment_details_v3_with_http_info(payment_id, opts)

```ruby
begin
  # V3 Get Payment
  data, status_code, headers = api_instance.get_payment_details_v3_with_http_info(payment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payment_details_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** | Payment Id |  |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**PaymentResponseV3**](PaymentResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments_for_payout_pav3

> <GetPaymentsForPayoutResponseV3> get_payments_for_payout_pav3(payout_id, opts)

V3 Get Payments for Payout

Deprecated (use /v4/paymentaudit/payouts/<payoutId> instead)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
payout_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id (UUID) of the payout.
opts = {
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  status: 'ACCEPTED', # String | Payment Status
  source_amount_from: 56, # Integer | The source amount from range filter. Filters for sourceAmount >= sourceAmountFrom
  source_amount_to: 56, # Integer | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
  payment_amount_from: 56, # Integer | The payment amount from range filter. Filters for paymentAmount >= paymentAmountFrom
  payment_amount_to: 56, # Integer | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | <p>List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId</p> <p>The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status</p> 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # V3 Get Payments for Payout
  result = api_instance.get_payments_for_payout_pav3(payout_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payments_for_payout_pav3: #{e}"
end
```

#### Using the get_payments_for_payout_pav3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentsForPayoutResponseV3>, Integer, Hash)> get_payments_for_payout_pav3_with_http_info(payout_id, opts)

```ruby
begin
  # V3 Get Payments for Payout
  data, status_code, headers = api_instance.get_payments_for_payout_pav3_with_http_info(payout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentsForPayoutResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payments_for_payout_pav3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** | The id (UUID) of the payout. |  |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **status** | **String** | Payment Status | [optional] |
| **source_amount_from** | **Integer** | The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom | [optional] |
| **source_amount_to** | **Integer** | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo | [optional] |
| **payment_amount_from** | **Integer** | The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom | [optional] |
| **payment_amount_to** | **Integer** | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo | [optional] |
| **submitted_date_from** | **Date** | The submitted date from range filter. Format is yyyy-MM-dd. | [optional] |
| **submitted_date_to** | **Date** | The submitted date to range filter. Format is yyyy-MM-dd. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | &lt;p&gt;List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId&lt;/p&gt; &lt;p&gt;The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status&lt;/p&gt;  | [optional] |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**GetPaymentsForPayoutResponseV3**](GetPaymentsForPayoutResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_stats_v1

> <GetPayoutStatistics> get_payout_stats_v1(opts)

V1 Get Payout Statistics

Deprecated (Use /v4/paymentaudit/payoutStatistics)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID. Required for external users.
}

begin
  # V1 Get Payout Statistics
  result = api_instance.get_payout_stats_v1(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payout_stats_v1: #{e}"
end
```

#### Using the get_payout_stats_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutStatistics>, Integer, Hash)> get_payout_stats_v1_with_http_info(opts)

```ruby
begin
  # V1 Get Payout Statistics
  data, status_code, headers = api_instance.get_payout_stats_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutStatistics>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payout_stats_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID. Required for external users. | [optional] |

### Return type

[**GetPayoutStatistics**](GetPayoutStatistics.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payouts_for_payor_v3

> <GetPayoutsResponseV3> get_payouts_for_payor_v3(payor_id, opts)

V3 Get Payouts for Payor

Deprecated (use /v4/paymentaudit/payouts instead)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID
opts = {
  payout_memo: 'payout_memo_example', # String | Payout Memo filter - case insensitive sub-string match
  status: 'ACCEPTED', # String | Payout Status
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status. 
}

begin
  # V3 Get Payouts for Payor
  result = api_instance.get_payouts_for_payor_v3(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payouts_for_payor_v3: #{e}"
end
```

#### Using the get_payouts_for_payor_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutsResponseV3>, Integer, Hash)> get_payouts_for_payor_v3_with_http_info(payor_id, opts)

```ruby
begin
  # V3 Get Payouts for Payor
  data, status_code, headers = api_instance.get_payouts_for_payor_v3_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutsResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->get_payouts_for_payor_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **payout_memo** | **String** | Payout Memo filter - case insensitive sub-string match | [optional] |
| **status** | **String** | Payout Status | [optional] |
| **submitted_date_from** | **Date** | The submitted date from range filter. Format is yyyy-MM-dd. | [optional] |
| **submitted_date_to** | **Date** | The submitted date to range filter. Format is yyyy-MM-dd. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status.  | [optional] |

### Return type

[**GetPayoutsResponseV3**](GetPayoutsResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_changes

> <PaymentDeltaResponseV1> list_payment_changes(payor_id, updated_since, opts)

V1 List Payment Changes

Deprecated (use /v4/payments/deltas instead)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor ID to find associated Payments
updated_since = Time.parse('2013-10-20T19:20:30+01:00') # Time | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56 # Integer | The number of results to return in a page
}

begin
  # V1 List Payment Changes
  result = api_instance.list_payment_changes(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->list_payment_changes: #{e}"
end
```

#### Using the list_payment_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentDeltaResponseV1>, Integer, Hash)> list_payment_changes_with_http_info(payor_id, updated_since, opts)

```ruby
begin
  # V1 List Payment Changes
  data, status_code, headers = api_instance.list_payment_changes_with_http_info(payor_id, updated_since, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentDeltaResponseV1>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->list_payment_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The Payor ID to find associated Payments |  |
| **updated_since** | **Time** | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm |  |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 100] |

### Return type

[**PaymentDeltaResponseV1**](PaymentDeltaResponseV1.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments_audit_v3

> <ListPaymentsResponseV3> list_payments_audit_v3(opts)

V3 Get List of Payments

Deprecated (use /v4/paymentaudit/payments instead)

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceDeprecatedApi.new
opts = {
  payee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The UUID of the payee.
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The account owner Payor Id. Required for external users.
  payor_name: 'payor_name_example', # String | The payor’s name. This filters via a case insensitive substring match.
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  status: 'ACCEPTED', # String | Payment Status
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
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # V3 Get List of Payments
  result = api_instance.list_payments_audit_v3(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->list_payments_audit_v3: #{e}"
end
```

#### Using the list_payments_audit_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentsResponseV3>, Integer, Hash)> list_payments_audit_v3_with_http_info(opts)

```ruby
begin
  # V3 Get List of Payments
  data, status_code, headers = api_instance.list_payments_audit_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentsResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceDeprecatedApi->list_payments_audit_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. | [optional] |
| **payor_id** | **String** | The account owner Payor Id. Required for external users. | [optional] |
| **payor_name** | **String** | The payor’s name. This filters via a case insensitive substring match. | [optional] |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **status** | **String** | Payment Status | [optional] |
| **source_account_name** | **String** | The source account name filter. This filters via a case insensitive substring match. | [optional] |
| **source_amount_from** | **Integer** | The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom | [optional] |
| **source_amount_to** | **Integer** | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo | [optional] |
| **source_currency** | **String** | The source currency filter. Filters based on an exact match on the currency. | [optional] |
| **payment_amount_from** | **Integer** | The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom | [optional] |
| **payment_amount_to** | **Integer** | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo | [optional] |
| **payment_currency** | **String** | The payment currency filter. Filters based on an exact match on the currency. | [optional] |
| **submitted_date_from** | **Date** | The submitted date from range filter. Format is yyyy-MM-dd. | [optional] |
| **submitted_date_to** | **Date** | The submitted date to range filter. Format is yyyy-MM-dd. | [optional] |
| **payment_memo** | **String** | The payment memo filter. This filters via a case insensitive substring match. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status  | [optional] |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**ListPaymentsResponseV3**](ListPaymentsResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

