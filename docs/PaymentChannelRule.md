# VeloPayments::PaymentChannelRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **element** | **String** | &lt;p&gt;the rule element&lt;/p&gt; &lt;p&gt;will match a given element name for a payment channel configuration  |  |
| **required** | **Boolean** | is this element required |  |
| **display_name** | **String** | User friendly name |  |
| **min_length** | **Integer** | mininum length of the element data | [optional] |
| **max_length** | **Integer** | maximum length of the element data | [optional] |
| **validation** | **String** | a regex to validate the element data |  |
| **display_order** | **Integer** |  | [optional] |
| **description** | **String** | An optional description, or hint, as to how the user should enter the field value. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentChannelRule.new(
  element: accountName,
  required: null,
  display_name: Account Name,
  min_length: 5,
  max_length: 50,
  validation: ^[0-9]{6,11}$,
  display_order: null,
  description: The bank branch, account number prefix and account number suffix; with hyphen separators.
)
```

