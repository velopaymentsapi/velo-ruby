# VeloPayments::PayeeInvitationApi

All URIs are relative to *https://api.sandbox.velopayments.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payees_invitation_status_v1**](PayeeInvitationApi.md#get_payees_invitation_status_v1) | **GET** /v1/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
[**get_payees_invitation_status_v2**](PayeeInvitationApi.md#get_payees_invitation_status_v2) | **GET** /v2/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
[**get_payees_invitation_status_v3**](PayeeInvitationApi.md#get_payees_invitation_status_v3) | **GET** /v3/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
[**query_batch_status_v2**](PayeeInvitationApi.md#query_batch_status_v2) | **GET** /v2/payees/batch/{batchId} | Query Batch Status
[**query_batch_status_v3**](PayeeInvitationApi.md#query_batch_status_v3) | **GET** /v3/payees/batch/{batchId} | Query Batch Status
[**resend_payee_invite_v1**](PayeeInvitationApi.md#resend_payee_invite_v1) | **POST** /v1/payees/{payeeId}/invite | Resend Payee Invite
[**resend_payee_invite_v3**](PayeeInvitationApi.md#resend_payee_invite_v3) | **POST** /v3/payees/{payeeId}/invite | Resend Payee Invite
[**v2_create_payee**](PayeeInvitationApi.md#v2_create_payee) | **POST** /v2/payees | Initiate Payee Creation
[**v3_create_payee**](PayeeInvitationApi.md#v3_create_payee) | **POST** /v3/payees | Initiate Payee Creation



## get_payees_invitation_status_v1

> InvitationStatusResponse get_payees_invitation_status_v1(payor_id)

Get Payee Invitation Status

<p>Returns a list of payees associated with a payor, along with invitation status and grace period end date.</p> <p>Please use V3 instead</p> 

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
payor_id = '9ac75325-5dcd-42d5-b992-175d7e0a035e' # String | The account owner Payor ID

begin
  #Get Payee Invitation Status
  result = api_instance.get_payees_invitation_status_v1(payor_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->get_payees_invitation_status_v1: #{e}"
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

<p>Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.</p> <p>Please use V3 instead</p> 

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
payor_id = '9ac75325-5dcd-42d5-b992-175d7e0a035e' # String | The account owner Payor ID
opts = {
  payee_id: '2aa5d7e0-2ecb-403f-8494-1865ed0454e9', # String | The UUID of the payee.
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


## get_payees_invitation_status_v3

> PagedPayeeInvitationStatusResponse2 get_payees_invitation_status_v3(payor_id, opts)

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
payor_id = '9ac75325-5dcd-42d5-b992-175d7e0a035e' # String | The account owner Payor ID
opts = {
  payee_id: '2aa5d7e0-2ecb-403f-8494-1865ed0454e9', # String | The UUID of the payee.
  invitation_status: VeloPayments::InvitationStatus.new, # InvitationStatus | The invitation status of the payees.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25 # Integer | Page size. Default is 25. Max allowable is 100.
}

begin
  #Get Payee Invitation Status
  result = api_instance.get_payees_invitation_status_v3(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->get_payees_invitation_status_v3: #{e}"
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

[**PagedPayeeInvitationStatusResponse2**](PagedPayeeInvitationStatusResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_batch_status_v2

> QueryBatchResponse query_batch_status_v2(batch_id)

Query Batch Status

<p>Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ).</p> <p>Please use V3 instead</p> 

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
  result = api_instance.query_batch_status_v2(batch_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->query_batch_status_v2: #{e}"
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


## query_batch_status_v3

> QueryBatchResponse2 query_batch_status_v3(batch_id)

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
  result = api_instance.query_batch_status_v3(batch_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->query_batch_status_v3: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | [**String**](.md)| Batch Id | 

### Return type

[**QueryBatchResponse2**](QueryBatchResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_payee_invite_v1

> resend_payee_invite_v1(payee_id, invite_payee_request)

Resend Payee Invite

<p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> <p>Deprecated. Please use v3 instead</p> 

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
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
invite_payee_request = VeloPayments::InvitePayeeRequest.new # InvitePayeeRequest | Provide Payor Id in body of request

begin
  #Resend Payee Invite
  api_instance.resend_payee_invite_v1(payee_id, invite_payee_request)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->resend_payee_invite_v1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | 
 **invite_payee_request** | [**InvitePayeeRequest**](InvitePayeeRequest.md)| Provide Payor Id in body of request | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_payee_invite_v3

> resend_payee_invite_v3(payee_id, invite_payee_request2)

Resend Payee Invite

<p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> 

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
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
invite_payee_request2 = VeloPayments::InvitePayeeRequest2.new # InvitePayeeRequest2 | Provide Payor Id in body of request

begin
  #Resend Payee Invite
  api_instance.resend_payee_invite_v3(payee_id, invite_payee_request2)
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->resend_payee_invite_v3: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payee_id** | [**String**](.md)| The UUID of the payee. | 
 **invite_payee_request2** | [**InvitePayeeRequest2**](InvitePayeeRequest2.md)| Provide Payor Id in body of request | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v2_create_payee

> CreatePayeesCSVResponse v2_create_payee(opts)

Initiate Payee Creation

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
opts = {
  create_payees_request: VeloPayments::CreatePayeesRequest.new # CreatePayeesRequest | Post payees to create.
}

begin
  #Initiate Payee Creation
  result = api_instance.v2_create_payee(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->v2_create_payee: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payees_request** | [**CreatePayeesRequest**](CreatePayeesRequest.md)| Post payees to create. | [optional] 

### Return type

[**CreatePayeesCSVResponse**](CreatePayeesCSVResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## v3_create_payee

> CreatePayeesCSVResponse2 v3_create_payee(opts)

Initiate Payee Creation

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
opts = {
  create_payees_request2: VeloPayments::CreatePayeesRequest2.new # CreatePayeesRequest2 | Post payees to create.
}

begin
  #Initiate Payee Creation
  result = api_instance.v3_create_payee(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling PayeeInvitationApi->v3_create_payee: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payees_request2** | [**CreatePayeesRequest2**](CreatePayeesRequest2.md)| Post payees to create. | [optional] 

### Return type

[**CreatePayeesCSVResponse2**](CreatePayeesCSVResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

