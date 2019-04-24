# VeloPayments::PayorBrandingResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payor_name** | **String** | The name of the payor | 
**logo_url** | **String** | The URL to use for this payor’s logo | 
**collective_alias** | **String** | How the payor has chosen to refer to payees | [optional] 
**support_contact** | **String** | The payor’s support contact address | [optional] 
**dba_name** | **String** | The payor’s &#39;Doing Business As&#39; name | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PayorBrandingResponse.new(payor_name: null,
                                 logo_url: null,
                                 collective_alias: null,
                                 support_contact: null,
                                 dba_name: null)
```

