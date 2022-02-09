# VeloPayments::CreatePayeesCSVRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**PayeeType2**](PayeeType2.md) |  |  |
| **remote_id** | **String** |  |  |
| **email** | **String** |  |  |
| **address_line1** | **String** |  |  |
| **address_line2** | **String** |  | [optional] |
| **address_line3** | **String** |  | [optional] |
| **address_line4** | **String** |  | [optional] |
| **address_city** | **String** |  |  |
| **address_county_or_province** | **String** |  | [optional] |
| **address_zip_or_postcode** | **String** |  |  |
| **address_country** | **String** | Must be a 2 character country code - per ISO 3166-1 |  |
| **individual_national_identification** | **String** |  | [optional] |
| **individual_date_of_birth** | **Date** | Must not be date in future. Example - 1970-05-20 | [optional] |
| **individual_title** | **String** |  | [optional] |
| **individual_first_name** | **String** |  | [optional] |
| **individual_other_names** | **String** |  | [optional] |
| **individual_last_name** | **String** |  | [optional] |
| **company_name** | **String** |  | [optional] |
| **company_ein** | **String** |  | [optional] |
| **company_operating_name** | **String** |  | [optional] |
| **payment_channel_account_number** | **String** | Either routing number and account number or only iban must be set | [optional] |
| **payment_channel_routing_number** | **String** | Either routing number and account number or only iban must be set | [optional] |
| **payment_channel_account_name** | **String** |  | [optional] |
| **payment_channel_iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] |
| **payment_channel_country_code** | **String** | Must be a 2 character country code - per ISO 3166-1 | [optional] |
| **payment_channel_currency** | **String** |  | [optional] |
| **challenge_description** | **String** |  | [optional] |
| **challenge_value** | **String** |  | [optional] |
| **payee_language** | **String** | An IETF BCP 47 language code which has been configured for use within this Velo environment.&lt;BR&gt; See the /v1/supportedLanguages endpoint to list the available codes for an environment.  | [optional] |

## Example

```ruby
require 'velopayments'

instance = VeloPayments::CreatePayeesCSVRequest.new(
  type: null,
  remote_id: remoteId123,
  email: bob@example.com,
  address_line1: 500 Duval St,
  address_line2: null,
  address_line3: null,
  address_line4: null,
  address_city: Key West,
  address_county_or_province: FL,
  address_zip_or_postcode: 33945,
  address_country: US,
  individual_national_identification: AB123456C,
  individual_date_of_birth: Tue Jan 01 00:00:00 UTC 1985,
  individual_title: Mr,
  individual_first_name: null,
  individual_other_names: Bob,
  individual_last_name: Smith,
  company_name: ABC Ltd,
  company_ein: 123456789,
  company_operating_name: ABC,
  payment_channel_account_number: XXXXXX5678,
  payment_channel_routing_number: XXXXX6789,
  payment_channel_account_name: My Account,
  payment_channel_iban: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1234,
  payment_channel_country_code: US,
  payment_channel_currency: null,
  challenge_description: challenge description,
  challenge_value: challenge value,
  payee_language: en-US
)
```

