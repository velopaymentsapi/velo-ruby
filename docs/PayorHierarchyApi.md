# VeloPayments::PayorHierarchyApi

All URIs are relative to *https://api.sandbox.velopayments.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payor_links_v1**](PayorHierarchyApi.md#payor_links_v1) | **GET** /v1/payorLinks | List Payor Links |


## payor_links_v1

> <PayorLinksResponse> payor_links_v1(opts)

List Payor Links

<p>If the payor is set up as part of a hierarchy you can use this API to traverse the hierarchy</p> 

### Examples

```ruby
require 'time'
require 'velopayments'
# setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::PayorHierarchyApi.new
opts = {
  descendants_of_payor: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The Payor ID from which to start the query to show all descendants
  parent_of_payor: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Query for the parent payor details for this payor id
  fields: 'fields_example' # String | <p>List of additional Payor fields to include in the response for each Payor</p> <p>The values of payorId and payorName are always included for each Payor by default</p> <p>You can add fields to the response for each payor by including them in the fields parameter separated by commas</p> <p>The supported fields are any combination of: primaryContactEmail,kycState</p> 
}

begin
  # List Payor Links
  result = api_instance.payor_links_v1(opts)
  p result
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorHierarchyApi->payor_links_v1: #{e}"
end
```

#### Using the payor_links_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorLinksResponse>, Integer, Hash)> payor_links_v1_with_http_info(opts)

```ruby
begin
  # List Payor Links
  data, status_code, headers = api_instance.payor_links_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorLinksResponse>
rescue VeloPayments::ApiError => e
  puts "Error when calling PayorHierarchyApi->payor_links_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **descendants_of_payor** | **String** | The Payor ID from which to start the query to show all descendants | [optional] |
| **parent_of_payor** | **String** | Query for the parent payor details for this payor id | [optional] |
| **fields** | **String** | &lt;p&gt;List of additional Payor fields to include in the response for each Payor&lt;/p&gt; &lt;p&gt;The values of payorId and payorName are always included for each Payor by default&lt;/p&gt; &lt;p&gt;You can add fields to the response for each payor by including them in the fields parameter separated by commas&lt;/p&gt; &lt;p&gt;The supported fields are any combination of: primaryContactEmail,kycState&lt;/p&gt;  | [optional] |

### Return type

[**PayorLinksResponse**](PayorLinksResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

