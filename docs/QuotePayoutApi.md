# VeloPayments::QuotePayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v3_payouts_payout_id_quote_post**](QuotePayoutApi.md#v3_payouts_payout_id_quote_post) | **POST** /v3/payouts/{payoutId}/quote | Create a quote for the payout



## v3_payouts_payout_id_quote_post

> QuoteResponse v3_payouts_payout_id_quote_post(payout_id)

Create a quote for the payout

Create quote for a payout

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::QuotePayoutApi.new
payout_id = 'payout_id_example' # String | Id of the payout

begin
  #Create a quote for the payout
  result = api_instance.v3_payouts_payout_id_quote_post(payout_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling QuotePayoutApi->v3_payouts_payout_id_quote_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_id** | [**String**](.md)| Id of the payout | 

### Return type

[**QuoteResponse**](QuoteResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

