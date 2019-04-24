# VeloPayments::WithdrawPayoutApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v3_payouts_payout_id_delete**](WithdrawPayoutApi.md#v3_payouts_payout_id_delete) | **DELETE** /v3/payouts/{payoutId} | Withdraw Payout



## v3_payouts_payout_id_delete

> v3_payouts_payout_id_delete(payout_id)

Withdraw Payout

Withdraw Payout will delete payout details from payout service and rails services but will just move the status of the payout to WITHDRAWN in payment audit.

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::WithdrawPayoutApi.new
payout_id = 'payout_id_example' # String | Id of the payout

begin
  #Withdraw Payout
  api_instance.v3_payouts_payout_id_delete(payout_id)
rescue VeloPayments::ApiError => e
  puts "Exception when calling WithdrawPayoutApi->v3_payouts_payout_id_delete: #{e}"
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

