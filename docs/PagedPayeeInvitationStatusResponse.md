# VeloPayments::PagedPayeeInvitationStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PagedPayeeResponsePage**](PagedPayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedPayeeResponseLinks&gt;**](PagedPayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayeeInvitationStatusResponse&gt;**](PayeeInvitationStatusResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PagedPayeeInvitationStatusResponse.new(page: null,
                                 links: null,
                                 content: null)
```


