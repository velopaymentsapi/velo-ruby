# VeloPayments::WebhooksResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PagedPayeeInvitationStatusResponsePage**](PagedPayeeInvitationStatusResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;WebhookResponse&gt;**](WebhookResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::WebhooksResponse.new(page: null,
                                 links: null,
                                 content: null)
```


