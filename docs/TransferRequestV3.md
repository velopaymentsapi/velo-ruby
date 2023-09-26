# VeloPayments::TransferRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_source_account_id** | **String** | The &#39;to&#39; source account id, which will be credited |  |
| **amount** | **Integer** | Amount to transfer, in minor units |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::TransferRequestV3.new(
  to_source_account_id: null,
  amount: null,
  currency: USD
)
```

