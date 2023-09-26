# VeloPayments::PayorBrandingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_name** | **String** | The name of the payor |  |
| **logo_url** | **String** | &lt;p&gt;The URL to use for this payor’s logo&lt;/p&gt; &lt;p&gt;This will be an immutable system-generated URL&lt;/p&gt;  |  |
| **collective_alias** | **String** | How the payor has chosen to refer to payees | [optional] |
| **support_contact** | **String** | The payor’s support contact address | [optional] |
| **dba_name** | **String** | The payor’s &#39;Doing Business As&#39; name | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorBrandingResponse.new(
  payor_name: Key West Imports, Inc,
  logo_url: https://images.example.com/450ecb66-df18-4d0c-b557-f718782775df/logo.png,
  collective_alias: Contractors,
  support_contact: support@example.com,
  dba_name: Key West Imports
)
```

