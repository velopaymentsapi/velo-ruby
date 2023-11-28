# VeloPayments::FundingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **funding_id** | **String** |  |  |
| **payor_id** | **String** |  |  |
| **created_at** | **Time** | The date and time the funding was created |  |
| **detected_funding_ref** | **String** |  | [optional] |
| **amount** | **Integer** |  |  |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **text** | **String** |  | [optional] |
| **physical_account_name** | **String** |  | [optional] |
| **source_account_id** | **String** |  | [optional] |
| **allocation_type** | **String** | Funding Allocation Type. One of the following values: AUTOMATIC, MANUAL | [optional] |
| **allocated_at** | **Time** | Populated only if the funding has been allocated. The date and time the funding was allocated. | [optional] |
| **allocation_date** | **Time** | Populated with allocatedAt if allocated otherwise createdAt. Deprecated in v2.36 - will be removed in the future. | [optional] |
| **reason** | **String** |  | [optional] |
| **hidden_date** | **Time** |  | [optional] |
| **funding_account_type** | **String** | Funding Account Type. One of the following values: FBO, PRIVATE |  |
| **status** | **String** | Current status of the funding. One of the follwing values: PENDING, UNALLOCATED, ALLOCATED, HIDDEN, RETURNED, RETURNING, BULK_RETURN, OTHER |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::FundingResponse.new(
  funding_id: null,
  payor_id: null,
  created_at: null,
  detected_funding_ref: null,
  amount: null,
  currency: USD,
  text: null,
  physical_account_name: null,
  source_account_id: null,
  allocation_type: null,
  allocated_at: null,
  allocation_date: null,
  reason: null,
  hidden_date: null,
  funding_account_type: FBO,
  status: ALLOCATED
)
```

