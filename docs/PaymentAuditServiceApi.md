# VeloPayments::PaymentAuditServiceApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_transactions_csvv4**](PaymentAuditServiceApi.md#export_transactions_csvv4) | **GET** /v4/paymentaudit/transactions | Export Transactions |
| [**get_fundings_v4**](PaymentAuditServiceApi.md#get_fundings_v4) | **GET** /v4/paymentaudit/fundings | Get Fundings for Payor |
| [**get_payment_details_v4**](PaymentAuditServiceApi.md#get_payment_details_v4) | **GET** /v4/paymentaudit/payments/{paymentId} | Get Payment |
| [**get_payments_for_payout_v4**](PaymentAuditServiceApi.md#get_payments_for_payout_v4) | **GET** /v4/paymentaudit/payouts/{payoutId} | Get Payments for Payout |
| [**get_payout_stats_v4**](PaymentAuditServiceApi.md#get_payout_stats_v4) | **GET** /v4/paymentaudit/payoutStatistics | Get Payout Statistics |
| [**get_payouts_for_payor_v4**](PaymentAuditServiceApi.md#get_payouts_for_payor_v4) | **GET** /v4/paymentaudit/payouts | Get Payouts for Payor |
| [**list_payment_changes_v4**](PaymentAuditServiceApi.md#list_payment_changes_v4) | **GET** /v4/payments/deltas | List Payment Changes |
| [**list_payments_audit_v4**](PaymentAuditServiceApi.md#list_payments_audit_v4) | **GET** /v4/paymentaudit/payments | Get List of Payments |


## export_transactions_csvv4

> <PayorAmlTransaction> export_transactions_csvv4(opts)

Export Transactions

Download a CSV file containing payments in a date range. Uses Transfer-Encoding - chunked to stream to the client. Date range is inclusive of both the start and end dates.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | <p>The Payor ID for whom you wish to run the report.</p> <p>For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor.</p> 
  start_date: Date.parse('2013-10-20'), # Date | Start date, inclusive. Format is YYYY-MM-DD
  end_date: Date.parse('2013-10-20'), # Date | End date, inclusive. Format is YYYY-MM-DD
  include: 'payorOnly' # String | <p>Mode to determine whether to include other Payor's data in the results.</p> <p>May only be used if payorId is specified.</p> <p>Can be omitted or set to 'payorOnly' or 'payorAndDescendants'.</p> <p>payorOnly: Only include results for the specified Payor. This is the default if 'include' is omitted.</p> <p>payorAndDescendants: Aggregate results for all descendant Payors of the specified Payor. Should only be used if the Payor with the specified payorId has at least one child Payor.</p> <p>Note when a Payor requests the report and include=payorAndDescendants is used, the following additional columns are included in the CSV: Payor Name, Payor Id</p> 
}

begin
  # Export Transactions
  result = api_instance.export_transactions_csvv4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->export_transactions_csvv4: #{e}"
end
```

#### Using the export_transactions_csvv4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAmlTransaction>, Integer, Hash)> export_transactions_csvv4_with_http_info(opts)

```ruby
begin
  # Export Transactions
  data, status_code, headers = api_instance.export_transactions_csvv4_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAmlTransaction>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->export_transactions_csvv4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | &lt;p&gt;The Payor ID for whom you wish to run the report.&lt;/p&gt; &lt;p&gt;For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor.&lt;/p&gt;  | [optional] |
| **start_date** | **Date** | Start date, inclusive. Format is YYYY-MM-DD | [optional] |
| **end_date** | **Date** | End date, inclusive. Format is YYYY-MM-DD | [optional] |
| **include** | **String** | &lt;p&gt;Mode to determine whether to include other Payor&#39;s data in the results.&lt;/p&gt; &lt;p&gt;May only be used if payorId is specified.&lt;/p&gt; &lt;p&gt;Can be omitted or set to &#39;payorOnly&#39; or &#39;payorAndDescendants&#39;.&lt;/p&gt; &lt;p&gt;payorOnly: Only include results for the specified Payor. This is the default if &#39;include&#39; is omitted.&lt;/p&gt; &lt;p&gt;payorAndDescendants: Aggregate results for all descendant Payors of the specified Payor. Should only be used if the Payor with the specified payorId has at least one child Payor.&lt;/p&gt; &lt;p&gt;Note when a Payor requests the report and include&#x3D;payorAndDescendants is used, the following additional columns are included in the CSV: Payor Name, Payor Id&lt;/p&gt;  | [optional] |

### Return type

[**PayorAmlTransaction**](PayorAmlTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/csv


## get_fundings_v4

> <GetFundingsResponse> get_fundings_v4(payor_id, opts)

Get Fundings for Payor

<p>Get a list of Fundings for a payor.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID
opts = {
  source_account_name: 'source_account_name_example', # String | The source account name
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields. Example: ```?sort=destinationCurrency:asc,destinationAmount:asc``` Default is no sort. The supported sort fields are: dateTime and amount. 
}

begin
  # Get Fundings for Payor
  result = api_instance.get_fundings_v4(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_fundings_v4: #{e}"
end
```

#### Using the get_fundings_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFundingsResponse>, Integer, Hash)> get_fundings_v4_with_http_info(payor_id, opts)

```ruby
begin
  # Get Fundings for Payor
  data, status_code, headers = api_instance.get_fundings_v4_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFundingsResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_fundings_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **source_account_name** | **String** | The source account name | [optional] |
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


## get_payment_details_v4

> <PaymentResponseV4> get_payment_details_v4(payment_id, opts)

Get Payment

Get the payment with the given id. This contains the payment history. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
payment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Payment Id
opts = {
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # Get Payment
  result = api_instance.get_payment_details_v4(payment_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payment_details_v4: #{e}"
end
```

#### Using the get_payment_details_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponseV4>, Integer, Hash)> get_payment_details_v4_with_http_info(payment_id, opts)

```ruby
begin
  # Get Payment
  data, status_code, headers = api_instance.get_payment_details_v4_with_http_info(payment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payment_details_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** | Payment Id |  |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**PaymentResponseV4**](PaymentResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payments_for_payout_v4

> <GetPaymentsForPayoutResponseV4> get_payments_for_payout_v4(payout_id, opts)

Get Payments for Payout

Get List of payments for Payout, allowing for RETURNED status 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
payout_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id (UUID) of the payout.
opts = {
  rails_id: 'rails_id_example', # String | Payout Rails ID filter - case insensitive match. Any value is allowed, but you should use one of the supported railsId values. To get this list of values, you should call the 'Get Supported Rails' endpoint. 
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  remote_system_id: 'remote_system_id_example', # String | The id of the remote system that is orchestrating payments
  status: 'ACCEPTED', # String | Payment Status
  source_amount_from: 56, # Integer | The source amount from range filter. Filters for sourceAmount >= sourceAmountFrom
  source_amount_to: 56, # Integer | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
  payment_amount_from: 56, # Integer | The payment amount from range filter. Filters for paymentAmount >= paymentAmountFrom
  payment_amount_to: 56, # Integer | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  transmission_type: 'ACH', # String | Transmission Type * ACH * SAME_DAY_ACH * WIRE * GACHO 
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # Get Payments for Payout
  result = api_instance.get_payments_for_payout_v4(payout_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payments_for_payout_v4: #{e}"
end
```

#### Using the get_payments_for_payout_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentsForPayoutResponseV4>, Integer, Hash)> get_payments_for_payout_v4_with_http_info(payout_id, opts)

```ruby
begin
  # Get Payments for Payout
  data, status_code, headers = api_instance.get_payments_for_payout_v4_with_http_info(payout_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentsForPayoutResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payments_for_payout_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** | The id (UUID) of the payout. |  |
| **rails_id** | **String** | Payout Rails ID filter - case insensitive match. Any value is allowed, but you should use one of the supported railsId values. To get this list of values, you should call the &#39;Get Supported Rails&#39; endpoint.  | [optional] |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **remote_system_id** | **String** | The id of the remote system that is orchestrating payments | [optional] |
| **status** | **String** | Payment Status | [optional] |
| **source_amount_from** | **Integer** | The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom | [optional] |
| **source_amount_to** | **Integer** | The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo | [optional] |
| **payment_amount_from** | **Integer** | The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom | [optional] |
| **payment_amount_to** | **Integer** | The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo | [optional] |
| **submitted_date_from** | **Date** | The submitted date from range filter. Format is yyyy-MM-dd. | [optional] |
| **submitted_date_to** | **Date** | The submitted date to range filter. Format is yyyy-MM-dd. | [optional] |
| **transmission_type** | **String** | Transmission Type * ACH * SAME_DAY_ACH * WIRE * GACHO  | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status  | [optional] |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**GetPaymentsForPayoutResponseV4**](GetPaymentsForPayoutResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_stats_v4

> <GetPayoutStatistics> get_payout_stats_v4(opts)

Get Payout Statistics

<p>Get payout statistics for a payor.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The account owner Payor ID. Required for external users.
}

begin
  # Get Payout Statistics
  result = api_instance.get_payout_stats_v4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payout_stats_v4: #{e}"
end
```

#### Using the get_payout_stats_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutStatistics>, Integer, Hash)> get_payout_stats_v4_with_http_info(opts)

```ruby
begin
  # Get Payout Statistics
  data, status_code, headers = api_instance.get_payout_stats_v4_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutStatistics>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payout_stats_v4_with_http_info: #{e}"
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


## get_payouts_for_payor_v4

> <GetPayoutsResponse> get_payouts_for_payor_v4(opts)

Get Payouts for Payor

Get List of payouts for payor 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The id (UUID) of the payor funding the payout or the payor whose payees are being paid.
  payout_memo: 'payout_memo_example', # String | Payout Memo filter - case insensitive sub-string match
  status: 'ACCEPTED', # String | Payout Status
  submitted_date_from: Date.parse('2013-10-20'), # Date | The submitted date from range filter. Format is yyyy-MM-dd.
  submitted_date_to: Date.parse('2013-10-20'), # Date | The submitted date to range filter. Format is yyyy-MM-dd.
  from_payor_name: 'from_payor_name_example', # String | The name of the payor whose payees are being paid. This filters via a case insensitive substring match.
  scheduled_for_date_from: Date.parse('2013-10-20'), # Date | Filter payouts scheduled to run on or after the given date. Format is yyyy-MM-dd.
  scheduled_for_date_to: Date.parse('2013-10-20'), # Date | Filter payouts scheduled to run on or before the given date. Format is yyyy-MM-dd.
  schedule_status: 'ANY', # String | Payout Schedule Status
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example' # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status, totalPayments, payoutId, scheduledFor 
}

begin
  # Get Payouts for Payor
  result = api_instance.get_payouts_for_payor_v4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payouts_for_payor_v4: #{e}"
end
```

#### Using the get_payouts_for_payor_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutsResponse>, Integer, Hash)> get_payouts_for_payor_v4_with_http_info(opts)

```ruby
begin
  # Get Payouts for Payor
  data, status_code, headers = api_instance.get_payouts_for_payor_v4_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutsResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->get_payouts_for_payor_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The id (UUID) of the payor funding the payout or the payor whose payees are being paid. | [optional] |
| **payout_memo** | **String** | Payout Memo filter - case insensitive sub-string match | [optional] |
| **status** | **String** | Payout Status | [optional] |
| **submitted_date_from** | **Date** | The submitted date from range filter. Format is yyyy-MM-dd. | [optional] |
| **submitted_date_to** | **Date** | The submitted date to range filter. Format is yyyy-MM-dd. | [optional] |
| **from_payor_name** | **String** | The name of the payor whose payees are being paid. This filters via a case insensitive substring match. | [optional] |
| **scheduled_for_date_from** | **Date** | Filter payouts scheduled to run on or after the given date. Format is yyyy-MM-dd. | [optional] |
| **scheduled_for_date_to** | **Date** | Filter payouts scheduled to run on or before the given date. Format is yyyy-MM-dd. | [optional] |
| **schedule_status** | **String** | Payout Schedule Status | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status, totalPayments, payoutId, scheduledFor  | [optional] |

### Return type

[**GetPayoutsResponse**](GetPayoutsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_changes_v4

> <PaymentDeltaResponse> list_payment_changes_v4(payor_id, updated_since, opts)

List Payment Changes

Get a paginated response listing payment changes.

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
payor_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Payor ID to find associated Payments
updated_since = Time.parse('2013-10-20T19:20:30+01:00') # Time | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
opts = {
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56 # Integer | The number of results to return in a page
}

begin
  # List Payment Changes
  result = api_instance.list_payment_changes_v4(payor_id, updated_since, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->list_payment_changes_v4: #{e}"
end
```

#### Using the list_payment_changes_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentDeltaResponse>, Integer, Hash)> list_payment_changes_v4_with_http_info(payor_id, updated_since, opts)

```ruby
begin
  # List Payment Changes
  data, status_code, headers = api_instance.list_payment_changes_v4_with_http_info(payor_id, updated_since, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentDeltaResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->list_payment_changes_v4_with_http_info: #{e}"
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

[**PaymentDeltaResponse**](PaymentDeltaResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments_audit_v4

> <ListPaymentsResponseV4> list_payments_audit_v4(opts)

Get List of Payments

Get payments for the given payor Id

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PaymentAuditServiceApi.new
opts = {
  payee_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The UUID of the payee.
  payor_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The account owner Payor Id. Required for external users.
  payor_name: 'payor_name_example', # String | The payor’s name. This filters via a case insensitive substring match.
  remote_id: 'remote_id_example', # String | The remote id of the payees.
  remote_system_id: 'remote_system_id_example', # String | The id of the remote system that is orchestrating payments
  status: 'ACCEPTED', # String | Payment Status
  transmission_type: 'ACH', # String | Transmission Type * ACH * SAME_DAY_ACH * WIRE * GACHO 
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
  rails_id: 'rails_id_example', # String | Payout Rails ID filter - case insensitive match. Any value is allowed, but you should use one of the supported railsId values. To get this list of values, you should call the 'Get Supported Rails' endpoint. 
  scheduled_for_date_from: Date.parse('2013-10-20'), # Date | Filter payouts scheduled to run on or after the given date. Format is yyyy-MM-dd.
  scheduled_for_date_to: Date.parse('2013-10-20'), # Date | Filter payouts scheduled to run on or before the given date. Format is yyyy-MM-dd.
  schedule_status: 'ANY', # String | Payout Schedule Status
  post_instruct_fx_status: 'ANY', # String | The status of the post instruct FX step if one was required for the payment
  page: 56, # Integer | Page number. Default is 1.
  page_size: 56, # Integer | The number of results to return in a page
  sort: 'sort_example', # String | List of sort fields (e.g. ?sort=submittedDateTime:asc,status:asc). Default is sort by submittedDateTime:desc,paymentId:asc The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime, status and paymentId 
  sensitive: true # Boolean | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
}

begin
  # Get List of Payments
  result = api_instance.list_payments_audit_v4(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->list_payments_audit_v4: #{e}"
end
```

#### Using the list_payments_audit_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentsResponseV4>, Integer, Hash)> list_payments_audit_v4_with_http_info(opts)

```ruby
begin
  # Get List of Payments
  data, status_code, headers = api_instance.list_payments_audit_v4_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentsResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PaymentAuditServiceApi->list_payments_audit_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | The UUID of the payee. | [optional] |
| **payor_id** | **String** | The account owner Payor Id. Required for external users. | [optional] |
| **payor_name** | **String** | The payor’s name. This filters via a case insensitive substring match. | [optional] |
| **remote_id** | **String** | The remote id of the payees. | [optional] |
| **remote_system_id** | **String** | The id of the remote system that is orchestrating payments | [optional] |
| **status** | **String** | Payment Status | [optional] |
| **transmission_type** | **String** | Transmission Type * ACH * SAME_DAY_ACH * WIRE * GACHO  | [optional] |
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
| **rails_id** | **String** | Payout Rails ID filter - case insensitive match. Any value is allowed, but you should use one of the supported railsId values. To get this list of values, you should call the &#39;Get Supported Rails&#39; endpoint.  | [optional] |
| **scheduled_for_date_from** | **Date** | Filter payouts scheduled to run on or after the given date. Format is yyyy-MM-dd. | [optional] |
| **scheduled_for_date_to** | **Date** | Filter payouts scheduled to run on or before the given date. Format is yyyy-MM-dd. | [optional] |
| **schedule_status** | **String** | Payout Schedule Status | [optional] |
| **post_instruct_fx_status** | **String** | The status of the post instruct FX step if one was required for the payment | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | The number of results to return in a page | [optional][default to 25] |
| **sort** | **String** | List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by submittedDateTime:desc,paymentId:asc The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime, status and paymentId  | [optional] |
| **sensitive** | **Boolean** | Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values.  | [optional] |

### Return type

[**ListPaymentsResponseV4**](ListPaymentsResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

