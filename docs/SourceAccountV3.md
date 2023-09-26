# VeloPayments::SourceAccountV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_account_name** | **String** | The name of the source account as referencec in the payout |  |
| **source_account_id** | **String** | The id of the payout |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **total_payout_cost** | **Integer** | The total amount (in mnor units) that will be debited from the source account for the payout |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::SourceAccountV3.new(
  source_account_name: AccountName,
  source_account_id: cf81e490-4ab8-49c2-bd68-9d1e725480cb,
  currency: USD,
  total_payout_cost: 1000000
)
```

