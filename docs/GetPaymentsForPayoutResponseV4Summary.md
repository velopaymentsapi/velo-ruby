# VeloPayments::GetPaymentsForPayoutResponseV4Summary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payout_status** | **String** | The current status of the payout. | [optional] 
**submitted_date_time** | **DateTime** | The date/time at which the payout was submitted. | [optional] 
**instructed_date_time** | **DateTime** | The date/time at which the payout was instructed. | [optional] 
**payout_memo** | **String** | The memo attached to the payout. | [optional] 
**payout_type** | [**PayoutTypeV4**](PayoutTypeV4.md) |  | [optional] 
**quoted_date_time** | **DateTime** | The date/time at which the payout was quoted. | [optional] 
**submitting** | [**PayoutPayorV4**](PayoutPayorV4.md) |  | [optional] 
**payout_from** | [**PayoutPayorV4**](PayoutPayorV4.md) |  | [optional] 
**payout_to** | [**PayoutPayorV4**](PayoutPayorV4.md) |  | [optional] 
**quoted** | [**PayoutPrincipalV4**](PayoutPrincipalV4.md) |  | [optional] 
**instructed** | [**PayoutPrincipalV4**](PayoutPrincipalV4.md) |  | [optional] 
**withdrawn** | [**PayoutPrincipalV4**](PayoutPrincipalV4.md) |  | [optional] 
**total_payments** | **Integer** | The count of payments within the payout. | [optional] 
**confirmed_payments** | **Integer** | The count of payments within the payout which have been confirmed. | [optional] 
**released_payments** | **Integer** | The count of payments within the payout which have been released. | [optional] 
**incomplete_payments** | **Integer** | The count of payments within the payout which are incomplete. | [optional] 
**returned_payments** | **Integer** | The count of payments within the payout which have been returned. | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::GetPaymentsForPayoutResponseV4Summary.new(payout_status: null,
                                 submitted_date_time: null,
                                 instructed_date_time: null,
                                 payout_memo: null,
                                 payout_type: null,
                                 quoted_date_time: null,
                                 submitting: null,
                                 payout_from: null,
                                 payout_to: null,
                                 quoted: null,
                                 instructed: null,
                                 withdrawn: null,
                                 total_payments: null,
                                 confirmed_payments: null,
                                 released_payments: null,
                                 incomplete_payments: null,
                                 returned_payments: null)
```


