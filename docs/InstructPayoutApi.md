# VeloPayments::InstructPayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v3_payouts_payout_id_post**](InstructPayoutApi.md#v3_payouts_payout_id_post) | **POST** /v3/payouts/{payoutId} | Instruct Payout



## v3_payouts_payout_id_post

> v3_payouts_payout_id_post(payout_id)

Instruct Payout

Instruct a payout to be made for the specified payoutId.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::InstructPayoutApi.new
payout_id = 'payout_id_example' # String | Id of the payout

begin
  #Instruct Payout
  api_instance.v3_payouts_payout_id_post(payout_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling InstructPayoutApi->v3_payouts_payout_id_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payout_id** | [**String**](.md)| Id of the payout | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

