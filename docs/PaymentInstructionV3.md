# VeloPayments::PaymentInstructionV3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_id** | **String** | Your identifier for payee | 
**currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. | 
**amount** | **Integer** | &lt;p&gt;Amount to send to Payee&lt;/p&gt; &lt;p&gt;The maximum payment amount is dependent on the currency&lt;/p&gt;  | 
**payment_memo** | **String** |  | [optional] 
**source_account_name** | **String** |  | 
**payor_payment_id** | **String** |  | [optional] 
**transmission_type** | [**TransmissionType**](TransmissionType.md) |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::PaymentInstructionV3.new(remote_id: remoteId1234,
                                 currency: USD,
                                 amount: 1299,
                                 payment_memo: my memo,
                                 source_account_name: MyAccountName,
                                 payor_payment_id: 123211321ABSD,
                                 transmission_type: null)
```


