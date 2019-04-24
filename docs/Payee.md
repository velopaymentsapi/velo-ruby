# VeloPayments::Payee

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | [optional] 
**payor_refs** | [**Array&lt;PayorRef&gt;**](PayorRef.md) |  | [optional] 
**email** | **String** |  | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 
**country** | **String** |  | [optional] 
**display_name** | **String** |  | [optional] 
**payment_channel** | [**PaymentChannel**](PaymentChannel.md) |  | [optional] 
**challenge** | [**Challenge**](Challenge.md) |  | [optional] 
**language** | [**Language**](Language.md) |  | [optional] 
**accept_terms_and_conditions_timestamp** | **DateTime** | The timestamp when the payee last accepted T&amp;Cs | [optional] 
**cellphone_number** | **String** |  | [optional] 
**payee_type** | [**PayeeType**](PayeeType.md) |  | [optional] 
**company** | [**Company**](Company.md) |  | [optional] 
**individual** | [**Individual**](Individual.md) |  | [optional] 
**created** | **DateTime** |  | [optional] 
**grace_period_end_date** | **Date** |  | [optional] 
**last_ofac_check_timestamp** | **String** |  | [optional] 
**marketing_opt_ins** | [**Array&lt;MarketingOptIn&gt;**](MarketingOptIn.md) |  | [optional] 
**ofac_status** | [**OfacStatus**](OfacStatus.md) |  | [optional] 
**onboarded_status** | [**OnboardedStatus**](OnboardedStatus.md) |  | [optional] 
**social** | [**Social**](Social.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::Payee.new(payee_id: null,
                                 payor_refs: null,
                                 email: null,
                                 address: null,
                                 country: null,
                                 display_name: null,
                                 payment_channel: null,
                                 challenge: null,
                                 language: null,
                                 accept_terms_and_conditions_timestamp: null,
                                 cellphone_number: null,
                                 payee_type: null,
                                 company: null,
                                 individual: null,
                                 created: null,
                                 grace_period_end_date: null,
                                 last_ofac_check_timestamp: null,
                                 marketing_opt_ins: null,
                                 ofac_status: null,
                                 onboarded_status: null,
                                 social: null)
```


