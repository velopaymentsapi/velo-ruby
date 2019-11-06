# VeloPayments::PayeeInvitationApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payees_invitation_status**](PayeeInvitationApi.md#get_payees_invitation_status) | **GET** /v1/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
[**get_payees_invitation_status_v2**](PayeeInvitationApi.md#get_payees_invitation_status_v2) | **GET** /v2/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
[**resend_payee_invite**](PayeeInvitationApi.md#resend_payee_invite) | **POST** /v1/payees/{payeeId}/invite | Resend Payee Invite
[**v2_create_payee**](PayeeInvitationApi.md#v2_create_payee) | **POST** /v2/payees | Intiate Payee Creation
[**v2_query_batch_status**](PayeeInvitationApi.md#v2_query_batch_status) | **GET** /v2/payees/batch/{batchId} | Query Batch Status



## get_payees_invitation_status

> InvitationStatusResponse get_payees_invitation_status(payor_id)

Get Payee Invitation Status

Returns a list of payees associated with a payor, along with invitation status and grace period end date. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID

begin
  #Get Payee Invitation Status
  result = api_instance.get_payees_invitation_status(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->get_payees_invitation_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 

### Return type

[**InvitationStatusResponse**](InvitationStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payees_invitation_status_v2

> PagedPayeeInvitationStatusResponse get_payees_invitation_status_v2(payor_id, opts)

Get Payee Invitation Status

Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payor_id = 'payor_id_example' # String | The account owner Payor ID
opts = {
  payee_id: 'payee_id_example', # String | The UUID of the payee.
  invitation_status: VeloPayments::InvitationStatus.new, # InvitationStatus | The invitation status of the payees.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25 # Integer | Page size. Default is 25. Max allowable is 100.
}

begin
  #Get Payee Invitation Status
  result = api_instance.get_payees_invitation_status_v2(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->get_payees_invitation_status_v2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payor_id** | [**String**](.md)| The account owner Payor ID | 
 **payee_id** | [**String**](.md)| The UUID of the payee. | [optional] 
 **invitation_status** | [**InvitationStatus**](.md)| The invitation status of the payees. | [optional] 
 **page** | **Integer**| Page number. Default is 1. | [optional] [default to 1]
 **page_size** | **Integer**| Page size. Default is 25. Max allowable is 100. | [optional] [default to 25]

### Return type

[**PagedPayeeInvitationStatusResponse**](PagedPayeeInvitationStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_payee_invite

> InvitationStatusResponse resend_payee_invite(payee_id, invite_payee_request)

Resend Payee Invite

Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined Any previous invites to the payee by this Payor will be invalidated

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payee_id = 'payee_id_example' # String | The UUID of the payee.
invite_payee_request = VeloPayments::InvitePayeeRequest.new # InvitePayeeRequest | 

begin
  #Resend Payee Invite
  result = api_instance.resend_payee_invite(payee_id, invite_payee_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->resend_payee_invite: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | 
 **invite_payee_request** | [**InvitePayeeRequest**](InvitePayeeRequest.md)|  | 

### Return type

[**InvitationStatusResponse**](InvitationStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v2_create_payee

> CreatePayeesCSVResponse v2_create_payee(create_payees_request)

Intiate Payee Creation

Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body, 409 - if there is a duplicate remote id within the batch / if there is a duplicate email within the batch). 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
create_payees_request = VeloPayments::CreatePayeesRequest.new # CreatePayeesRequest | Post payees to create.

begin
  #Intiate Payee Creation
  result = api_instance.v2_create_payee(create_payees_request)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->v2_create_payee: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payees_request** | [**CreatePayeesRequest**](CreatePayeesRequest.md)| Post payees to create. | 

### Return type

[**CreatePayeesCSVResponse**](CreatePayeesCSVResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## v2_query_batch_status

> QueryBatchResponse v2_query_batch_status(batch_id)

Query Batch Status

Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 

### Example

```ruby
# load the gem
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
batch_id = 'batch_id_example' # String | Batch Id

begin
  #Query Batch Status
  result = api_instance.v2_query_batch_status(batch_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->v2_query_batch_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | [**String**](.md)| Batch Id | 

### Return type

[**QueryBatchResponse**](QueryBatchResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

