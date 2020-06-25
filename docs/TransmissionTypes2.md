# VeloPayments::TransmissionTypes2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ach** | **Boolean** | Whether the Payor is allowed to pay via ACH | 
**same_day_ach** | **Boolean** | Whether the Payor is allowed to pay via same day ACH | 
**wire** | **Boolean** | Whether the Payor is allowed to pay via wire | 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::TransmissionTypes2.new(ach: true,
                                 same_day_ach: true,
                                 wire: true)
```


