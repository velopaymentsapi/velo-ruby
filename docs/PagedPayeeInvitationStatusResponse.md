# VeloPayments::PagedPayeeInvitationStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PayeeResponsePage**](PayeeResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PayeeResponseLinks&gt;**](PayeeResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;PayeeInvitationStatusResponse&gt;**](PayeeInvitationStatusResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PagedPayeeInvitationStatusResponse.new(page: null,
                                 links: null,
                                 content: null)
```


