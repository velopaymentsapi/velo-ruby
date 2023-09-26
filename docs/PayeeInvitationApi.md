# VeloPayments::PayeeInvitationApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payee_v3**](PayeeInvitationApi.md#create_payee_v3) | **POST** /v3/payees | Initiate Payee Creation |
| [**get_payees_invitation_status_v3**](PayeeInvitationApi.md#get_payees_invitation_status_v3) | **GET** /v3/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status |
| [**get_payees_invitation_status_v4**](PayeeInvitationApi.md#get_payees_invitation_status_v4) | **GET** /v4/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status |
| [**query_batch_status_v3**](PayeeInvitationApi.md#query_batch_status_v3) | **GET** /v3/payees/batch/{batchId} | Query Batch Status |
| [**query_batch_status_v4**](PayeeInvitationApi.md#query_batch_status_v4) | **GET** /v4/payees/batch/{batchId} | Query Batch Status |
| [**resend_payee_invite_v3**](PayeeInvitationApi.md#resend_payee_invite_v3) | **POST** /v3/payees/{payeeId}/invite | Resend Payee Invite |
| [**resend_payee_invite_v4**](PayeeInvitationApi.md#resend_payee_invite_v4) | **POST** /v4/payees/{payeeId}/invite | Resend Payee Invite |
| [**v4_create_payee**](PayeeInvitationApi.md#v4_create_payee) | **POST** /v4/payees | Initiate Payee Creation |


## create_payee_v3

> <CreatePayeesCSVResponseV3> create_payee_v3(opts)

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
  create_payees_request_v3: VeloPayments::CreatePayeesRequestV3.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e', payees: [VeloPayments::CreatePayeeV3.new({email: 'bob@example.com', remote_id: 'Remote ID', type: 'type_example', address: VeloPayments::CreatePayeeAddressV3.new({line1: '500 Duval St', city: 'Key West', country: 'US'})})]}) # CreatePayeesRequestV3 | Post payees to create.
}

begin
  # Initiate Payee Creation
  result = api_instance.create_payee_v3(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->create_payee_v3: #{e}"
end
```

#### Using the create_payee_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayeesCSVResponseV3>, Integer, Hash)> create_payee_v3_with_http_info(opts)

```ruby
begin
  # Initiate Payee Creation
  data, status_code, headers = api_instance.create_payee_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayeesCSVResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->create_payee_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payees_request_v3** | [**CreatePayeesRequestV3**](CreatePayeesRequestV3.md) | Post payees to create. | [optional] |

### Return type

[**CreatePayeesCSVResponseV3**](CreatePayeesCSVResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## get_payees_invitation_status_v3

> <PagedPayeeInvitationStatusResponseV3> get_payees_invitation_status_v3(payor_id, opts)

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
payor_id = '9ac75325-5dcd-42d5-b992-175d7e0a035e' # String | The account owner Payor ID
opts = {
  payee_id: '2aa5d7e0-2ecb-403f-8494-1865ed0454e9', # String | The UUID of the payee.
  invitation_status: 'invitation_status_example', # String | The invitation status of the payees.
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

> <Array(<PagedPayeeInvitationStatusResponseV3>, Integer, Hash)> get_payees_invitation_status_v3_with_http_info(payor_id, opts)

```ruby
begin
  # Get Payee Invitation Status
  data, status_code, headers = api_instance.get_payees_invitation_status_v3_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPayeeInvitationStatusResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->get_payees_invitation_status_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **payee_id** | **String** | The UUID of the payee. | [optional] |
| **invitation_status** | **String** | The invitation status of the payees. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 25. Max allowable is 100. | [optional][default to 25] |

### Return type

[**PagedPayeeInvitationStatusResponseV3**](PagedPayeeInvitationStatusResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payees_invitation_status_v4

> <PagedPayeeInvitationStatusResponseV4> get_payees_invitation_status_v4(payor_id, opts)

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
payor_id = '9ac75325-5dcd-42d5-b992-175d7e0a035e' # String | The account owner Payor ID
opts = {
  payee_id: '2aa5d7e0-2ecb-403f-8494-1865ed0454e9', # String | The UUID of the payee.
  invitation_status: 'invitation_status_example', # String | The invitation status of the payees.
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

> <Array(<PagedPayeeInvitationStatusResponseV4>, Integer, Hash)> get_payees_invitation_status_v4_with_http_info(payor_id, opts)

```ruby
begin
  # Get Payee Invitation Status
  data, status_code, headers = api_instance.get_payees_invitation_status_v4_with_http_info(payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PagedPayeeInvitationStatusResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->get_payees_invitation_status_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The account owner Payor ID |  |
| **payee_id** | **String** | The UUID of the payee. | [optional] |
| **invitation_status** | **String** | The invitation status of the payees. | [optional] |
| **page** | **Integer** | Page number. Default is 1. | [optional][default to 1] |
| **page_size** | **Integer** | Page size. Default is 25. Max allowable is 100. | [optional][default to 25] |

### Return type

[**PagedPayeeInvitationStatusResponseV4**](PagedPayeeInvitationStatusResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_batch_status_v3

> <QueryBatchResponseV3> query_batch_status_v3(batch_id)

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
batch_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Batch Id

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

> <Array(<QueryBatchResponseV3>, Integer, Hash)> query_batch_status_v3_with_http_info(batch_id)

```ruby
begin
  # Query Batch Status
  data, status_code, headers = api_instance.query_batch_status_v3_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryBatchResponseV3>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->query_batch_status_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | Batch Id |  |

### Return type

[**QueryBatchResponseV3**](QueryBatchResponseV3.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_batch_status_v4

> <QueryBatchResponseV4> query_batch_status_v4(batch_id)

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
batch_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Batch Id

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

> <Array(<QueryBatchResponseV4>, Integer, Hash)> query_batch_status_v4_with_http_info(batch_id)

```ruby
begin
  # Query Batch Status
  data, status_code, headers = api_instance.query_batch_status_v4_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryBatchResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->query_batch_status_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | Batch Id |  |

### Return type

[**QueryBatchResponseV4**](QueryBatchResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_payee_invite_v3

> resend_payee_invite_v3(payee_id, invite_payee_request_v3)

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
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
invite_payee_request_v3 = VeloPayments::InvitePayeeRequestV3.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e'}) # InvitePayeeRequestV3 | Provide Payor Id in body of request

begin
  # Resend Payee Invite
  api_instance.resend_payee_invite_v3(payee_id, invite_payee_request_v3)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->resend_payee_invite_v3: #{e}"
end
```

#### Using the resend_payee_invite_v3_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request_v3)

```ruby
begin
  # Resend Payee Invite
  data, status_code, headers = api_instance.resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request_v3)
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
| **payee_id** | **String** | The UUID of the payee. |  |
| **invite_payee_request_v3** | [**InvitePayeeRequestV3**](InvitePayeeRequestV3.md) | Provide Payor Id in body of request |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_payee_invite_v4

> resend_payee_invite_v4(payee_id, invite_payee_request_v4)

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
payee_id = '2aa5d7e0-2ecb-403f-8494-1865ed0454e9' # String | The UUID of the payee.
invite_payee_request_v4 = VeloPayments::InvitePayeeRequestV4.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e'}) # InvitePayeeRequestV4 | Provide Payor Id in body of request

begin
  # Resend Payee Invite
  api_instance.resend_payee_invite_v4(payee_id, invite_payee_request_v4)
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->resend_payee_invite_v4: #{e}"
end
```

#### Using the resend_payee_invite_v4_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_payee_invite_v4_with_http_info(payee_id, invite_payee_request_v4)

```ruby
begin
  # Resend Payee Invite
  data, status_code, headers = api_instance.resend_payee_invite_v4_with_http_info(payee_id, invite_payee_request_v4)
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
| **payee_id** | **String** | The UUID of the payee. |  |
| **invite_payee_request_v4** | [**InvitePayeeRequestV4**](InvitePayeeRequestV4.md) | Provide Payor Id in body of request |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v4_create_payee

> <CreatePayeesCSVResponseV4> v4_create_payee(opts)

Initiate Payee Creation

<p>Initiate the process of creating 1 to 2000 payees in a batch</p> <p>Use the batchId in the response to query for status.</p> <p>In addition to standard semantic validations, a 400 will also result if: </p> <ul> <li>there is a duplicate remote id within the batch</li> <li>there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch).</li> </ul> <p>The validation at this stage is intra-batch only.</p> <p>Validation against payees who have already been invited occurs subsequently during processing of the batch.</p> 

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
  create_payees_request_v4: VeloPayments::CreatePayeesRequestV4.new({payor_id: '9ac75325-5dcd-42d5-b992-175d7e0a035e', payees: [VeloPayments::CreatePayeeV4.new({email: 'bob@example.com', remote_id: 'Remote ID', type: VeloPayments::PayeeTypeEnum::INDIVIDUAL, address: VeloPayments::CreatePayeeAddressV4.new({line1: '500 Duval St', city: 'Key West', country: 'US'})})]}) # CreatePayeesRequestV4 | Post payees to create.
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

> <Array(<CreatePayeesCSVResponseV4>, Integer, Hash)> v4_create_payee_with_http_info(opts)

```ruby
begin
  # Initiate Payee Creation
  data, status_code, headers = api_instance.v4_create_payee_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayeesCSVResponseV4>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayeeInvitationApi->v4_create_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payees_request_v4** | [**CreatePayeesRequestV4**](CreatePayeesRequestV4.md) | Post payees to create. | [optional] |

### Return type

[**CreatePayeesCSVResponseV4**](CreatePayeesCSVResponseV4.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

