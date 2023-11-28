# VeloPayments::FundingAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** | The id of the payor associated with the funding. | [optional] |
| **amount** | **Float** | The amount funded | [optional] |
| **currency** | **String** | The currency of the funding | [optional] |
| **date_time** | **Time** |  | [optional] |
| **status** | **String** | Status of the funding. One of the following values: PENDING, FAILED, CREDIT, DEBIT | [optional] |
| **source_account_name** | **String** |  | [optional] |
| **funding_account_name** | **String** |  | [optional] |
| **funding_type** | **String** | Funding type. One of the following values: ACH, WIRE, EMBEDDED, BANK_TRANSFER | [optional] |
| **events** | [**Array&lt;FundingEvent2&gt;**](FundingEvent2.md) |  | [optional] |
| **topup_type** | **String** | Type of top up. One of the following values: AUTOMATIC, MANUAL | [optional] |
| **transaction_id** | **String** | The id of the transaction associated with the funding if there was one | [optional] |
| **transaction_reference** | **String** | The payors reference for the transaction associated with the funding if there was one | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingAudit.new(
  payor_id: null,
  amount: 120000,
  currency: USD,
  date_time: null,
  status: null,
  source_account_name: null,
  funding_account_name: null,
  funding_type: null,
  events: null,
  topup_type: null,
  transaction_id: null,
  transaction_reference: null
)
```

