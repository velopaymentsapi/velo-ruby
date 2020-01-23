# VeloPayments::SelfUpdatePasswordRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**old_password** | **String** | The user&#39;s current password | 
**new_password** | **String** | The new password | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::SelfUpdatePasswordRequest.new(old_password: My_current_password,
                                 new_password: My_new_password)
```


