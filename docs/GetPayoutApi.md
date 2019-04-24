# VeloPayments::GetPayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v3_payouts_payout_id_get**](GetPayoutApi.md#v3_payouts_payout_id_get) | **GET** /v3/payouts/{payoutId} | Get Payout Summary



## v3_payouts_payout_id_get

> PayoutSummaryResponse v3_payouts_payout_id_get(payout_id)

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
  result = api_instance.v3_payouts_payout_id_get(payout_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling GetPayoutApi->v3_payouts_payout_id_get: #{e}"
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

