# VeloPayments::PaymentChannelResponseV4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **payee_id** | **String** |  | [optional] |
| **payment_channel_name** | **String** |  |  |
| **account_name** | **String** |  |  |
| **channel_type** | **String** | Payment channel type. One of the following values: CHANNEL_BANK |  |
| **country_code** | **String** | Valid ISO 3166 2 character country code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-3166-country-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **routing_number** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] |
| **currency** | **String** | Valid ISO 4217 3 letter currency code. See the &lt;a href&#x3D;\&quot;https://www.iso.org/iso-4217-currency-codes.html\&quot; target&#x3D;\&quot;_blank\&quot; a&gt;ISO specification&lt;/a&gt; for details. |  |
| **payor_ids** | **Array&lt;String&gt;** |  | [optional] |
| **payee_name** | **String** |  | [optional] |
| **bank_name** | **String** |  | [optional] |
| **bank_swift_bic** | **String** |  | [optional] |
| **bank_address** | [**AddressV4**](AddressV4.md) |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **disabled_reason_code** | **String** |  | [optional] |
| **disabled_reason** | **String** |  | [optional] |
| **payable** | **Boolean** | Whether this payment channel is payable | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::PaymentChannelResponseV4.new(
  id: 70faaff7-2c32-4b44-b27f-f0b6c484e6f3,
  payee_id: 70faaff7-2c32-4b44-b27f-f0b6c484e6f3,
  payment_channel_name: My Payment Channel,
  account_name: My Account,
  channel_type: CHANNEL_BANK,
  country_code: US,
  routing_number: XXXXX6789,
  account_number: XXXXXX5678,
  iban: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1234,
  currency: USD,
  payor_ids: null,
  payee_name: John Stuart,
  bank_name: HSBC Bank plc,
  bank_swift_bic: MIDLGB22,
  bank_address: null,
  deleted: null,
  enabled: null,
  disabled_reason_code: disabled reason code,
  disabled_reason: disabled reason,
  payable: null
)
```

