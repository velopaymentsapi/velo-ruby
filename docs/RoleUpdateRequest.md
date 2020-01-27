# VeloPayments::RoleUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roles** | **Array&lt;String&gt;** | &lt;p&gt;The role(s) for the user&lt;/p&gt; &lt;p&gt;The role must exist&lt;/p&gt; &lt;p&gt;The role can be a custom role or a system role but the invoker must have the permissions to assign the role&lt;/p&gt; &lt;p&gt;System roles are: backoffice.admin, payor.master_admin, payor.admin, payor.support&lt;/p&gt;  | 
**verification_code** | **String** | &lt;p&gt;Optional property that MUST be suppied when manually verifying a user&lt;/p&gt; &lt;p&gt;The user&#39;s smsNumber is registered via a separate endpoint and an OTP sent to them&lt;/p&gt;  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::RoleUpdateRequest.new(roles: [&quot;payor.admin&quot;],
                                 verification_code: 123456)
```


