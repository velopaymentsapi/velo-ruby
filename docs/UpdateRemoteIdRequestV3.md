# VeloPayments::UpdateRemoteIdRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  |  |
| **remote_id** | **String** |  |  |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UpdateRemoteIdRequestV3.new(
  payor_id: 9ac75325-5dcd-42d5-b992-175d7e0a035e,
  remote_id: remoteId123
)
```

