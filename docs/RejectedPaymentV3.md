# VeloPayments::RejectedPaymentV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The remoteId supplied by the payor that identifies the payee |  |
| **currency_type** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **amount** | **Integer** | The amount of the payment in minor units |  |
| **source_account_name** | **String** | The identifier of the source account to debit the payment from |  |
| **payor_payment_id** | **String** | A reference identifier for the payor for the given payee payment |  |
| **remote_system_id** | **String** | &lt;p&gt;The identifier for the remote payments system if not Velo&lt;/p&gt;  | [optional] |
| **payment_metadata** | **String** | &lt;p&gt;Metadata about the payment that may be relevant to the specific rails or remote system making the payout&lt;/p&gt; &lt;p&gt;The structure of the data will be dictated by the requirements of the payment rails&lt;/p&gt;  | [optional] |
| **reason** | **String** | The reason for the payment being rejected |  |
| **reason_code** | **String** | The reason code as determined by Velo | [optional] |
| **line_number** | **Integer** | If the payment was submitted in a csv payout then this will be the line number of the payment in the file | [optional] |
| **message** | **String** | A more general rejection message than the reason property | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::RejectedPaymentV3.new(
  remote_id: remoteIdVal123,
  currency_type: USD,
  amount: 10000,
  source_account_name: Chase Bank Account,
  payor_payment_id: 123211321ABSD,
  remote_system_id: OB012,
  payment_metadata: invoiceeId_123|abc001:12345|xyz002:4567,
  reason: The payee has not been onboarded,
  reason_code: VE1012,
  line_number: 34,
  message: Payment cannot be processed because of the Payee&#39;s OFAC or Compliance Status
)
```

