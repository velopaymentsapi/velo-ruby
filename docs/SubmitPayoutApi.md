# VeloPayments::SubmitPayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_payout**](SubmitPayoutApi.md#submit_payout) | **POST** /v3/payouts | Submit Payout



## submit_payout

> submit_payout(create_payout_request)

Submit Payout

<p>Create a new payout and return a location header with a link to get the payout.</p> <p>Basic validation of the payout is performed before returning but more comprehensive validation is done asynchronously.</p> <p>The results can be obtained by issuing a HTTP GET to the URL returned in the location header.</p> <p>**NOTE:** amount values in payments must be in 'minor units' format. E.g. cents for USD, pence for GBP etc.</p>  with no decimal places. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::SubmitPayoutApi.new
create_payout_request = VeloPayments::CreatePayoutRequest.new # CreatePayoutRequest | Post amount to transfer using stored funding account details.

begin
  #Submit Payout
  api_instance.submit_payout(create_payout_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling SubmitPayoutApi->submit_payout: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payout_request** | [**CreatePayoutRequest**](CreatePayoutRequest.md)| Post amount to transfer using stored funding account details. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

