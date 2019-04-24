# VeloPayments::PaymentEventResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** | The id of the event. | 
**event_date_time** | **DateTime** | The date/time at which the event occurred. | 
**event_type** | **String** | The type of the event. | 
**source_currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] 
**source_amount** | **Float** | The source amount exposed by the event. | [optional] 
**payment_currency** | [**PaymentAuditCurrency**](PaymentAuditCurrency.md) |  | [optional] 
**payment_amount** | **Float** | The destination amount exposed by the event. | [optional] 
**account_number** | **String** | The account number attached to the event. | [optional] 
**routing_number** | **String** | The routing number attached to the event. | [optional] 
**iban** | **String** |  | [optional] 
**account_name** | **String** |  | [optional] 
**principal** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentEventResponse.new(event_id: null,
                                 event_date_time: null,
                                 event_type: null,
                                 source_currency: null,
                                 source_amount: null,
                                 payment_currency: null,
                                 payment_amount: null,
                                 account_number: null,
                                 routing_number: null,
                                 iban: null,
                                 account_name: null,
                                 principal: null)
```


