# VeloPayments::PaymentEventResponseV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** | The id of the event. | 
**event_date_time** | **Time** | The date/time at which the event occurred. | 
**event_type** | **String** | The type of the event. | 
**source_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**source_amount** | **Integer** | The source amount exposed by the event. | [optional] 
**payment_currency** | [**PaymentAuditCurrencyV3**](PaymentAuditCurrencyV3.md) |  | [optional] 
**payment_amount** | **Integer** | The destination amount exposed by the event. | [optional] 
**account_number** | **String** | The account number attached to the event. | [optional] 
**routing_number** | **String** | The routing number attached to the event. | [optional] 
**iban** | **String** |  | [optional] 
**account_name** | **String** |  | [optional] 
**principal** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentEventResponseV3.new(event_id: null,
                                 event_date_time: null,
                                 event_type: null,
                                 source_currency: null,
                                 source_amount: 1299,
                                 payment_currency: null,
                                 payment_amount: 1299,
                                 account_number: 123123123,
                                 routing_number: 123123123,
                                 iban: DE89 3704 0044 0532 0130 00,
                                 account_name: My account,
                                 principal: Prinicple example)
```


