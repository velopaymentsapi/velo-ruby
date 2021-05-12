# VeloPayments::PayeeInvitationApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payees_invitation_status_v3**](PayeeInvitationApi.md#get_payees_invitation_status_v3) | **GET** /v3/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status |
| [**get_payees_invitation_status_v4**](PayeeInvitationApi.md#get_payees_invitation_status_v4) | **GET** /v4/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status |
| [**query_batch_status_v3**](PayeeInvitationApi.md#query_batch_status_v3) | **GET** /v3/payees/batch/{batchId} | Query Batch Status |
| [**query_batch_status_v4**](PayeeInvitationApi.md#query_batch_status_v4) | **GET** /v4/payees/batch/{batchId} | Query Batch Status |
| [**resend_payee_invite_v3**](PayeeInvitationApi.md#resend_payee_invite_v3) | **POST** /v3/payees/{payeeId}/invite | Resend Payee Invite |
| [**resend_payee_invite_v4**](PayeeInvitationApi.md#resend_payee_invite_v4) | **POST** /v4/payees/{payeeId}/invite | Resend Payee Invite |
| [**v3_create_payee**](PayeeInvitationApi.md#v3_create_payee) | **POST** /v3/payees | Initiate Payee Creation |
| [**v4_create_payee**](PayeeInvitationApi.md#v4_create_payee) | **POST** /v4/payees | Initiate Payee Creation |


## get_payees_invitation_status_v3

> <PagedPayeeInvitationStatusResponse> get_payees_invitation_status_v3(payor_id, opts)

Get Payee Invitation Status

<p>Use v4 instead</p> <p>Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payor_id = TODO # String | The account owner Payor ID
opts = {
  payee_id: TODO, # String | The UUID of the payee.
  invitation_status: VeloPayments::InvitationStatus::ACCEPTED, # InvitationStatus | The invitation status of the payees.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25 # Integer | Page size. Default is 25. Max allowable is 100.
}

begin
  # Get Payee Invitation Status
  result = api_instance.get_payees_invitation_status_v3(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->get_payees_invitation_status_v3: #{e}"
end
```

#### Using the get_payees_invitation_status_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagedPayeeInvitationStatusResponse>, Integer, Hash)> get_payees_invitation_status_v3_with_http_info(payor_id, opts)

```ruby
begin
  # Get Payee Invitation Status
  data, status_code, headers = api_instance.get_payees_invitation_status_v3_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPayeeInvitationStatusResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->get_payees_invitation_status_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | [**String**](.md) | The account owner Payor ID |  |
| **payee_id** | [**String**](.md) | The UUID of the payee. | [optional] |
| **invitation_status** | [**InvitationStatus**](.md) | The invitation status of the payees. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 25. Max allowable is 100. | [optional][default to 25] |

### Return type

[**PagedPayeeInvitationStatusResponse**](PagedPayeeInvitationStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payees_invitation_status_v4

> <PagedPayeeInvitationStatusResponse2> get_payees_invitation_status_v4(payor_id, opts)

Get Payee Invitation Status

Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payor_id = TODO # String | The account owner Payor ID
opts = {
  payee_id: TODO, # String | The UUID of the payee.
  invitation_status: VeloPayments::InvitationStatus::ACCEPTED, # InvitationStatus | The invitation status of the payees.
  page: 1, # Integer | Page number. Default is 1.
  page_size: 25 # Integer | Page size. Default is 25. Max allowable is 100.
}

begin
  # Get Payee Invitation Status
  result = api_instance.get_payees_invitation_status_v4(payor_id, opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->get_payees_invitation_status_v4: #{e}"
end
```

#### Using the get_payees_invitation_status_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PagedPayeeInvitationStatusResponse2>, Integer, Hash)> get_payees_invitation_status_v4_with_http_info(payor_id, opts)

```ruby
begin
  # Get Payee Invitation Status
  data, status_code, headers = api_instance.get_payees_invitation_status_v4_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPayeeInvitationStatusResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->get_payees_invitation_status_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | [**String**](.md) | The account owner Payor ID |  |
| **payee_id** | [**String**](.md) | The UUID of the payee. | [optional] |
| **invitation_status** | [**InvitationStatus**](.md) | The invitation status of the payees. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 25. Max allowable is 100. | [optional][default to 25] |

### Return type

[**PagedPayeeInvitationStatusResponse2**](PagedPayeeInvitationStatusResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_batch_status_v3

> <QueryBatchResponse> query_batch_status_v3(batch_id)

Query Batch Status

<p>Use v4 instead</p> Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
batch_id = TODO # String | Batch Id

begin
  # Query Batch Status
  result = api_instance.query_batch_status_v3(batch_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->query_batch_status_v3: #{e}"
end
```

#### Using the query_batch_status_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueryBatchResponse>, Integer, Hash)> query_batch_status_v3_with_http_info(batch_id)

```ruby
begin
  # Query Batch Status
  data, status_code, headers = api_instance.query_batch_status_v3_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryBatchResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->query_batch_status_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | [**String**](.md) | Batch Id |  |

### Return type

[**QueryBatchResponse**](QueryBatchResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_batch_status_v4

> <QueryBatchResponse2> query_batch_status_v4(batch_id)

Query Batch Status

Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
batch_id = TODO # String | Batch Id

begin
  # Query Batch Status
  result = api_instance.query_batch_status_v4(batch_id)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->query_batch_status_v4: #{e}"
end
```

#### Using the query_batch_status_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueryBatchResponse2>, Integer, Hash)> query_batch_status_v4_with_http_info(batch_id)

```ruby
begin
  # Query Batch Status
  data, status_code, headers = api_instance.query_batch_status_v4_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryBatchResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->query_batch_status_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | [**String**](.md) | Batch Id |  |

### Return type

[**QueryBatchResponse2**](QueryBatchResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_payee_invite_v3

> resend_payee_invite_v3(payee_id, invite_payee_request)

Resend Payee Invite

<p>Use v4 instead</p> <p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payee_id = TODO # String | The UUID of the payee.
invite_payee_request = VeloPayments::InvitePayeeRequest.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e'}) # InvitePayeeRequest | Provide Payor Id in body of request

begin
  # Resend Payee Invite
  api_instance.resend_payee_invite_v3(payee_id, invite_payee_request)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->resend_payee_invite_v3: #{e}"
end
```

#### Using the resend_payee_invite_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request)

```ruby
begin
  # Resend Payee Invite
  data, status_code, headers = api_instance.resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->resend_payee_invite_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | [**String**](.md) | The UUID of the payee. |  |
| **invite_payee_request** | [**InvitePayeeRequest**](InvitePayeeRequest.md) | Provide Payor Id in body of request |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_payee_invite_v4

> resend_payee_invite_v4(payee_id, invite_payee_request2)

Resend Payee Invite

<p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
payee_id = TODO # String | The UUID of the payee.
invite_payee_request2 = VeloPayments::InvitePayeeRequest2.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e'}) # InvitePayeeRequest2 | Provide Payor Id in body of request

begin
  # Resend Payee Invite
  api_instance.resend_payee_invite_v4(payee_id, invite_payee_request2)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->resend_payee_invite_v4: #{e}"
end
```

#### Using the resend_payee_invite_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_payee_invite_v4_with_http_info(payee_id, invite_payee_request2)

```ruby
begin
  # Resend Payee Invite
  data, status_code, headers = api_instance.resend_payee_invite_v4_with_http_info(payee_id, invite_payee_request2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->resend_payee_invite_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | [**String**](.md) | The UUID of the payee. |  |
| **invite_payee_request2** | [**InvitePayeeRequest2**](InvitePayeeRequest2.md) | Provide Payor Id in body of request |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v3_create_payee

> <CreatePayeesCSVResponse> v3_create_payee(opts)

Initiate Payee Creation

<p>Use v4 instead</p> Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body. In addition to standard semantic validations, a 400 will also result if there is a duplicate remote id within the batch / if there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch). The validation at this stage is intra-batch only. Validation against payees who have already been invited occurs subsequently during processing of the batch. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
opts = {
  create_payees_request: VeloPayments::CreatePayeesRequest.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e', payees: [VeloPayments::CreatePayee.new({email: 'bob@example.com', remote_id: 'Remote ID', type: VeloPayments::PayeeType::INDIVIDUAL, address: VeloPayments::CreatePayeeAddress.new({line1: '500 Duval St', city: 'Key West', country: 'AF'})})]}) # CreatePayeesRequest | Post payees to create.
}

begin
  # Initiate Payee Creation
  result = api_instance.v3_create_payee(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->v3_create_payee: #{e}"
end
```

#### Using the v3_create_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayeesCSVResponse>, Integer, Hash)> v3_create_payee_with_http_info(opts)

```ruby
begin
  # Initiate Payee Creation
  data, status_code, headers = api_instance.v3_create_payee_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayeesCSVResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->v3_create_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payees_request** | [**CreatePayeesRequest**](CreatePayeesRequest.md) | Post payees to create. | [optional] |

### Return type

[**CreatePayeesCSVResponse**](CreatePayeesCSVResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## v4_create_payee

> <CreatePayeesCSVResponse2> v4_create_payee(opts)

Initiate Payee Creation

Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body. In addition to standard semantic validations, a 400 will also result if there is a duplicate remote id within the batch / if there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch). The validation at this stage is intra-batch only. Validation against payees who have already been invited occurs subsequently during processing of the batch. 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayeeInvitationApi.new
opts = {
  create_payees_request2: VeloPayments::CreatePayeesRequest2.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e', payees: [VeloPayments::CreatePayee2.new({email: 'bob@example.com', remote_id: 'Remote ID', type: VeloPayments::PayeeType::INDIVIDUAL, address: VeloPayments::CreatePayeeAddress2.new({line1: '500 Duval St', city: 'Key West', country: 'AF'})})]}) # CreatePayeesRequest2 | Post payees to create.
}

begin
  # Initiate Payee Creation
  result = api_instance.v4_create_payee(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->v4_create_payee: #{e}"
end
```

#### Using the v4_create_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayeesCSVResponse2>, Integer, Hash)> v4_create_payee_with_http_info(opts)

```ruby
begin
  # Initiate Payee Creation
  data, status_code, headers = api_instance.v4_create_payee_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayeesCSVResponse2>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->v4_create_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payees_request2** | [**CreatePayeesRequest2**](CreatePayeesRequest2.md) | Post payees to create. | [optional] |

### Return type

[**CreatePayeesCSVResponse2**](CreatePayeesCSVResponse2.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

