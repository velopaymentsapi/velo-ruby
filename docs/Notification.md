# VeloPayments::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version of the notification schema |  |
| **sequence_number** | **Integer** | This is a payor specific sequence number starting at 1 for the first notification sent |  |
| **category** | **String** | The category that the notification relates to. One of \&quot;payment\&quot;, \&quot;payee\&quot;, \&quot;debit\&quot; or \&quot;system\&quot; |  |
| **event_name** | **String** | The name of event that led to this notification |  |
| **source** | [**OneOfPingPaymentStatusChangedPaymentRejectedOrReturnedOnboardingStatusChangedPayableStatusChangedPayeeDetailsChangedDebitStatusChanged**](OneOfPingPaymentStatusChangedPaymentRejectedOrReturnedOnboardingStatusChangedPayableStatusChangedPayeeDetailsChangedDebitStatusChanged.md) | One of the available set of source event payloads | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::Notification.new(
  api_version: 1,
  sequence_number: 1234,
  category: payment,
  event_name: payment.accepted,
  source: {&quot;type&quot;:&quot;payment_status_changed&quot;,&quot;eventId&quot;:&quot;270ab907-27ec-4b83-8028-0ff432bbdec4&quot;,&quot;createdAt&quot;:&quot;2020-06-18T15:09:42Z&quot;,&quot;paymentId&quot;:&quot;cbd9280f-8fde-4190-b014-979d88f3ec54&quot;,&quot;payoutPayorIds&quot;:{&quot;submittingPayorId&quot;:&quot;ac207f97-663c-4429-9d57-ba5b35d6672d&quot;,&quot;payoutFromPayorId&quot;:&quot;ac207f97-663c-4429-9d57-ba5b35d6672d&quot;,&quot;payoutToPayorId&quot;:&quot;ac207f97-663c-4429-9d57-ba5b35d6672d&quot;},&quot;payorPaymentId&quot;:&quot;ourpayment-id12345&quot;,&quot;status&quot;:&quot;ACCEPTED&quot;}
)
```

