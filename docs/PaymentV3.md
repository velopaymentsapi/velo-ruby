# VeloPayments::PaymentV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** | The id of the payment |  |
| **remote_id** | **String** | The remoteId supplied by the payor that identifies the payee | [optional] |
| **currency** | **String** | The currency that the payment was made in | [optional] |
| **amount** | **Integer** | The amount of the payment in minor units | [optional] |
| **source_account_name** | **String** | The identifier of the source account to debit the payment from | [optional] |
| **payor_payment_id** | **String** | A reference identifier for the payor for the given payee payment | [optional] |
| **payment_memo** | **String** | &lt;p&gt;Any value here will override the memo value in the parent payout&lt;/p&gt; &lt;p&gt;This should be the reference field on the statement seen by the payee (but not via ACH)&lt;/p&gt;  | [optional] |
| **payee** | [**PayoutPayeeV3**](PayoutPayeeV3.md) |  | [optional] |
| **withdrawable** | **Boolean** | Can this paynent be withdrawn | [optional] |
| **status** | **String** | Current status of payment. One of the following values: SUBMITTED, ACCEPTED, REJECTED, WITHDRAWN, RETURNED, AWAITING_FUNDS, FUNDED, UNFUNDED, CANCELLED, BANK_PAYMENT_REQUESTED | [optional] |
| **transmission_type** | **String** | The transmission method of the payment. One of the following values: ACH, SAME_DAY_ACH, WIRE, LOCAL, SWIFT | [optional] |
| **remote_system_id** | **String** | &lt;p&gt;The identifier for the remote payments system if not Velo&lt;/p&gt;  | [optional] |
| **payment_metadata** | **String** | &lt;p&gt;Metadata about the payment that may be relevant to the specific rails or remote system making the payout&lt;/p&gt; &lt;p&gt;The structure of the data will be dictated by the requirements of the payment rails&lt;/p&gt;  | [optional] |
| **auto_withdrawn_reason_code** | **String** | Populated only if the payment was automatically withdrawn during instruction for being invalid | [optional] |
| **rails_id** | **String** | Indicates the 3rd party system involved in making this payment | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentV3.new(
  payment_id: 859af785-223b-4d5b-a708-5fa57f006dbb,
  remote_id: remoteIdVal123,
  currency: USD,
  amount: 10000,
  source_account_name: Chase Bank Account,
  payor_payment_id: 123211321ABSD,
  payment_memo: INV00112,
  payee: null,
  withdrawable: false,
  status: AWAITING_FUNDS,
  transmission_type: LOCAL,
  remote_system_id: OB012,
  payment_metadata: invoiceeId_123|abc001:12345|xyz002:4567,
  auto_withdrawn_reason_code: VE0003,
  rails_id: SVB
)
```

