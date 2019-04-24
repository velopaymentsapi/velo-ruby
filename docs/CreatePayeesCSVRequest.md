# VeloPayments::CreatePayeesCSVRequest

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
**address_country** | **String** |  | 
**individual_title** | **String** |  | [optional] 
**individual_first_name** | **String** |  | [optional] 
**individual_other_names** | **String** |  | [optional] 
**individual_last_name** | **String** |  | [optional] 
**individual_national_identification** | **String** |  | [optional] 
**individual_date_of_birth** | **Date** | example - 1970-05-20 | [optional] 
**company_name** | **String** |  | [optional] 
**company_tax_id** | **String** | Company Tax Id (EIN) must be 9 numeric characters. Must match the regular expression &#x60;&#x60;&#x60;[\\d]{9}&#x60;&#x60;&#x60;. | [optional] 
**payment_channel_iban** | **String** | Must match the regular expression &#x60;&#x60;&#x60;^[A-Za-z0-9]+$&#x60;&#x60;&#x60;. | [optional] 
**payment_channel_account_number** | **String** |  | [optional] 
**payment_channel_routing_no** | **String** |  | [optional] 
**payment_channel_country_code** | **String** | Must be a 3 character currency code. ISO 4217 | [optional] 
**payment_channel_currency** | **String** |  | [optional] 
**payment_channel_account_name** | **String** |  | [optional] 
**challenge_value** | **String** |  | [optional] 
**challenge_description** | **String** |  | [optional] 
**payee_language** | **String** |  | [optional] 

## Code Sample

```ruby
require 'VeloPayments'

instance = VeloPayments::CreatePayeesCSVRequest.new(type: null,
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
                                 individual_title: null,
                                 individual_first_name: null,
                                 individual_other_names: null,
                                 individual_last_name: null,
                                 individual_national_identification: null,
                                 individual_date_of_birth: null,
                                 company_name: null,
                                 company_tax_id: null,
                                 payment_channel_iban: null,
                                 payment_channel_account_number: null,
                                 payment_channel_routing_no: null,
                                 payment_channel_country_code: null,
                                 payment_channel_currency: null,
                                 payment_channel_account_name: null,
                                 challenge_value: null,
                                 challenge_description: null,
                                 payee_language: null)
```


