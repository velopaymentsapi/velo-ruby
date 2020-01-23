# VeloPayments::ValidatePasswordResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**score** | **Integer** | More secure passwords are given a higher score. &lt;P&gt; For a password to be acceptable for use in Velo, it must score at least 3  | [optional] 
**valid** | **Boolean** | if true then the password can be accepted | [optional] 
**warning** | **String** | Any warning message as a reason for the given score. | [optional] 
**suggestions** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::ValidatePasswordResponse.new(score: 2,
                                 valid: null,
                                 warning: Historic Password,
                                 suggestions: null)
```


