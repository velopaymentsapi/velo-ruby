# VeloPayments::CreateTransactionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | Indicates the Payor creating the Transaction and which matches the payorId on the provided source account |  |
| **source_account_name** | **String** | The name of the source account that the new Transaction will be associated with and any funding containing the transactionShortCode will credit.  |  |
| **transaction_reference** | **String** | The payors own reference for the transaction that can later be used for querying and retrieval.  |  |
| **transaction_metadata** | **Hash&lt;String, String&gt;** | Optional metadata that will be attached to the created transaction and can that can be retrieved later.| The total length of all the keys and values provided in the metadata must be no more than 4000 chars.  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreateTransactionRequest.new(
  payor_id: null,
  source_account_name: Payor_FOO_USD_Account,
  transaction_reference: myInvoiceNumber-1234567890,
  transaction_metadata: null
)
```

