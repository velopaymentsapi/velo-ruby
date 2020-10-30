# VeloPayments::CreateWebhookRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_id** | **String** |  | 
**webhook_url** | **String** |  | 
**authorization_header** | **String** |  | [optional] 
**enabled** | **Boolean** |  | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreateWebhookRequest.new(payor_id: null,
                                 webhook_url: null,
                                 authorization_header: null,
                                 enabled: null)
```


