# VeloPayments::CreatePayoutRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_from_payor_id** | **String** | &lt;p&gt;The id of the payor whose source account(s) will be debited&lt;/p&gt; &lt;p&gt;payoutFromPayorId and payoutToPayorId must be both supplied or both omitted&lt;/p&gt;  | [optional] |
| **payout_to_payor_id** | **String** | &lt;p&gt;The id of the payor whose payees will be paid&lt;/p&gt; &lt;p&gt;payoutFromPayorId and payoutToPayorId must be both supplied or both omitted&lt;/p&gt;  | [optional] |
| **payout_memo** | **String** | &lt;p&gt;Text applied to all payment memos unless specified explicitly on a payment&lt;/p&gt; &lt;p&gt;This should be the reference field on the statement seen by the payee (but not via ACH)&lt;/p&gt;  | [optional] |
| **payments** | [**Array&lt;PaymentInstructionV3&gt;**](PaymentInstructionV3.md) |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayoutRequestV3.new(
  payout_from_payor_id: c4261044-13df-4a6c-b1d4-fa8be2b46f5a,
  payout_to_payor_id: 9afc6b39-de12-466a-a9ca-07c7a23b312d,
  payout_memo: Monthly Payment,
  payments: null
)
```

