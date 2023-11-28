# VeloPayments::PayorFundingDetectedAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rails_id** | **String** | the identifier of the payment rail from which funding was received | [optional] |
| **payor_id** | **String** | ID of the payor within the Velo platform |  |
| **funding_request_id** | **String** | ID of this funding transaction within the Velo platform |  |
| **funding_ref** | **String** | the external identity reference for this funding transaction | [optional] |
| **currency** | **String** | the ISO-4217 code for the currency in which the funding was made | [optional] |
| **amount** | **Integer** | the received funding amount in currency minor units | [optional] |
| **physical_account_name** | **String** | the name of the account as registered with the payment rail | [optional] |
| **source_account_name** | **String** | the name of the account as registered with the Velo platform | [optional] |
| **source_account_id** | **String** | the ID of the account as registered with the Velo platform | [optional] |
| **additional_information** | **String** | any additional information received from the payment rail | [optional] |
| **transaction_id** | **String** | The Id of the related transaction | [optional] |
| **transaction_reference** | **String** | The payors own reference for the related transaction | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayorFundingDetectedAllOf.new(
  rails_id: WUBS,
  payor_id: cbd9280f-8fde-4190-b014-979d88f3ec54,
  funding_request_id: cbd9280f-8fde-4190-b014-979d88f3ec54,
  funding_ref: some-ref-text,
  currency: GBP,
  amount: 1234,
  physical_account_name: Acme Company Ltd,
  source_account_name: Acme Co UK,
  source_account_id: cbd9280f-8fde-4190-b014-979d88f3ec54,
  additional_information: any additional information,
  transaction_id: 4d88e559-d057-45b1-8d8b-b9ccc06f4503,
  transaction_reference: myInvoiceNumber-1234567890
)
```

