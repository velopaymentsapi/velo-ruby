# Ruby client for Velo
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![npm version](https://badge.fury.io/rb/velopayments.svg)](https://badge.fury.io/rb/velopayments) [![CircleCI](https://circleci.com/gh/velopaymentsapi/velo-ruby.svg?style=svg)](https://circleci.com/gh/velopaymentsapi/velo-ruby)\
VeloPayments - the Ruby gem for the Velo Payments APIs

## Terms and Definitions

Throughout this document and the Velo platform the following terms are used:

* **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout.
* **Payee.** The recipient of funds paid out by a payor.
* **Payment.** A single transfer of funds from a payor to a payee.
* **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee.
* **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.

## Overview

The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:

* Authenticate with the Velo platform
* Maintain a collection of payees
* Query the payor’s current balance of funds within the platform and perform additional funding
* Issue payments to payees
* Query the platform for a history of those payments

This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.

## API Considerations

The Velo Payments API is REST based and uses the JSON format for requests and responses.

Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.

Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).

Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.

## Authenticating with the Velo Platform

Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.

You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:

create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529

base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==

create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==

perform the Velo authentication REST call using the HTTP header created above e.g. via curl:

```
  curl -X POST \\
  -H \"Content-Type: application/json\" \\
  -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\
  'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials'
```

If successful, this call will result in a **200** HTTP status code and a response body such as:

```
  {
    \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",
    \"token_type\":\"bearer\",
    \"expires_in\":1799,
    \"scope\":\"...\"
  }
```
## API access following authentication
Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.

This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:

```
  -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \"
```

If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.18.113
- Package version: 2.18.113
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build velopayments.gemspec
```

Then either install the gem locally:

```shell
gem install ./velopayments-2.18.113.gem
```

(for development, run `gem install --dev ./velopayments-2.18.113.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'velopayments', '~> 2.18.113'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'velopayments', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'velopayments'

# Setup authorization
VeloPayments.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = VeloPayments::CountriesApi.new

begin
  #List Supported Countries
  result = api_instance.list_supported_countries
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling CountriesApi->list_supported_countries: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sandbox.velopayments.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*VeloPayments::CountriesApi* | [**list_supported_countries**](docs/CountriesApi.md#list_supported_countries) | **GET** /v2/supportedCountries | List Supported Countries
*VeloPayments::CountriesApi* | [**list_supported_countries_v1**](docs/CountriesApi.md#list_supported_countries_v1) | **GET** /v1/supportedCountries | List Supported Countries
*VeloPayments::CountriesApi* | [**v1_payment_channel_rules_get**](docs/CountriesApi.md#v1_payment_channel_rules_get) | **GET** /v1/paymentChannelRules | List Payment Channel Country Rules
*VeloPayments::CurrenciesApi* | [**list_supported_currencies**](docs/CurrenciesApi.md#list_supported_currencies) | **GET** /v2/currencies | List Supported Currencies
*VeloPayments::DefaultApi* | [**create_funding_account**](docs/DefaultApi.md#create_funding_account) | **POST** /v1/fundingAccounts | Create Funding Account
*VeloPayments::FundingManagerApi* | [**create_ach_funding_request**](docs/FundingManagerApi.md#create_ach_funding_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/achFundingRequest | Create Funding Request
*VeloPayments::FundingManagerApi* | [**create_funding_request**](docs/FundingManagerApi.md#create_funding_request) | **POST** /v2/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request
*VeloPayments::FundingManagerApi* | [**get_funding_account**](docs/FundingManagerApi.md#get_funding_account) | **GET** /v1/fundingAccounts/{fundingAccountId} | Get Funding Account
*VeloPayments::FundingManagerApi* | [**get_funding_accounts**](docs/FundingManagerApi.md#get_funding_accounts) | **GET** /v1/fundingAccounts | Get Funding Accounts
*VeloPayments::FundingManagerApi* | [**get_fundings_v1**](docs/FundingManagerApi.md#get_fundings_v1) | **GET** /v1/paymentaudit/fundings | Get Fundings for Payor
*VeloPayments::FundingManagerApi* | [**get_source_account**](docs/FundingManagerApi.md#get_source_account) | **GET** /v1/sourceAccounts/{sourceAccountId} | Get details about given source account.
*VeloPayments::FundingManagerApi* | [**get_source_account_v2**](docs/FundingManagerApi.md#get_source_account_v2) | **GET** /v2/sourceAccounts/{sourceAccountId} | Get details about given source account.
*VeloPayments::FundingManagerApi* | [**get_source_accounts**](docs/FundingManagerApi.md#get_source_accounts) | **GET** /v1/sourceAccounts | Get list of source accounts
*VeloPayments::FundingManagerApi* | [**get_source_accounts_v2**](docs/FundingManagerApi.md#get_source_accounts_v2) | **GET** /v2/sourceAccounts | Get list of source accounts
*VeloPayments::FundingManagerApi* | [**list_funding_audit_deltas**](docs/FundingManagerApi.md#list_funding_audit_deltas) | **GET** /v1/deltas/fundings | Get Funding Audit Delta
*VeloPayments::FundingManagerApi* | [**set_notifications_request**](docs/FundingManagerApi.md#set_notifications_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/notifications | Set notifications
*VeloPayments::FundingManagerApi* | [**transfer_funds**](docs/FundingManagerApi.md#transfer_funds) | **POST** /v2/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts
*VeloPayments::GetPayoutApi* | [**get_payout_summary_v3**](docs/GetPayoutApi.md#get_payout_summary_v3) | **GET** /v3/payouts/{payoutId} | Get Payout Summary
*VeloPayments::InstructPayoutApi* | [**instruct_payout_v3**](docs/InstructPayoutApi.md#instruct_payout_v3) | **POST** /v3/payouts/{payoutId} | Instruct Payout
*VeloPayments::LoginApi* | [**logout**](docs/LoginApi.md#logout) | **POST** /v1/logout | Logout
*VeloPayments::LoginApi* | [**reset_password**](docs/LoginApi.md#reset_password) | **POST** /v1/password/reset | Reset password
*VeloPayments::LoginApi* | [**validate_access_token**](docs/LoginApi.md#validate_access_token) | **POST** /v1/validate | validate
*VeloPayments::LoginApi* | [**velo_auth**](docs/LoginApi.md#velo_auth) | **POST** /v1/authenticate | Authentication endpoint
*VeloPayments::PayeeInvitationApi* | [**get_payees_invitation_status**](docs/PayeeInvitationApi.md#get_payees_invitation_status) | **GET** /v1/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
*VeloPayments::PayeeInvitationApi* | [**get_payees_invitation_status_v2**](docs/PayeeInvitationApi.md#get_payees_invitation_status_v2) | **GET** /v2/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
*VeloPayments::PayeeInvitationApi* | [**resend_payee_invite**](docs/PayeeInvitationApi.md#resend_payee_invite) | **POST** /v1/payees/{payeeId}/invite | Resend Payee Invite
*VeloPayments::PayeeInvitationApi* | [**v2_create_payee**](docs/PayeeInvitationApi.md#v2_create_payee) | **POST** /v2/payees | Intiate Payee Creation V2
*VeloPayments::PayeeInvitationApi* | [**v2_query_batch_status**](docs/PayeeInvitationApi.md#v2_query_batch_status) | **GET** /v2/payees/batch/{batchId} | Query Batch Status
*VeloPayments::PayeeInvitationApi* | [**v3_create_payee**](docs/PayeeInvitationApi.md#v3_create_payee) | **POST** /v3/payees | Intiate Payee Creation V3
*VeloPayments::PayeeInvitationApi* | [**v3_query_batch_status**](docs/PayeeInvitationApi.md#v3_query_batch_status) | **GET** /v3/payees/batch/{batchId} | Query Batch Status
*VeloPayments::PayeesApi* | [**delete_payee_by_id**](docs/PayeesApi.md#delete_payee_by_id) | **DELETE** /v1/payees/{payeeId} | Delete Payee by Id
*VeloPayments::PayeesApi* | [**get_payee_by_id**](docs/PayeesApi.md#get_payee_by_id) | **GET** /v1/payees/{payeeId} | Get Payee by Id
*VeloPayments::PayeesApi* | [**list_payee_changes**](docs/PayeesApi.md#list_payee_changes) | **GET** /v1/deltas/payees | List Payee Changes
*VeloPayments::PayeesApi* | [**list_payees**](docs/PayeesApi.md#list_payees) | **GET** /v1/payees | List Payees
*VeloPayments::PayeesApi* | [**list_payees_v3**](docs/PayeesApi.md#list_payees_v3) | **GET** /v3/payees | List Payees
*VeloPayments::PayeesApi* | [**v1_payees_payee_id_remote_id_update_post**](docs/PayeesApi.md#v1_payees_payee_id_remote_id_update_post) | **POST** /v1/payees/{payeeId}/remoteIdUpdate | Update Payee Remote Id
*VeloPayments::PaymentAuditServiceApi* | [**export_transactions_csvv3**](docs/PaymentAuditServiceApi.md#export_transactions_csvv3) | **GET** /v3/paymentaudit/transactions | Export Transactions
*VeloPayments::PaymentAuditServiceApi* | [**export_transactions_csvv4**](docs/PaymentAuditServiceApi.md#export_transactions_csvv4) | **GET** /v4/paymentaudit/transactions | Export Transactions
*VeloPayments::PaymentAuditServiceApi* | [**get_fundings_v1**](docs/PaymentAuditServiceApi.md#get_fundings_v1) | **GET** /v1/paymentaudit/fundings | Get Fundings for Payor
*VeloPayments::PaymentAuditServiceApi* | [**get_payment_details**](docs/PaymentAuditServiceApi.md#get_payment_details) | **GET** /v3/paymentaudit/payments/{paymentId} | Get Payment
*VeloPayments::PaymentAuditServiceApi* | [**get_payment_details_v4**](docs/PaymentAuditServiceApi.md#get_payment_details_v4) | **GET** /v4/paymentaudit/payments/{paymentId} | Get Payment
*VeloPayments::PaymentAuditServiceApi* | [**get_payments_for_payout**](docs/PaymentAuditServiceApi.md#get_payments_for_payout) | **GET** /v3/paymentaudit/payouts/{payoutId} | Get Payments for Payout
*VeloPayments::PaymentAuditServiceApi* | [**get_payments_for_payout_v4**](docs/PaymentAuditServiceApi.md#get_payments_for_payout_v4) | **GET** /v4/paymentaudit/payouts/{payoutId} | Get Payments for Payout
*VeloPayments::PaymentAuditServiceApi* | [**get_payouts_for_payor_v3**](docs/PaymentAuditServiceApi.md#get_payouts_for_payor_v3) | **GET** /v3/paymentaudit/payouts | Get Payouts for Payor
*VeloPayments::PaymentAuditServiceApi* | [**get_payouts_for_payor_v4**](docs/PaymentAuditServiceApi.md#get_payouts_for_payor_v4) | **GET** /v4/paymentaudit/payouts | Get Payouts for Payor
*VeloPayments::PaymentAuditServiceApi* | [**list_payment_changes**](docs/PaymentAuditServiceApi.md#list_payment_changes) | **GET** /v1/deltas/payments | List Payment Changes
*VeloPayments::PaymentAuditServiceApi* | [**list_payments_audit**](docs/PaymentAuditServiceApi.md#list_payments_audit) | **GET** /v3/paymentaudit/payments | Get List of Payments
*VeloPayments::PaymentAuditServiceApi* | [**list_payments_audit_v4**](docs/PaymentAuditServiceApi.md#list_payments_audit_v4) | **GET** /v4/paymentaudit/payments | Get List of Payments
*VeloPayments::PayorsApi* | [**get_payor_by_id**](docs/PayorsApi.md#get_payor_by_id) | **GET** /v1/payors/{payorId} | Get Payor
*VeloPayments::PayorsApi* | [**get_payor_by_id_v2**](docs/PayorsApi.md#get_payor_by_id_v2) | **GET** /v2/payors/{payorId} | Get Payor
*VeloPayments::PayorsApi* | [**payor_add_payor_logo**](docs/PayorsApi.md#payor_add_payor_logo) | **POST** /v1/payors/{payorId}/branding/logos | Add Logo
*VeloPayments::PayorsApi* | [**payor_create_api_key_request**](docs/PayorsApi.md#payor_create_api_key_request) | **POST** /v1/payors/{payorId}/applications/{applicationId}/keys | Create API Key
*VeloPayments::PayorsApi* | [**payor_create_application_request**](docs/PayorsApi.md#payor_create_application_request) | **POST** /v1/payors/{payorId}/applications | Create Application
*VeloPayments::PayorsApi* | [**payor_email_opt_out**](docs/PayorsApi.md#payor_email_opt_out) | **POST** /v1/payors/{payorId}/reminderEmailsUpdate | Reminder Email Opt-Out
*VeloPayments::PayorsApi* | [**payor_get_branding**](docs/PayorsApi.md#payor_get_branding) | **GET** /v1/payors/{payorId}/branding | Get Branding
*VeloPayments::PayorsApi* | [**payor_links**](docs/PayorsApi.md#payor_links) | **GET** /v1/payorLinks | List Payor Links
*VeloPayments::PayorsPrivateApi* | [**create_payor_links**](docs/PayorsPrivateApi.md#create_payor_links) | **POST** /v1/payorLinks | Create a Payor Link
*VeloPayments::PayoutHistoryApi* | [**get_payments_for_payout**](docs/PayoutHistoryApi.md#get_payments_for_payout) | **GET** /v3/paymentaudit/payouts/{payoutId} | Get Payments for Payout
*VeloPayments::PayoutHistoryApi* | [**get_payments_for_payout_v4**](docs/PayoutHistoryApi.md#get_payments_for_payout_v4) | **GET** /v4/paymentaudit/payouts/{payoutId} | Get Payments for Payout
*VeloPayments::PayoutHistoryApi* | [**get_payout_stats_v1**](docs/PayoutHistoryApi.md#get_payout_stats_v1) | **GET** /v1/paymentaudit/payoutStatistics | Get Payout Statistics
*VeloPayments::QuotePayoutApi* | [**v3_payouts_payout_id_quote_post**](docs/QuotePayoutApi.md#v3_payouts_payout_id_quote_post) | **POST** /v3/payouts/{payoutId}/quote | Create a quote for the payout
*VeloPayments::SubmitPayoutApi* | [**submit_payout**](docs/SubmitPayoutApi.md#submit_payout) | **POST** /v3/payouts | Submit Payout
*VeloPayments::TokensApi* | [**generate_otp**](docs/TokensApi.md#generate_otp) | **POST** /v1/tokens/{tokenId}/otp | Generate an OTP
*VeloPayments::TokensApi* | [**generate_otp_for_sms**](docs/TokensApi.md#generate_otp_for_sms) | **POST** /v1/tokens/{tokenId}/otp/generate | Send an OTP to SMS Users
*VeloPayments::TokensApi* | [**get_qr_code_for_mfa**](docs/TokensApi.md#get_qr_code_for_mfa) | **GET** /v1/tokens/{tokenId}/mfa/qrcode | Get a QR Code image
*VeloPayments::TokensApi* | [**get_verification_token_by_id**](docs/TokensApi.md#get_verification_token_by_id) | **GET** /v1/tokens/{tokenId} | Get Token
*VeloPayments::TokensApi* | [**register_mfa**](docs/TokensApi.md#register_mfa) | **POST** /v1/tokens/{tokenId}/mfa/register | Register an MFA Device
*VeloPayments::TokensApi* | [**resend_token**](docs/TokensApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token
*VeloPayments::TokensApi* | [**submit_password**](docs/TokensApi.md#submit_password) | **POST** /v1/tokens/{tokenId}/password | Submit a password
*VeloPayments::TokensApi* | [**unlock_account_with_token**](docs/TokensApi.md#unlock_account_with_token) | **POST** /v1/tokens/{tokenId}/password/lockout | Unlock the user
*VeloPayments::TokensApi* | [**validate_mfa**](docs/TokensApi.md#validate_mfa) | **POST** /v1/tokens/{tokenId}/mfa/validate | Validate an MFA Device
*VeloPayments::TokensApi* | [**validate_otp**](docs/TokensApi.md#validate_otp) | **POST** /v1/tokens/{tokenId}/otp/validate | Validate an OTP
*VeloPayments::TokensApi* | [**validate_password**](docs/TokensApi.md#validate_password) | **POST** /v1/tokens/{tokenId}/password/validate | Validate the proposed password
*VeloPayments::UsersApi* | [**delete_user_by_id_v2**](docs/UsersApi.md#delete_user_by_id_v2) | **DELETE** /v2/users/{userId} | Delete a User
*VeloPayments::UsersApi* | [**disable_user_v2**](docs/UsersApi.md#disable_user_v2) | **POST** /v2/users/{userId}/disable | Disable a User
*VeloPayments::UsersApi* | [**email_update**](docs/UsersApi.md#email_update) | **POST** /v2/users/{userId}/emailUpdate | Update Email Address
*VeloPayments::UsersApi* | [**enable_user_v2**](docs/UsersApi.md#enable_user_v2) | **POST** /v2/users/{userId}/enable | Enable a User
*VeloPayments::UsersApi* | [**get_self**](docs/UsersApi.md#get_self) | **GET** /v2/users/self | Get Self
*VeloPayments::UsersApi* | [**get_user_by_id_v2**](docs/UsersApi.md#get_user_by_id_v2) | **GET** /v2/users/{userId} | Get User
*VeloPayments::UsersApi* | [**invite_user**](docs/UsersApi.md#invite_user) | **POST** /v2/users/invite | Invite a User
*VeloPayments::UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /v2/users | List Users
*VeloPayments::UsersApi* | [**register_sms**](docs/UsersApi.md#register_sms) | **POST** /v2/users/registration/sms | Register SMS Number
*VeloPayments::UsersApi* | [**resend_token**](docs/UsersApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token
*VeloPayments::UsersApi* | [**unlock_user_v2**](docs/UsersApi.md#unlock_user_v2) | **POST** /v2/users/{userId}/unlock | Unlock a User
*VeloPayments::UsersApi* | [**unregister_mfa**](docs/UsersApi.md#unregister_mfa) | **POST** /v2/users/{userId}/mfa/unregister | Unregister MFA for the user
*VeloPayments::UsersApi* | [**unregister_mfa_for_self**](docs/UsersApi.md#unregister_mfa_for_self) | **POST** /v2/users/self/mfa/unregister | Unregister MFA for Self
*VeloPayments::UsersApi* | [**update_password_self**](docs/UsersApi.md#update_password_self) | **POST** /v2/users/self/password | Update Password for self
*VeloPayments::UsersApi* | [**validate_password_self**](docs/UsersApi.md#validate_password_self) | **POST** /v2/users/self/password/validate | Validate the proposed password
*VeloPayments::WithdrawPayoutApi* | [**withdraw_payout_v3**](docs/WithdrawPayoutApi.md#withdraw_payout_v3) | **DELETE** /v3/payouts/{payoutId} | Withdraw Payout


## Documentation for Models

 - [VeloPayments::AcceptedPayment](docs/AcceptedPayment.md)
 - [VeloPayments::AccessTokenResponse](docs/AccessTokenResponse.md)
 - [VeloPayments::AccessTokenValidationRequest](docs/AccessTokenValidationRequest.md)
 - [VeloPayments::AuthResponse](docs/AuthResponse.md)
 - [VeloPayments::AutoTopUpConfig](docs/AutoTopUpConfig.md)
 - [VeloPayments::Challenge](docs/Challenge.md)
 - [VeloPayments::CheckTokenResponse](docs/CheckTokenResponse.md)
 - [VeloPayments::CompanyResponse](docs/CompanyResponse.md)
 - [VeloPayments::CompanyV1](docs/CompanyV1.md)
 - [VeloPayments::CreateFundingAccountRequest](docs/CreateFundingAccountRequest.md)
 - [VeloPayments::CreateIndividual](docs/CreateIndividual.md)
 - [VeloPayments::CreateIndividual2](docs/CreateIndividual2.md)
 - [VeloPayments::CreatePayee](docs/CreatePayee.md)
 - [VeloPayments::CreatePayee2](docs/CreatePayee2.md)
 - [VeloPayments::CreatePayeeAddress](docs/CreatePayeeAddress.md)
 - [VeloPayments::CreatePayeeAddress2](docs/CreatePayeeAddress2.md)
 - [VeloPayments::CreatePayeesCSVRequest](docs/CreatePayeesCSVRequest.md)
 - [VeloPayments::CreatePayeesCSVRequest2](docs/CreatePayeesCSVRequest2.md)
 - [VeloPayments::CreatePayeesCSVResponse](docs/CreatePayeesCSVResponse.md)
 - [VeloPayments::CreatePayeesCSVResponse2](docs/CreatePayeesCSVResponse2.md)
 - [VeloPayments::CreatePayeesRequest](docs/CreatePayeesRequest.md)
 - [VeloPayments::CreatePayeesRequest2](docs/CreatePayeesRequest2.md)
 - [VeloPayments::CreatePaymentChannel](docs/CreatePaymentChannel.md)
 - [VeloPayments::CreatePaymentChannel2](docs/CreatePaymentChannel2.md)
 - [VeloPayments::CreatePayorLinkRequest](docs/CreatePayorLinkRequest.md)
 - [VeloPayments::CreatePayoutRequest](docs/CreatePayoutRequest.md)
 - [VeloPayments::CurrencyType](docs/CurrencyType.md)
 - [VeloPayments::EmailUpdateRequest](docs/EmailUpdateRequest.md)
 - [VeloPayments::Error](docs/Error.md)
 - [VeloPayments::ErrorResponse](docs/ErrorResponse.md)
 - [VeloPayments::FailedSubmission](docs/FailedSubmission.md)
 - [VeloPayments::FundingAccountResponse](docs/FundingAccountResponse.md)
 - [VeloPayments::FundingAudit](docs/FundingAudit.md)
 - [VeloPayments::FundingEvent](docs/FundingEvent.md)
 - [VeloPayments::FundingEventType](docs/FundingEventType.md)
 - [VeloPayments::FundingPayorStatusAuditResponse](docs/FundingPayorStatusAuditResponse.md)
 - [VeloPayments::FundingRequestV1](docs/FundingRequestV1.md)
 - [VeloPayments::FundingRequestV2](docs/FundingRequestV2.md)
 - [VeloPayments::FxSummaryV3](docs/FxSummaryV3.md)
 - [VeloPayments::FxSummaryV4](docs/FxSummaryV4.md)
 - [VeloPayments::GenerateOTPRequest](docs/GenerateOTPRequest.md)
 - [VeloPayments::GetFundingsResponse](docs/GetFundingsResponse.md)
 - [VeloPayments::GetFundingsResponseAllOf](docs/GetFundingsResponseAllOf.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV3](docs/GetPaymentsForPayoutResponseV3.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV3Page](docs/GetPaymentsForPayoutResponseV3Page.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV3Summary](docs/GetPaymentsForPayoutResponseV3Summary.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV4](docs/GetPaymentsForPayoutResponseV4.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV4Summary](docs/GetPaymentsForPayoutResponseV4Summary.md)
 - [VeloPayments::GetPayoutStatistics](docs/GetPayoutStatistics.md)
 - [VeloPayments::GetPayoutsResponseV3](docs/GetPayoutsResponseV3.md)
 - [VeloPayments::GetPayoutsResponseV3Links](docs/GetPayoutsResponseV3Links.md)
 - [VeloPayments::GetPayoutsResponseV3Page](docs/GetPayoutsResponseV3Page.md)
 - [VeloPayments::GetPayoutsResponseV4](docs/GetPayoutsResponseV4.md)
 - [VeloPayments::IndividualResponse](docs/IndividualResponse.md)
 - [VeloPayments::IndividualV1](docs/IndividualV1.md)
 - [VeloPayments::IndividualV1Name](docs/IndividualV1Name.md)
 - [VeloPayments::InvitationStatus](docs/InvitationStatus.md)
 - [VeloPayments::InvitationStatusResponse](docs/InvitationStatusResponse.md)
 - [VeloPayments::InvitePayeeRequest](docs/InvitePayeeRequest.md)
 - [VeloPayments::InviteUserRequest](docs/InviteUserRequest.md)
 - [VeloPayments::KycState](docs/KycState.md)
 - [VeloPayments::Language](docs/Language.md)
 - [VeloPayments::LinkForResponse](docs/LinkForResponse.md)
 - [VeloPayments::ListFundingAccountsResponse](docs/ListFundingAccountsResponse.md)
 - [VeloPayments::ListPaymentsResponse](docs/ListPaymentsResponse.md)
 - [VeloPayments::ListPaymentsResponsePage](docs/ListPaymentsResponsePage.md)
 - [VeloPayments::ListPaymentsResponseV4](docs/ListPaymentsResponseV4.md)
 - [VeloPayments::ListSourceAccountResponse](docs/ListSourceAccountResponse.md)
 - [VeloPayments::ListSourceAccountResponseLinks](docs/ListSourceAccountResponseLinks.md)
 - [VeloPayments::ListSourceAccountResponsePage](docs/ListSourceAccountResponsePage.md)
 - [VeloPayments::ListSourceAccountResponseV2](docs/ListSourceAccountResponseV2.md)
 - [VeloPayments::MFADetails](docs/MFADetails.md)
 - [VeloPayments::MFAStatus](docs/MFAStatus.md)
 - [VeloPayments::MFAType](docs/MFAType.md)
 - [VeloPayments::MarketingOptIn](docs/MarketingOptIn.md)
 - [VeloPayments::Notifications](docs/Notifications.md)
 - [VeloPayments::OTPType](docs/OTPType.md)
 - [VeloPayments::OfacStatus](docs/OfacStatus.md)
 - [VeloPayments::OnboardedStatus](docs/OnboardedStatus.md)
 - [VeloPayments::PageForResponse](docs/PageForResponse.md)
 - [VeloPayments::PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse](docs/PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse.md)
 - [VeloPayments::PagedPayeeInvitationStatusResponse](docs/PagedPayeeInvitationStatusResponse.md)
 - [VeloPayments::PagedPayeeResponse](docs/PagedPayeeResponse.md)
 - [VeloPayments::PagedPayeeResponse2](docs/PagedPayeeResponse2.md)
 - [VeloPayments::PagedPayeeResponse2Summary](docs/PagedPayeeResponse2Summary.md)
 - [VeloPayments::PagedPayeeResponseLinks](docs/PagedPayeeResponseLinks.md)
 - [VeloPayments::PagedPayeeResponsePage](docs/PagedPayeeResponsePage.md)
 - [VeloPayments::PagedPayeeResponseSummary](docs/PagedPayeeResponseSummary.md)
 - [VeloPayments::PagedResponse](docs/PagedResponse.md)
 - [VeloPayments::PagedResponsePage](docs/PagedResponsePage.md)
 - [VeloPayments::PagedUserResponse](docs/PagedUserResponse.md)
 - [VeloPayments::PagedUserResponseLinks](docs/PagedUserResponseLinks.md)
 - [VeloPayments::PagedUserResponsePage](docs/PagedUserResponsePage.md)
 - [VeloPayments::PasswordRequest](docs/PasswordRequest.md)
 - [VeloPayments::Payee](docs/Payee.md)
 - [VeloPayments::PayeeAddress](docs/PayeeAddress.md)
 - [VeloPayments::PayeeDelta](docs/PayeeDelta.md)
 - [VeloPayments::PayeeDeltaResponse](docs/PayeeDeltaResponse.md)
 - [VeloPayments::PayeeDeltaResponseLinks](docs/PayeeDeltaResponseLinks.md)
 - [VeloPayments::PayeeDeltaResponsePage](docs/PayeeDeltaResponsePage.md)
 - [VeloPayments::PayeeInvitationStatus](docs/PayeeInvitationStatus.md)
 - [VeloPayments::PayeeInvitationStatusResponse](docs/PayeeInvitationStatusResponse.md)
 - [VeloPayments::PayeePaymentChannel](docs/PayeePaymentChannel.md)
 - [VeloPayments::PayeePayorRef](docs/PayeePayorRef.md)
 - [VeloPayments::PayeePayorRef2](docs/PayeePayorRef2.md)
 - [VeloPayments::PayeeResponse](docs/PayeeResponse.md)
 - [VeloPayments::PayeeResponse2](docs/PayeeResponse2.md)
 - [VeloPayments::PayeeType](docs/PayeeType.md)
 - [VeloPayments::PaymentAuditCurrencyV3](docs/PaymentAuditCurrencyV3.md)
 - [VeloPayments::PaymentAuditCurrencyV4](docs/PaymentAuditCurrencyV4.md)
 - [VeloPayments::PaymentChannelCountry](docs/PaymentChannelCountry.md)
 - [VeloPayments::PaymentChannelRule](docs/PaymentChannelRule.md)
 - [VeloPayments::PaymentChannelRulesResponse](docs/PaymentChannelRulesResponse.md)
 - [VeloPayments::PaymentDelta](docs/PaymentDelta.md)
 - [VeloPayments::PaymentDeltaResponse](docs/PaymentDeltaResponse.md)
 - [VeloPayments::PaymentEventResponseV3](docs/PaymentEventResponseV3.md)
 - [VeloPayments::PaymentEventResponseV4](docs/PaymentEventResponseV4.md)
 - [VeloPayments::PaymentInstruction](docs/PaymentInstruction.md)
 - [VeloPayments::PaymentRails](docs/PaymentRails.md)
 - [VeloPayments::PaymentResponseV3](docs/PaymentResponseV3.md)
 - [VeloPayments::PaymentResponseV4](docs/PaymentResponseV4.md)
 - [VeloPayments::PaymentResponseV4Payout](docs/PaymentResponseV4Payout.md)
 - [VeloPayments::PaymentStatus](docs/PaymentStatus.md)
 - [VeloPayments::PayorAddress](docs/PayorAddress.md)
 - [VeloPayments::PayorAddressV2](docs/PayorAddressV2.md)
 - [VeloPayments::PayorAmlTransactionV3](docs/PayorAmlTransactionV3.md)
 - [VeloPayments::PayorAmlTransactionV4](docs/PayorAmlTransactionV4.md)
 - [VeloPayments::PayorBrandingResponse](docs/PayorBrandingResponse.md)
 - [VeloPayments::PayorCreateApiKeyRequest](docs/PayorCreateApiKeyRequest.md)
 - [VeloPayments::PayorCreateApiKeyResponse](docs/PayorCreateApiKeyResponse.md)
 - [VeloPayments::PayorCreateApplicationRequest](docs/PayorCreateApplicationRequest.md)
 - [VeloPayments::PayorEmailOptOutRequest](docs/PayorEmailOptOutRequest.md)
 - [VeloPayments::PayorLinksResponse](docs/PayorLinksResponse.md)
 - [VeloPayments::PayorLinksResponseLinks](docs/PayorLinksResponseLinks.md)
 - [VeloPayments::PayorLinksResponsePayors](docs/PayorLinksResponsePayors.md)
 - [VeloPayments::PayorLogoRequest](docs/PayorLogoRequest.md)
 - [VeloPayments::PayorV1](docs/PayorV1.md)
 - [VeloPayments::PayorV2](docs/PayorV2.md)
 - [VeloPayments::PayoutPayorV4](docs/PayoutPayorV4.md)
 - [VeloPayments::PayoutPrincipalV4](docs/PayoutPrincipalV4.md)
 - [VeloPayments::PayoutStatusV3](docs/PayoutStatusV3.md)
 - [VeloPayments::PayoutStatusV4](docs/PayoutStatusV4.md)
 - [VeloPayments::PayoutSummaryAuditV3](docs/PayoutSummaryAuditV3.md)
 - [VeloPayments::PayoutSummaryAuditV4](docs/PayoutSummaryAuditV4.md)
 - [VeloPayments::PayoutSummaryResponse](docs/PayoutSummaryResponse.md)
 - [VeloPayments::PayoutTypeV4](docs/PayoutTypeV4.md)
 - [VeloPayments::QueryBatchResponse](docs/QueryBatchResponse.md)
 - [VeloPayments::QuoteFxSummary](docs/QuoteFxSummary.md)
 - [VeloPayments::QuoteResponse](docs/QuoteResponse.md)
 - [VeloPayments::Region](docs/Region.md)
 - [VeloPayments::RegisterMFARequest](docs/RegisterMFARequest.md)
 - [VeloPayments::RegisterMFAResponse](docs/RegisterMFAResponse.md)
 - [VeloPayments::RegisterSmsRequest](docs/RegisterSmsRequest.md)
 - [VeloPayments::RejectedPayment](docs/RejectedPayment.md)
 - [VeloPayments::ResendTokenRequest](docs/ResendTokenRequest.md)
 - [VeloPayments::ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [VeloPayments::Role](docs/Role.md)
 - [VeloPayments::SelfMFATypeUnregisterRequest](docs/SelfMFATypeUnregisterRequest.md)
 - [VeloPayments::SelfUpdatePasswordRequest](docs/SelfUpdatePasswordRequest.md)
 - [VeloPayments::SetNotificationsRequest](docs/SetNotificationsRequest.md)
 - [VeloPayments::SourceAccount](docs/SourceAccount.md)
 - [VeloPayments::SourceAccountResponse](docs/SourceAccountResponse.md)
 - [VeloPayments::SourceAccountResponseV2](docs/SourceAccountResponseV2.md)
 - [VeloPayments::SourceAccountSummaryV3](docs/SourceAccountSummaryV3.md)
 - [VeloPayments::SourceAccountSummaryV4](docs/SourceAccountSummaryV4.md)
 - [VeloPayments::SupportedCountriesResponse](docs/SupportedCountriesResponse.md)
 - [VeloPayments::SupportedCountriesResponse2](docs/SupportedCountriesResponse2.md)
 - [VeloPayments::SupportedCountry](docs/SupportedCountry.md)
 - [VeloPayments::SupportedCountryV2](docs/SupportedCountryV2.md)
 - [VeloPayments::SupportedCurrency](docs/SupportedCurrency.md)
 - [VeloPayments::SupportedCurrencyResponse](docs/SupportedCurrencyResponse.md)
 - [VeloPayments::TokenType](docs/TokenType.md)
 - [VeloPayments::TransferRequest](docs/TransferRequest.md)
 - [VeloPayments::UnregisterMFARequest](docs/UnregisterMFARequest.md)
 - [VeloPayments::UpdateRemoteIdRequest](docs/UpdateRemoteIdRequest.md)
 - [VeloPayments::UserInfo](docs/UserInfo.md)
 - [VeloPayments::UserResponse](docs/UserResponse.md)
 - [VeloPayments::UserResponse2](docs/UserResponse2.md)
 - [VeloPayments::UserResponse2Roles](docs/UserResponse2Roles.md)
 - [VeloPayments::UserStatus](docs/UserStatus.md)
 - [VeloPayments::UserType](docs/UserType.md)
 - [VeloPayments::UserType2](docs/UserType2.md)
 - [VeloPayments::ValidateMFARequest](docs/ValidateMFARequest.md)
 - [VeloPayments::ValidateOTPRequest](docs/ValidateOTPRequest.md)
 - [VeloPayments::ValidatePasswordResponse](docs/ValidatePasswordResponse.md)
 - [VeloPayments::WatchlistStatus](docs/WatchlistStatus.md)


## Documentation for Authorization


### OAuth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  -  : Scopes not required

### basicAuth

- **Type**: HTTP basic authentication

### oAuthVeloBackOffice


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  -  : Scopes not required

