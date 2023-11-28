# VeloPayments::TransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The Id of the transaction  |  |
| **transaction_short_code** | **String** | The short code for the transaction that can be used when sending funds into the platform  |  |
| **payor_id** | **String** | Indicates the Payor of the Transaction and which matches the payorId on the provided source account | [optional] |
| **source_account_name** | **String** | The name of the source account associated with the Transaction  | [optional] |
| **source_account_id** | **String** | The Id of the source account associated with the Transaction  | [optional] |
| **transaction_reference** | **String** | The payors own reference for the transaction  | [optional] |
| **transaction_metadata** | **Hash&lt;String, String&gt;** | Optional metadata attached to the transaction at creation time.  | [optional] |
| **balance** | **Integer** | The total amount of transaction in minor units  | [optional] |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | [optional] |
| **created_at** | **Time** | A timestamp when the transaction has been created. | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::TransactionResponse.new(
  transaction_id: 4d88e559-d057-45b1-8d8b-b9ccc06f4503,
  transaction_short_code: T1234ABC,
  payor_id: null,
  source_account_name: Payor_FOO_USD_Account,
  source_account_id: 7faf83a7-77e2-40bc-9e78-7d18fa2bb63e,
  transaction_reference: myInvoiceNumber-1234567890,
  transaction_metadata: null,
  balance: null,
  currency: USD,
  created_at: 2021-01-27T10:08:25.701Z
)
```

