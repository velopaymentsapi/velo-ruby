# VeloPayments::AcceptedPaymentV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | Your identifier for the payee |  |
| **currency_type** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **amount** | **Integer** | The amount of the payment in minor units |  |
| **source_account_name** | **String** | The identifier of the source account to debit the payment from |  |
| **payor_payment_id** | **String** | A reference identifier for the payor for the given payee payment |  |
| **payment_memo** | **String** | &lt;p&gt;Any value here will override the memo value in the parent payout&lt;/p&gt; &lt;p&gt;This should be the reference field on the statement seen by the payee (but not via ACH)&lt;/p&gt;  | [optional] |
| **remote_system_id** | **String** | &lt;p&gt;The identifier for the remote payments system if not Velo&lt;/p&gt;  | [optional] |
| **payment_metadata** | **String** | &lt;p&gt;Metadata about the payment that may be relevant to the specific rails or remote system making the payout&lt;/p&gt; &lt;p&gt;The structure of the data will be dictated by the requirements of the payment rails&lt;/p&gt;  | [optional] |
| **rails_id** | **String** | Indicates the 3rd party system involved in making this payment |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::AcceptedPaymentV3.new(
  remote_id: remoteId1234,
  currency_type: USD,
  amount: 10000,
  source_account_name: Chase Bank Account,
  payor_payment_id: 123211321ABSD,
  payment_memo: INV00112,
  remote_system_id: OB012,
  payment_metadata: invoiceeId_123|abc001:12345|xyz002:4567,
  rails_id: SVB
)
```

