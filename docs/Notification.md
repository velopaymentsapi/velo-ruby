# VeloPayments::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version of the notification schema |  |
| **sequence_number** | **Integer** | This is a payor specific sequence number starting at 1 for the first notification sent |  |
| **category** | **String** | The category that the notification relates to. One of \&quot;payment\&quot;, \&quot;payee\&quot;, \&quot;debit\&quot; or \&quot;system\&quot; |  |
| **event_name** | **String** | The name of event that led to this notification |  |
| **source** | [**NotificationSource**](NotificationSource.md) |  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::Notification.new(
  api_version: 1,
  sequence_number: 1234,
  category: payment,
  event_name: payment.accepted,
  source: null
)
```

