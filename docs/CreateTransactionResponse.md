# VeloPayments::CreateTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The Id of the newly created transaction  |  |
| **transaction_short_code** | **String** | The short code for the transaction that can be used when sending funds into the platform  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreateTransactionResponse.new(
  transaction_id: 4d88e559-d057-45b1-8d8b-b9ccc06f4503,
  transaction_short_code: T1234ABC
)
```

