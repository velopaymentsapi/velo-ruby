# VeloPayments::PayeeDeltaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**PayeeDeltaResponsePage**](PayeeDeltaResponsePage.md) |  | [optional] |
| **links** | [**Array&lt;PayeeDeltaResponseLinks&gt;**](PayeeDeltaResponseLinks.md) |  | [optional] |
| **content** | [**Array&lt;PayeeDelta&gt;**](PayeeDelta.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeDeltaResponse.new(
  page: null,
  links: null,
  content: null
)
```

