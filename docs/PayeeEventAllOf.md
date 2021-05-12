# VeloPayments::PayeeEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | ID of this payee within the Velo platform |  |
| **reasons** | [**Array&lt;PayeeEventAllOfReasons&gt;**](PayeeEventAllOfReasons.md) | The reasons for the event notification. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayeeEventAllOf.new(
  payee_id: cbd9280f-8fde-4190-b014-979d88f3ec54,
  reasons: null
)
```

