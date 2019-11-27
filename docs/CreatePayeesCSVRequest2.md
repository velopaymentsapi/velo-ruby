# VeloPayments::CreatePayeesCSVRequest2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PayeeType**](PayeeType.md) |  | 
**remote_id** | **String** |  | 
**email** | **String** |  | 
**address_line1** | **String** |  | 
**address_line2** | **String** |  | [optional] 
**address_line3** | **String** |  | [optional] 
**address_line4** | **String** |  | [optional] 
**address_city** | **String** |  | 
**address_county_or_province** | **String** |  | [optional] 
**address_zip_or_postcode** | **String** |  | 
**address_country** | **String** | Must be a 2 character country code - per ISO 3166-1 | 
**individual_national_identification** | **String** |  | [optional] 
**individual_date_of_birth** | **Date** | Must not be date in future. Example - 1970-05-20 | [optional] 
**individual_title** | **String** |  | [optional] 
**individual_first_name** | **String** |  | [optional] 
**individual_other_names** | **String** |  | [optional] 
**individual_last_name** | **String** |  | [optional] 
**company_name** | **String** |  | [optional] 
**company_ein** | **String** | Company Tax Id (EIN) must be 9 numeric characters. Must match the regular expression &#x60;&#x60;&#x60;[\\d]{9}&#x60;&#x60;&#x60;. | [optional] 
**company_operating_name** | **String** |  | [optional] 
**payment_channel_account_number** | **String** | Either routing number and account number or only iban must be set | [optional] 
**payment_channel_routing_number** | **String** | Either routing number and account number or only iban must be set | [optional] 
**payment_channel_account_name** | **String** |  | [optional] 
**payment_channel_iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] 
**payment_channel_country_code** | **String** | Must be a 2 character country code - per ISO 3166-1 | [optional] 
**payment_channel_currency** | **String** |  | [optional] 
**challenge_description** | **String** |  | [optional] 
**challenge_value** | **String** |  | [optional] 
**payee_language** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayeesCSVRequest2.new(type: null,
                                 remote_id: null,
                                 email: null,
                                 address_line1: null,
                                 address_line2: null,
                                 address_line3: null,
                                 address_line4: null,
                                 address_city: null,
                                 address_county_or_province: null,
                                 address_zip_or_postcode: null,
                                 address_country: null,
                                 individual_national_identification: null,
                                 individual_date_of_birth: null,
                                 individual_title: null,
                                 individual_first_name: null,
                                 individual_other_names: null,
                                 individual_last_name: null,
                                 company_name: null,
                                 company_ein: null,
                                 company_operating_name: null,
                                 payment_channel_account_number: null,
                                 payment_channel_routing_number: null,
                                 payment_channel_account_name: null,
                                 payment_channel_iban: null,
                                 payment_channel_country_code: null,
                                 payment_channel_currency: null,
                                 challenge_description: null,
                                 challenge_value: null,
                                 payee_language: null)
```


