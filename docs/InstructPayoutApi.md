# VeloPayments::InstructPayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instruct_payout_v3**](InstructPayoutApi.md#instruct_payout_v3) | **POST** /v3/payouts/{payoutId} | Instruct Payout



## instruct_payout_v3

> instruct_payout_v3(payout_id)

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
  api_instance.instruct_payout_v3(payout_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling InstructPayoutApi->instruct_payout_v3: #{e}"
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

