# VeloPayments::PaymentInstructionV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | Your identifier for the payee |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **amount** | **Integer** | &lt;p&gt;Amount to send to Payee&lt;/p&gt; &lt;p&gt;The maximum payment amount is dependent on the currency&lt;/p&gt;  |  |
| **payment_memo** | **String** | &lt;p&gt;Any value here will override the memo value in the parent payout&lt;/p&gt; &lt;p&gt;This should be the reference field on the statement seen by the payee (but not via ACH)&lt;/p&gt;  | [optional] |
| **source_account_name** | **String** | Must match a valid source account name belonging to the payor. Exactly one of sourceAccountName or transactionId is required. | [optional] |
| **transaction_id** | **String** | Must match a valid transaction id previously created by the payor. Exactly one of sourceAccountName or transactionId is required. | [optional] |
| **payor_payment_id** | **String** | A reference identifier for the payor for the given payee payment | [optional] |
| **transmission_type** | **String** | &lt;p&gt;Optionally choose a specific transmission method for the payment.&lt;/p&gt; &lt;p&gt;Valid values for transmissionType can be found attached to the Source Account&lt;/p&gt;  | [optional] |
| **remote_system_id** | **String** | &lt;p&gt;The identifier for the remote payments system if not Velo&lt;/p&gt; &lt;p&gt;Should only be used after consultation with Velo Payments&lt;/p&gt;  | [optional] |
| **payment_metadata** | **String** | &lt;p&gt;Metadata about the payment that may be relevant to the specific rails or remote system making the payout&lt;/p&gt; &lt;p&gt;The structure of the data will be dictated by the requirements of the payment rails&lt;/p&gt;  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentInstructionV3.new(
  remote_id: remoteId1234,
  currency: USD,
  amount: 1299,
  payment_memo: my memo,
  source_account_name: MyAccountName,
  transaction_id: 859af785-223b-4d5b-a708-5fa57f006dbb,
  payor_payment_id: 123211321ABSD,
  transmission_type: ACH,
  remote_system_id: null,
  payment_metadata: invoiceeId_123|abc001:12345|xyz002:4567
)
```

