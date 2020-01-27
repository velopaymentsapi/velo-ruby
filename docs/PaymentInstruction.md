# VeloPayments::PaymentInstruction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_id** | **String** | Your identifier for payee | 
**currency** | **String** | Payee&#39;s currency | 
**amount** | **Integer** | &lt;p&gt;Amount to send to Payee&lt;/p&gt; &lt;p&gt;The maximum payment amount is dependent on the currency&lt;/p&gt;  | 
**payment_memo** | **String** |  | [optional] 
**source_account_name** | **String** |  | 
**payor_payment_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentInstruction.new(remote_id: remoteId1234,
                                 currency: USD,
                                 amount: 1299,
                                 payment_memo: my memo,
                                 source_account_name: MyAccountName,
                                 payor_payment_id: 123211321ABSD)
```


