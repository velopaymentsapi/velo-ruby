# VeloPayments::NotificationSource

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'velopayments'

VeloPayments::NotificationSource.openapi_one_of
# =>
# [
#   :'DebitStatusChanged',
#   :'OnboardingStatusChanged',
#   :'PayableStatusChanged',
#   :'PayeeDetailsChanged',
#   :'PaymentRejectedOrReturned',
#   :'PaymentStatusChanged',
#   :'PayorFundingDetected',
#   :'Ping'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'velopayments'

VeloPayments::NotificationSource.openapi_discriminator_name
# => :'source_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'velopayments'

VeloPayments::NotificationSource.openapi_discriminator_mapping
# =>
# {
#   :'debit_status_changed' => :'DebitStatusChanged',
#   :'onboarding_status_changed' => :'OnboardingStatusChanged',
#   :'payable_status_changed' => :'PayableStatusChanged',
#   :'payee_details_changed' => :'PayeeDetailsChanged',
#   :'payment_rejected_or_returned' => :'PaymentRejectedOrReturned',
#   :'payment_status_changed' => :'PaymentStatusChanged',
#   :'payor_funding_detected' => :'PayorFundingDetected',
#   :'ping' => :'Ping'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'velopayments'

VeloPayments::NotificationSource.build(data)
# => #<DebitStatusChanged:0x00007fdd4aab02a0>

VeloPayments::NotificationSource.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DebitStatusChanged`
- `OnboardingStatusChanged`
- `PayableStatusChanged`
- `PayeeDetailsChanged`
- `PaymentRejectedOrReturned`
- `PaymentStatusChanged`
- `PayorFundingDetected`
- `Ping`
- `nil` (if no type matches)

