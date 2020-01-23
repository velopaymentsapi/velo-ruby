# VeloPayments::PagedUserResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | [**PagedUserResponsePage**](PagedUserResponsePage.md) |  | [optional] 
**links** | [**Array&lt;PagedUserResponseLinks&gt;**](PagedUserResponseLinks.md) |  | [optional] 
**content** | [**Array&lt;UserResponse&gt;**](UserResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PagedUserResponse.new(page: null,
                                 links: null,
                                 content: null)
```


