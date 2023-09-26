# VeloPayments::FundingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_id** | **String** |  |  |
| **payor_id** | **String** |  |  |
| **allocation_date** | **Time** |  |  |
| **detected_funding_ref** | **String** |  | [optional] |
| **amount** | **Integer** |  |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **text** | **String** |  | [optional] |
| **physical_account_name** | **String** |  | [optional] |
| **source_account_id** | **String** |  | [optional] |
| **allocation_type** | **String** | Funding Allocation Type. One of the following values: AUTOMATIC, MANUAL | [optional] |
| **reason** | **String** |  | [optional] |
| **hidden_date** | **Time** |  | [optional] |
| **funding_account_type** | **String** | Funding Account Type. One of the following values: FBO, WUBS_DECOUPLED, PRIVATE |  |
| **status** | **String** | Current status of the funding. One of the follwing values: PENDING, UNALLOCATED, ALLOCATED, HIDDEN, RETURNED, RETURNING, BULK_RETURN, OTHER |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingResponse.new(
  funding_id: null,
  payor_id: null,
  allocation_date: null,
  detected_funding_ref: null,
  amount: null,
  currency: USD,
  text: null,
  physical_account_name: null,
  source_account_id: null,
  allocation_type: null,
  reason: null,
  hidden_date: null,
  funding_account_type: FBO,
  status: ALLOCATED
)
```

