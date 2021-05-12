# VeloPayments::FundingAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Funding Account Id | [optional] |
| **payor_id** | **String** |  | [optional] |
| **account_name** | **String** | name on the bank account | [optional] |
| **account_number** | **String** | bank account number | [optional] |
| **routing_number** | **String** | bank account routing number | [optional] |
| **source_account_ids** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** | name of funding account | [optional] |
| **currency** | **String** | ISO 4217 currency code | [optional] |
| **country** | **String** | ISO 3166-1 2 letter country code (upper case) | [optional] |
| **type** | **String** | Funding account type | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingAccountResponse.new(
  id: null,
  payor_id: null,
  account_name: Payor Corp,
  account_number: 7001001234,
  routing_number: 12345678,
  source_account_ids: null,
  name: My Funding Account,
  currency: USD,
  country: US,
  type: FBO
)
```

