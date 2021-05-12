# VeloPayments::PayoutPayorIds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submitting_payor_id** | **String** | The ID of the Payor that is submitting the payout |  |
| **payout_from_payor_id** | **String** | The ID of the Payor providing the source account for the payout |  |
| **payout_to_payor_id** | **String** | The ID of the Payor that owns the Payee (on behalf of) |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PayoutPayorIds.new(
  submitting_payor_id: ac207f97-663c-4429-9d57-ba5b35d6672d,
  payout_from_payor_id: 35198f08-1c7b-4a91-8921-cd760ed92bca,
  payout_to_payor_id: 3eb99144-6ebf-4b02-9483-ad86b2ff1bca
)
```

