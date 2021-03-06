# VeloPayments::RejectedPaymentV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** |  |  |
| **currency_type** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **amount** | **Integer** |  |  |
| **source_account_name** | **String** |  |  |
| **payor_payment_id** | **String** |  |  |
| **remote_system_id** | **String** |  | [optional] |
| **payment_metadata** | **String** |  | [optional] |
| **reason** | **String** |  |  |
| **reason_code** | **String** |  | [optional] |
| **line_number** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::RejectedPaymentV3.new(
  remote_id: remoteIdVal123,
  currency_type: USD,
  amount: 1234,
  source_account_name: Chase,
  payor_payment_id: paymenIdVal123123,
  remote_system_id: Remote_System_Id_101234,
  payment_metadata: invoiceeId_123|abc001:12345|xyz002:4567,
  reason: The payee has not been onboarded,
  reason_code: PAYMENT_VALUE_TOO_HIGH,
  line_number: 10,
  message: Payment cannot be processed because of the Payee&#39;s OFAC or Compliance Status
)
```

