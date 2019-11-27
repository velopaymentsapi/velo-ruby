# VeloPayments::CreatePayee2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee_id** | **String** |  | [optional] [readonly] 
**payor_refs** | [**Array&lt;PayeePayorRef2&gt;**](PayeePayorRef2.md) |  | [optional] [readonly] 
**email** | **String** |  | 
**remote_id** | **String** |  | 
**type** | [**PayeeType**](PayeeType.md) |  | 
**address** | [**CreatePayeeAddress2**](CreatePayeeAddress2.md) |  | 
**payment_channel** | [**CreatePaymentChannel2**](CreatePaymentChannel2.md) |  | [optional] 
**challenge** | [**Challenge**](Challenge.md) |  | [optional] 
**language** | [**Language**](Language.md) |  | [optional] 
**company** | [**CompanyV1**](CompanyV1.md) |  | [optional] 
**individual** | [**CreateIndividual2**](CreateIndividual2.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayee2.new(payee_id: null,
                                 payor_refs: null,
                                 email: null,
                                 remote_id: null,
                                 type: null,
                                 address: null,
                                 payment_channel: null,
                                 challenge: null,
                                 language: null,
                                 company: null,
                                 individual: null)
```


