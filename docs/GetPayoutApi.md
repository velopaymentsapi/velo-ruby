# VeloPayments::GetPayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payout_summary_v3**](GetPayoutApi.md#get_payout_summary_v3) | **GET** /v3/payouts/{payoutId} | Get Payout Summary



## get_payout_summary_v3

> PayoutSummaryResponse get_payout_summary_v3(payout_id)

Get Payout Summary

Get payout summary - returns the current state of the payout.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::GetPayoutApi.new
payout_id = 'payout_id_example' # String | Id of the payout

begin
  #Get Payout Summary
  result = api_instance.get_payout_summary_v3(payout_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling GetPayoutApi->get_payout_summary_v3: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_id** | [**String**](.md)| Id of the payout | 

### Return type

[**PayoutSummaryResponse**](PayoutSummaryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

