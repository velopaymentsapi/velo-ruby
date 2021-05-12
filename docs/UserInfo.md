# VeloPayments::UserInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | the id of the user | [optional] |
| **user_type** | [**UserType2**](UserType2.md) |  | [optional] |
| **mfa_details** | [**MFADetails**](MFADetails.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::UserInfo.new(
  user_id: 39976ee5-dc4c-4b21-a966-a04fa71ef9e1,
  user_type: null,
  mfa_details: null
)
```

