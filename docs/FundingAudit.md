# VeloPayments::FundingAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount funded | [optional] |
| **currency** | **String** | The currency of the funding | [optional] |
| **date_time** | **Time** |  | [optional] |
| **status** | **String** | Status of the funding. One of the following values: PENDING, FAILED, CREDIT, DEBIT | [optional] |
| **source_account_name** | **String** |  | [optional] |
| **funding_account_name** | **String** |  | [optional] |
| **funding_type** | **String** | Funding type. One of the following values: ACH, WIRE, EMBEDDED, BANK_TRANSFER | [optional] |
| **events** | [**Array&lt;FundingEvent&gt;**](FundingEvent.md) |  | [optional] |
| **topup_type** | **String** | Type of top up. One of the following values: AUTOMATIC, MANUAL | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingAudit.new(
  amount: 120000,
  currency: USD,
  date_time: null,
  status: null,
  source_account_name: null,
  funding_account_name: null,
  funding_type: null,
  events: null,
  topup_type: null
)
```

