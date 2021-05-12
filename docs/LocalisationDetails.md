# VeloPayments::LocalisationDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **String** | the English language message template used to construct the error message | [optional] |
| **parameters** | **Hash&lt;String, String&gt;** | name to value map containing any named parameters that appear in the message template | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::LocalisationDetails.new(
  template: size must be between {min} and {max},
  parameters: {&quot;min&quot;:&quot;0&quot;,&quot;max&quot;:&quot;10&quot;}
)
```

