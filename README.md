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

- API version: 2.30.53
- Package version: 2.30.53.beta1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build velopayments.gemspec
```

Then either install the gem locally:

```shell
gem install ./velopayments-2.30.53.beta1.gem
```

(for development, run `gem install --dev ./velopayments-2.30.53.beta1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'velopayments', '~> 2.30.53.beta1'

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
  #List Payment Channel Country Rules
  result = api_instance.list_payment_channel_rules_v1
  p result
rescue VeloPayments::ApiError => e
  puts "Exception when calling CountriesApi->list_payment_channel_rules_v1: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sandbox.velopayments.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*VeloPayments::CountriesApi* | [**list_payment_channel_rules_v1**](docs/CountriesApi.md#list_payment_channel_rules_v1) | **GET** /v1/paymentChannelRules | List Payment Channel Country Rules
*VeloPayments::CountriesApi* | [**list_supported_countries_v1**](docs/CountriesApi.md#list_supported_countries_v1) | **GET** /v1/supportedCountries | List Supported Countries
*VeloPayments::CountriesApi* | [**list_supported_countries_v2**](docs/CountriesApi.md#list_supported_countries_v2) | **GET** /v2/supportedCountries | List Supported Countries
*VeloPayments::CurrenciesApi* | [**list_supported_currencies_v2**](docs/CurrenciesApi.md#list_supported_currencies_v2) | **GET** /v2/currencies | List Supported Currencies
*VeloPayments::FundingManagerApi* | [**create_ach_funding_request**](docs/FundingManagerApi.md#create_ach_funding_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/achFundingRequest | Create Funding Request
*VeloPayments::FundingManagerApi* | [**create_funding_request**](docs/FundingManagerApi.md#create_funding_request) | **POST** /v2/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request
*VeloPayments::FundingManagerApi* | [**create_funding_request_v3**](docs/FundingManagerApi.md#create_funding_request_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/fundingRequest | Create Funding Request
*VeloPayments::FundingManagerApi* | [**get_funding_account**](docs/FundingManagerApi.md#get_funding_account) | **GET** /v1/fundingAccounts/{fundingAccountId} | Get Funding Account
*VeloPayments::FundingManagerApi* | [**get_funding_account_v2**](docs/FundingManagerApi.md#get_funding_account_v2) | **GET** /v2/fundingAccounts/{fundingAccountId} | Get Funding Account
*VeloPayments::FundingManagerApi* | [**get_funding_accounts**](docs/FundingManagerApi.md#get_funding_accounts) | **GET** /v1/fundingAccounts | Get Funding Accounts
*VeloPayments::FundingManagerApi* | [**get_funding_accounts_v2**](docs/FundingManagerApi.md#get_funding_accounts_v2) | **GET** /v2/fundingAccounts | Get Funding Accounts
*VeloPayments::FundingManagerApi* | [**get_source_account**](docs/FundingManagerApi.md#get_source_account) | **GET** /v1/sourceAccounts/{sourceAccountId} | Get details about given source account.
*VeloPayments::FundingManagerApi* | [**get_source_account_v2**](docs/FundingManagerApi.md#get_source_account_v2) | **GET** /v2/sourceAccounts/{sourceAccountId} | Get details about given source account.
*VeloPayments::FundingManagerApi* | [**get_source_account_v3**](docs/FundingManagerApi.md#get_source_account_v3) | **GET** /v3/sourceAccounts/{sourceAccountId} | Get details about given source account.
*VeloPayments::FundingManagerApi* | [**get_source_accounts**](docs/FundingManagerApi.md#get_source_accounts) | **GET** /v1/sourceAccounts | Get list of source accounts
*VeloPayments::FundingManagerApi* | [**get_source_accounts_v2**](docs/FundingManagerApi.md#get_source_accounts_v2) | **GET** /v2/sourceAccounts | Get list of source accounts
*VeloPayments::FundingManagerApi* | [**get_source_accounts_v3**](docs/FundingManagerApi.md#get_source_accounts_v3) | **GET** /v3/sourceAccounts | Get list of source accounts
*VeloPayments::FundingManagerApi* | [**list_funding_audit_deltas**](docs/FundingManagerApi.md#list_funding_audit_deltas) | **GET** /v1/deltas/fundings | Get Funding Audit Delta
*VeloPayments::FundingManagerApi* | [**set_notifications_request**](docs/FundingManagerApi.md#set_notifications_request) | **POST** /v1/sourceAccounts/{sourceAccountId}/notifications | Set notifications
*VeloPayments::FundingManagerApi* | [**transfer_funds**](docs/FundingManagerApi.md#transfer_funds) | **POST** /v2/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts
*VeloPayments::FundingManagerApi* | [**transfer_funds_v3**](docs/FundingManagerApi.md#transfer_funds_v3) | **POST** /v3/sourceAccounts/{sourceAccountId}/transfers | Transfer Funds between source accounts
*VeloPayments::FundingManagerPrivateApi* | [**create_funding_account_v2**](docs/FundingManagerPrivateApi.md#create_funding_account_v2) | **POST** /v2/fundingAccounts | Create Funding Account
*VeloPayments::FundingManagerPrivateApi* | [**delete_source_account_v3**](docs/FundingManagerPrivateApi.md#delete_source_account_v3) | **DELETE** /v3/sourceAccounts/{sourceAccountId} | Delete a source account by ID
*VeloPayments::LoginApi* | [**logout**](docs/LoginApi.md#logout) | **POST** /v1/logout | Logout
*VeloPayments::LoginApi* | [**reset_password**](docs/LoginApi.md#reset_password) | **POST** /v1/password/reset | Reset password
*VeloPayments::LoginApi* | [**validate_access_token**](docs/LoginApi.md#validate_access_token) | **POST** /v1/validate | validate
*VeloPayments::LoginApi* | [**velo_auth**](docs/LoginApi.md#velo_auth) | **POST** /v1/authenticate | Authentication endpoint
*VeloPayments::PayeeInvitationApi* | [**create_payee_v3**](docs/PayeeInvitationApi.md#create_payee_v3) | **POST** /v3/payees | Initiate Payee Creation
*VeloPayments::PayeeInvitationApi* | [**get_payees_invitation_status_v3**](docs/PayeeInvitationApi.md#get_payees_invitation_status_v3) | **GET** /v3/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
*VeloPayments::PayeeInvitationApi* | [**get_payees_invitation_status_v4**](docs/PayeeInvitationApi.md#get_payees_invitation_status_v4) | **GET** /v4/payees/payors/{payorId}/invitationStatus | Get Payee Invitation Status
*VeloPayments::PayeeInvitationApi* | [**query_batch_status_v3**](docs/PayeeInvitationApi.md#query_batch_status_v3) | **GET** /v3/payees/batch/{batchId} | Query Batch Status
*VeloPayments::PayeeInvitationApi* | [**query_batch_status_v4**](docs/PayeeInvitationApi.md#query_batch_status_v4) | **GET** /v4/payees/batch/{batchId} | Query Batch Status
*VeloPayments::PayeeInvitationApi* | [**resend_payee_invite_v3**](docs/PayeeInvitationApi.md#resend_payee_invite_v3) | **POST** /v3/payees/{payeeId}/invite | Resend Payee Invite
*VeloPayments::PayeeInvitationApi* | [**resend_payee_invite_v4**](docs/PayeeInvitationApi.md#resend_payee_invite_v4) | **POST** /v4/payees/{payeeId}/invite | Resend Payee Invite
*VeloPayments::PayeeInvitationApi* | [**v4_create_payee**](docs/PayeeInvitationApi.md#v4_create_payee) | **POST** /v4/payees | Initiate Payee Creation
*VeloPayments::PayeesApi* | [**delete_payee_by_id_v3**](docs/PayeesApi.md#delete_payee_by_id_v3) | **DELETE** /v3/payees/{payeeId} | Delete Payee by Id
*VeloPayments::PayeesApi* | [**delete_payee_by_id_v4**](docs/PayeesApi.md#delete_payee_by_id_v4) | **DELETE** /v4/payees/{payeeId} | Delete Payee by Id
*VeloPayments::PayeesApi* | [**get_payee_by_id_v3**](docs/PayeesApi.md#get_payee_by_id_v3) | **GET** /v3/payees/{payeeId} | Get Payee by Id
*VeloPayments::PayeesApi* | [**get_payee_by_id_v4**](docs/PayeesApi.md#get_payee_by_id_v4) | **GET** /v4/payees/{payeeId} | Get Payee by Id
*VeloPayments::PayeesApi* | [**list_payee_changes_v3**](docs/PayeesApi.md#list_payee_changes_v3) | **GET** /v3/payees/deltas | List Payee Changes
*VeloPayments::PayeesApi* | [**list_payee_changes_v4**](docs/PayeesApi.md#list_payee_changes_v4) | **GET** /v4/payees/deltas | List Payee Changes
*VeloPayments::PayeesApi* | [**list_payees_v3**](docs/PayeesApi.md#list_payees_v3) | **GET** /v3/payees | List Payees
*VeloPayments::PayeesApi* | [**list_payees_v4**](docs/PayeesApi.md#list_payees_v4) | **GET** /v4/payees | List Payees
*VeloPayments::PayeesApi* | [**payee_details_update_v3**](docs/PayeesApi.md#payee_details_update_v3) | **POST** /v3/payees/{payeeId}/payeeDetailsUpdate | Update Payee Details
*VeloPayments::PayeesApi* | [**payee_details_update_v4**](docs/PayeesApi.md#payee_details_update_v4) | **POST** /v4/payees/{payeeId}/payeeDetailsUpdate | Update Payee Details
*VeloPayments::PayeesApi* | [**v3_payees_payee_id_remote_id_update_post**](docs/PayeesApi.md#v3_payees_payee_id_remote_id_update_post) | **POST** /v3/payees/{payeeId}/remoteIdUpdate | Update Payee Remote Id
*VeloPayments::PayeesApi* | [**v4_payees_payee_id_remote_id_update_post**](docs/PayeesApi.md#v4_payees_payee_id_remote_id_update_post) | **POST** /v4/payees/{payeeId}/remoteIdUpdate | Update Payee Remote Id
*VeloPayments::PaymentAuditServiceApi* | [**export_transactions_csvv4**](docs/PaymentAuditServiceApi.md#export_transactions_csvv4) | **GET** /v4/paymentaudit/transactions | Export Transactions
*VeloPayments::PaymentAuditServiceApi* | [**get_fundings_v4**](docs/PaymentAuditServiceApi.md#get_fundings_v4) | **GET** /v4/paymentaudit/fundings | Get Fundings for Payor
*VeloPayments::PaymentAuditServiceApi* | [**get_payment_details_v4**](docs/PaymentAuditServiceApi.md#get_payment_details_v4) | **GET** /v4/paymentaudit/payments/{paymentId} | Get Payment
*VeloPayments::PaymentAuditServiceApi* | [**get_payments_for_payout_v4**](docs/PaymentAuditServiceApi.md#get_payments_for_payout_v4) | **GET** /v4/paymentaudit/payouts/{payoutId} | Get Payments for Payout
*VeloPayments::PaymentAuditServiceApi* | [**get_payout_stats_v4**](docs/PaymentAuditServiceApi.md#get_payout_stats_v4) | **GET** /v4/paymentaudit/payoutStatistics | Get Payout Statistics
*VeloPayments::PaymentAuditServiceApi* | [**get_payouts_for_payor_v4**](docs/PaymentAuditServiceApi.md#get_payouts_for_payor_v4) | **GET** /v4/paymentaudit/payouts | Get Payouts for Payor
*VeloPayments::PaymentAuditServiceApi* | [**list_payment_changes_v4**](docs/PaymentAuditServiceApi.md#list_payment_changes_v4) | **GET** /v4/payments/deltas | List Payment Changes
*VeloPayments::PaymentAuditServiceApi* | [**list_payments_audit_v4**](docs/PaymentAuditServiceApi.md#list_payments_audit_v4) | **GET** /v4/paymentaudit/payments | Get List of Payments
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**export_transactions_csvv3**](docs/PaymentAuditServiceDeprecatedApi.md#export_transactions_csvv3) | **GET** /v3/paymentaudit/transactions | V3 Export Transactions
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**get_fundings_v1**](docs/PaymentAuditServiceDeprecatedApi.md#get_fundings_v1) | **GET** /v1/paymentaudit/fundings | V1 Get Fundings for Payor
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**get_payment_details_v3**](docs/PaymentAuditServiceDeprecatedApi.md#get_payment_details_v3) | **GET** /v3/paymentaudit/payments/{paymentId} | V3 Get Payment
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**get_payments_for_payout_pav3**](docs/PaymentAuditServiceDeprecatedApi.md#get_payments_for_payout_pav3) | **GET** /v3/paymentaudit/payouts/{payoutId} | V3 Get Payments for Payout
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**get_payout_stats_v1**](docs/PaymentAuditServiceDeprecatedApi.md#get_payout_stats_v1) | **GET** /v1/paymentaudit/payoutStatistics | V1 Get Payout Statistics
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**get_payouts_for_payor_v3**](docs/PaymentAuditServiceDeprecatedApi.md#get_payouts_for_payor_v3) | **GET** /v3/paymentaudit/payouts | V3 Get Payouts for Payor
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**list_payment_changes**](docs/PaymentAuditServiceDeprecatedApi.md#list_payment_changes) | **GET** /v1/deltas/payments | V1 List Payment Changes
*VeloPayments::PaymentAuditServiceDeprecatedApi* | [**list_payments_audit_v3**](docs/PaymentAuditServiceDeprecatedApi.md#list_payments_audit_v3) | **GET** /v3/paymentaudit/payments | V3 Get List of Payments
*VeloPayments::PayorsApi* | [**get_payor_by_id**](docs/PayorsApi.md#get_payor_by_id) | **GET** /v1/payors/{payorId} | Get Payor
*VeloPayments::PayorsApi* | [**get_payor_by_id_v2**](docs/PayorsApi.md#get_payor_by_id_v2) | **GET** /v2/payors/{payorId} | Get Payor
*VeloPayments::PayorsApi* | [**payor_add_payor_logo**](docs/PayorsApi.md#payor_add_payor_logo) | **POST** /v1/payors/{payorId}/branding/logos | Add Logo
*VeloPayments::PayorsApi* | [**payor_create_api_key_request**](docs/PayorsApi.md#payor_create_api_key_request) | **POST** /v1/payors/{payorId}/applications/{applicationId}/keys | Create API Key
*VeloPayments::PayorsApi* | [**payor_create_application_request**](docs/PayorsApi.md#payor_create_application_request) | **POST** /v1/payors/{payorId}/applications | Create Application
*VeloPayments::PayorsApi* | [**payor_email_opt_out**](docs/PayorsApi.md#payor_email_opt_out) | **POST** /v1/payors/{payorId}/reminderEmailsUpdate | Reminder Email Opt-Out
*VeloPayments::PayorsApi* | [**payor_get_branding**](docs/PayorsApi.md#payor_get_branding) | **GET** /v1/payors/{payorId}/branding | Get Branding
*VeloPayments::PayorsApi* | [**payor_links**](docs/PayorsApi.md#payor_links) | **GET** /v1/payorLinks | List Payor Links
*VeloPayments::PayorsPrivateApi* | [**create_payor_links**](docs/PayorsPrivateApi.md#create_payor_links) | **POST** /v1/payorLinks | Create a Payor Link
*VeloPayments::PayoutServiceApi* | [**create_quote_for_payout_v3**](docs/PayoutServiceApi.md#create_quote_for_payout_v3) | **POST** /v3/payouts/{payoutId}/quote | Create a quote for the payout
*VeloPayments::PayoutServiceApi* | [**deschedule_payout**](docs/PayoutServiceApi.md#deschedule_payout) | **DELETE** /v3/payouts/{payoutId}/schedule | Deschedule a payout
*VeloPayments::PayoutServiceApi* | [**get_payments_for_payout_v3**](docs/PayoutServiceApi.md#get_payments_for_payout_v3) | **GET** /v3/payouts/{payoutId}/payments | Retrieve payments for a payout
*VeloPayments::PayoutServiceApi* | [**get_payout_summary_v3**](docs/PayoutServiceApi.md#get_payout_summary_v3) | **GET** /v3/payouts/{payoutId} | Get Payout Summary
*VeloPayments::PayoutServiceApi* | [**instruct_payout_v3**](docs/PayoutServiceApi.md#instruct_payout_v3) | **POST** /v3/payouts/{payoutId} | Instruct Payout
*VeloPayments::PayoutServiceApi* | [**schedule_for_payout**](docs/PayoutServiceApi.md#schedule_for_payout) | **POST** /v3/payouts/{payoutId}/schedule | Schedule a payout
*VeloPayments::PayoutServiceApi* | [**submit_payout_v3**](docs/PayoutServiceApi.md#submit_payout_v3) | **POST** /v3/payouts | Submit Payout
*VeloPayments::PayoutServiceApi* | [**withdraw_payment**](docs/PayoutServiceApi.md#withdraw_payment) | **POST** /v1/payments/{paymentId}/withdraw | Withdraw a Payment
*VeloPayments::PayoutServiceApi* | [**withdraw_payout_v3**](docs/PayoutServiceApi.md#withdraw_payout_v3) | **DELETE** /v3/payouts/{payoutId} | Withdraw Payout
*VeloPayments::TokensApi* | [**resend_token**](docs/TokensApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token
*VeloPayments::UsersApi* | [**delete_user_by_id_v2**](docs/UsersApi.md#delete_user_by_id_v2) | **DELETE** /v2/users/{userId} | Delete a User
*VeloPayments::UsersApi* | [**disable_user_v2**](docs/UsersApi.md#disable_user_v2) | **POST** /v2/users/{userId}/disable | Disable a User
*VeloPayments::UsersApi* | [**enable_user_v2**](docs/UsersApi.md#enable_user_v2) | **POST** /v2/users/{userId}/enable | Enable a User
*VeloPayments::UsersApi* | [**get_self**](docs/UsersApi.md#get_self) | **GET** /v2/users/self | Get Self
*VeloPayments::UsersApi* | [**get_user_by_id_v2**](docs/UsersApi.md#get_user_by_id_v2) | **GET** /v2/users/{userId} | Get User
*VeloPayments::UsersApi* | [**invite_user**](docs/UsersApi.md#invite_user) | **POST** /v2/users/invite | Invite a User
*VeloPayments::UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /v2/users | List Users
*VeloPayments::UsersApi* | [**register_sms**](docs/UsersApi.md#register_sms) | **POST** /v2/users/registration/sms | Register SMS Number
*VeloPayments::UsersApi* | [**resend_token**](docs/UsersApi.md#resend_token) | **POST** /v2/users/{userId}/tokens | Resend a token
*VeloPayments::UsersApi* | [**role_update**](docs/UsersApi.md#role_update) | **POST** /v2/users/{userId}/roleUpdate | Update User Role
*VeloPayments::UsersApi* | [**unlock_user_v2**](docs/UsersApi.md#unlock_user_v2) | **POST** /v2/users/{userId}/unlock | Unlock a User
*VeloPayments::UsersApi* | [**unregister_mfa**](docs/UsersApi.md#unregister_mfa) | **POST** /v2/users/{userId}/mfa/unregister | Unregister MFA for the user
*VeloPayments::UsersApi* | [**unregister_mfa_for_self**](docs/UsersApi.md#unregister_mfa_for_self) | **POST** /v2/users/self/mfa/unregister | Unregister MFA for Self
*VeloPayments::UsersApi* | [**update_password_self**](docs/UsersApi.md#update_password_self) | **POST** /v2/users/self/password | Update Password for self
*VeloPayments::UsersApi* | [**user_details_update**](docs/UsersApi.md#user_details_update) | **POST** /v2/users/{userId}/userDetailsUpdate | Update User Details
*VeloPayments::UsersApi* | [**user_details_update_for_self**](docs/UsersApi.md#user_details_update_for_self) | **POST** /v2/users/self/userDetailsUpdate | Update User Details for self
*VeloPayments::UsersApi* | [**validate_password_self**](docs/UsersApi.md#validate_password_self) | **POST** /v2/users/self/password/validate | Validate the proposed password
*VeloPayments::WebhooksApi* | [**create_webhook_v1**](docs/WebhooksApi.md#create_webhook_v1) | **POST** /v1/webhooks | Create Webhook
*VeloPayments::WebhooksApi* | [**get_webhook_v1**](docs/WebhooksApi.md#get_webhook_v1) | **GET** /v1/webhooks/{webhookId} | Get details about the given webhook.
*VeloPayments::WebhooksApi* | [**list_webhooks_v1**](docs/WebhooksApi.md#list_webhooks_v1) | **GET** /v1/webhooks | List the details about the webhooks for the given payor.
*VeloPayments::WebhooksApi* | [**ping_webhook_v1**](docs/WebhooksApi.md#ping_webhook_v1) | **POST** /v1/webhooks/{webhookId}/ping | 
*VeloPayments::WebhooksApi* | [**update_webhook_v1**](docs/WebhooksApi.md#update_webhook_v1) | **POST** /v1/webhooks/{webhookId} | Update Webhook


## Documentation for Models

 - [VeloPayments::AcceptedPaymentV3](docs/AcceptedPaymentV3.md)
 - [VeloPayments::AccessTokenResponse](docs/AccessTokenResponse.md)
 - [VeloPayments::AccessTokenValidationRequest](docs/AccessTokenValidationRequest.md)
 - [VeloPayments::AuthResponse](docs/AuthResponse.md)
 - [VeloPayments::AutoTopUpConfig](docs/AutoTopUpConfig.md)
 - [VeloPayments::AutoTopUpConfig2](docs/AutoTopUpConfig2.md)
 - [VeloPayments::Category](docs/Category.md)
 - [VeloPayments::ChallengeV3](docs/ChallengeV3.md)
 - [VeloPayments::ChallengeV4](docs/ChallengeV4.md)
 - [VeloPayments::CompanyV3](docs/CompanyV3.md)
 - [VeloPayments::CompanyV4](docs/CompanyV4.md)
 - [VeloPayments::CreateFundingAccountRequestV2](docs/CreateFundingAccountRequestV2.md)
 - [VeloPayments::CreateIndividualV3](docs/CreateIndividualV3.md)
 - [VeloPayments::CreateIndividualV3Name](docs/CreateIndividualV3Name.md)
 - [VeloPayments::CreateIndividualV4](docs/CreateIndividualV4.md)
 - [VeloPayments::CreatePayeeAddressV3](docs/CreatePayeeAddressV3.md)
 - [VeloPayments::CreatePayeeAddressV4](docs/CreatePayeeAddressV4.md)
 - [VeloPayments::CreatePayeeV3](docs/CreatePayeeV3.md)
 - [VeloPayments::CreatePayeeV4](docs/CreatePayeeV4.md)
 - [VeloPayments::CreatePayeesCSVRequestV3](docs/CreatePayeesCSVRequestV3.md)
 - [VeloPayments::CreatePayeesCSVRequestV4](docs/CreatePayeesCSVRequestV4.md)
 - [VeloPayments::CreatePayeesCSVResponseV3](docs/CreatePayeesCSVResponseV3.md)
 - [VeloPayments::CreatePayeesCSVResponseV3RejectedCsvRows](docs/CreatePayeesCSVResponseV3RejectedCsvRows.md)
 - [VeloPayments::CreatePayeesCSVResponseV4](docs/CreatePayeesCSVResponseV4.md)
 - [VeloPayments::CreatePayeesRequestV3](docs/CreatePayeesRequestV3.md)
 - [VeloPayments::CreatePayeesRequestV4](docs/CreatePayeesRequestV4.md)
 - [VeloPayments::CreatePaymentChannelV3](docs/CreatePaymentChannelV3.md)
 - [VeloPayments::CreatePaymentChannelV4](docs/CreatePaymentChannelV4.md)
 - [VeloPayments::CreatePayorLinkRequest](docs/CreatePayorLinkRequest.md)
 - [VeloPayments::CreatePayoutRequestV3](docs/CreatePayoutRequestV3.md)
 - [VeloPayments::CreateWebhookRequest](docs/CreateWebhookRequest.md)
 - [VeloPayments::DebitEvent](docs/DebitEvent.md)
 - [VeloPayments::DebitEventAllOf](docs/DebitEventAllOf.md)
 - [VeloPayments::DebitStatusChanged](docs/DebitStatusChanged.md)
 - [VeloPayments::DebitStatusChangedAllOf](docs/DebitStatusChangedAllOf.md)
 - [VeloPayments::Error](docs/Error.md)
 - [VeloPayments::ErrorData](docs/ErrorData.md)
 - [VeloPayments::ErrorResponse](docs/ErrorResponse.md)
 - [VeloPayments::FailedPayeeV3](docs/FailedPayeeV3.md)
 - [VeloPayments::FailedPayeeV4](docs/FailedPayeeV4.md)
 - [VeloPayments::FailedSubmissionV3](docs/FailedSubmissionV3.md)
 - [VeloPayments::FailedSubmissionV4](docs/FailedSubmissionV4.md)
 - [VeloPayments::FundingAccountResponse](docs/FundingAccountResponse.md)
 - [VeloPayments::FundingAccountResponse2](docs/FundingAccountResponse2.md)
 - [VeloPayments::FundingAccountType](docs/FundingAccountType.md)
 - [VeloPayments::FundingAudit](docs/FundingAudit.md)
 - [VeloPayments::FundingEvent](docs/FundingEvent.md)
 - [VeloPayments::FundingEventType](docs/FundingEventType.md)
 - [VeloPayments::FundingPayorStatusAuditResponse](docs/FundingPayorStatusAuditResponse.md)
 - [VeloPayments::FundingRequestV1](docs/FundingRequestV1.md)
 - [VeloPayments::FundingRequestV2](docs/FundingRequestV2.md)
 - [VeloPayments::FundingRequestV3](docs/FundingRequestV3.md)
 - [VeloPayments::FxSummary](docs/FxSummary.md)
 - [VeloPayments::FxSummaryV3](docs/FxSummaryV3.md)
 - [VeloPayments::GetFundingsResponse](docs/GetFundingsResponse.md)
 - [VeloPayments::GetFundingsResponseLinks](docs/GetFundingsResponseLinks.md)
 - [VeloPayments::GetPayeeListResponseCompanyV3](docs/GetPayeeListResponseCompanyV3.md)
 - [VeloPayments::GetPayeeListResponseCompanyV4](docs/GetPayeeListResponseCompanyV4.md)
 - [VeloPayments::GetPayeeListResponseIndividualV3](docs/GetPayeeListResponseIndividualV3.md)
 - [VeloPayments::GetPayeeListResponseIndividualV4](docs/GetPayeeListResponseIndividualV4.md)
 - [VeloPayments::GetPayeeListResponseV3](docs/GetPayeeListResponseV3.md)
 - [VeloPayments::GetPayeeListResponseV4](docs/GetPayeeListResponseV4.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV3](docs/GetPaymentsForPayoutResponseV3.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV3Page](docs/GetPaymentsForPayoutResponseV3Page.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV3Summary](docs/GetPaymentsForPayoutResponseV3Summary.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV4](docs/GetPaymentsForPayoutResponseV4.md)
 - [VeloPayments::GetPaymentsForPayoutResponseV4Summary](docs/GetPaymentsForPayoutResponseV4Summary.md)
 - [VeloPayments::GetPayoutStatistics](docs/GetPayoutStatistics.md)
 - [VeloPayments::GetPayoutsResponse](docs/GetPayoutsResponse.md)
 - [VeloPayments::GetPayoutsResponseV3](docs/GetPayoutsResponseV3.md)
 - [VeloPayments::GetPayoutsResponseV3Links](docs/GetPayoutsResponseV3Links.md)
 - [VeloPayments::GetPayoutsResponseV3Page](docs/GetPayoutsResponseV3Page.md)
 - [VeloPayments::IndividualV3](docs/IndividualV3.md)
 - [VeloPayments::IndividualV3Name](docs/IndividualV3Name.md)
 - [VeloPayments::IndividualV4](docs/IndividualV4.md)
 - [VeloPayments::InlineResponse400](docs/InlineResponse400.md)
 - [VeloPayments::InlineResponse401](docs/InlineResponse401.md)
 - [VeloPayments::InlineResponse403](docs/InlineResponse403.md)
 - [VeloPayments::InlineResponse404](docs/InlineResponse404.md)
 - [VeloPayments::InlineResponse409](docs/InlineResponse409.md)
 - [VeloPayments::InlineResponse412](docs/InlineResponse412.md)
 - [VeloPayments::InstructPayoutRequest](docs/InstructPayoutRequest.md)
 - [VeloPayments::InvitationStatusV3](docs/InvitationStatusV3.md)
 - [VeloPayments::InvitationStatusV4](docs/InvitationStatusV4.md)
 - [VeloPayments::InvitePayeeRequestV3](docs/InvitePayeeRequestV3.md)
 - [VeloPayments::InvitePayeeRequestV4](docs/InvitePayeeRequestV4.md)
 - [VeloPayments::InviteUserRequest](docs/InviteUserRequest.md)
 - [VeloPayments::KycState](docs/KycState.md)
 - [VeloPayments::LinkForResponse](docs/LinkForResponse.md)
 - [VeloPayments::ListFundingAccountsResponse](docs/ListFundingAccountsResponse.md)
 - [VeloPayments::ListFundingAccountsResponse2](docs/ListFundingAccountsResponse2.md)
 - [VeloPayments::ListPaymentsResponseV3](docs/ListPaymentsResponseV3.md)
 - [VeloPayments::ListPaymentsResponseV3Page](docs/ListPaymentsResponseV3Page.md)
 - [VeloPayments::ListPaymentsResponseV4](docs/ListPaymentsResponseV4.md)
 - [VeloPayments::ListSourceAccountResponse](docs/ListSourceAccountResponse.md)
 - [VeloPayments::ListSourceAccountResponseLinks](docs/ListSourceAccountResponseLinks.md)
 - [VeloPayments::ListSourceAccountResponsePage](docs/ListSourceAccountResponsePage.md)
 - [VeloPayments::ListSourceAccountResponseV2](docs/ListSourceAccountResponseV2.md)
 - [VeloPayments::ListSourceAccountResponseV2Links](docs/ListSourceAccountResponseV2Links.md)
 - [VeloPayments::ListSourceAccountResponseV3](docs/ListSourceAccountResponseV3.md)
 - [VeloPayments::ListSourceAccountResponseV3Links](docs/ListSourceAccountResponseV3Links.md)
 - [VeloPayments::LocalisationDetails](docs/LocalisationDetails.md)
 - [VeloPayments::MFADetails](docs/MFADetails.md)
 - [VeloPayments::MFAType](docs/MFAType.md)
 - [VeloPayments::NameV3](docs/NameV3.md)
 - [VeloPayments::NameV4](docs/NameV4.md)
 - [VeloPayments::Notification](docs/Notification.md)
 - [VeloPayments::Notifications](docs/Notifications.md)
 - [VeloPayments::Notifications2](docs/Notifications2.md)
 - [VeloPayments::OfacStatusV4](docs/OfacStatusV4.md)
 - [VeloPayments::OnboardedStatusV3](docs/OnboardedStatusV3.md)
 - [VeloPayments::OnboardedStatusV32](docs/OnboardedStatusV32.md)
 - [VeloPayments::OnboardedStatusV4](docs/OnboardedStatusV4.md)
 - [VeloPayments::OnboardedStatusV42](docs/OnboardedStatusV42.md)
 - [VeloPayments::OnboardingStatusChanged](docs/OnboardingStatusChanged.md)
 - [VeloPayments::PageForResponse](docs/PageForResponse.md)
 - [VeloPayments::PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse](docs/PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse.md)
 - [VeloPayments::PagedPayeeInvitationStatusResponseV3](docs/PagedPayeeInvitationStatusResponseV3.md)
 - [VeloPayments::PagedPayeeInvitationStatusResponseV3Page](docs/PagedPayeeInvitationStatusResponseV3Page.md)
 - [VeloPayments::PagedPayeeInvitationStatusResponseV4](docs/PagedPayeeInvitationStatusResponseV4.md)
 - [VeloPayments::PagedPayeeResponseV3](docs/PagedPayeeResponseV3.md)
 - [VeloPayments::PagedPayeeResponseV3Links](docs/PagedPayeeResponseV3Links.md)
 - [VeloPayments::PagedPayeeResponseV3Page](docs/PagedPayeeResponseV3Page.md)
 - [VeloPayments::PagedPayeeResponseV3Summary](docs/PagedPayeeResponseV3Summary.md)
 - [VeloPayments::PagedPayeeResponseV4](docs/PagedPayeeResponseV4.md)
 - [VeloPayments::PagedPaymentsResponseV3](docs/PagedPaymentsResponseV3.md)
 - [VeloPayments::PagedUserResponse](docs/PagedUserResponse.md)
 - [VeloPayments::PagedUserResponseLinks](docs/PagedUserResponseLinks.md)
 - [VeloPayments::PagedUserResponsePage](docs/PagedUserResponsePage.md)
 - [VeloPayments::PasswordRequest](docs/PasswordRequest.md)
 - [VeloPayments::PayableIssueV3](docs/PayableIssueV3.md)
 - [VeloPayments::PayableIssueV4](docs/PayableIssueV4.md)
 - [VeloPayments::PayableStatusChanged](docs/PayableStatusChanged.md)
 - [VeloPayments::PayeeAddressV3](docs/PayeeAddressV3.md)
 - [VeloPayments::PayeeAddressV4](docs/PayeeAddressV4.md)
 - [VeloPayments::PayeeDeltaResponseV3](docs/PayeeDeltaResponseV3.md)
 - [VeloPayments::PayeeDeltaResponseV3Links](docs/PayeeDeltaResponseV3Links.md)
 - [VeloPayments::PayeeDeltaResponseV3Page](docs/PayeeDeltaResponseV3Page.md)
 - [VeloPayments::PayeeDeltaResponseV4](docs/PayeeDeltaResponseV4.md)
 - [VeloPayments::PayeeDeltaResponseV4Links](docs/PayeeDeltaResponseV4Links.md)
 - [VeloPayments::PayeeDeltaV3](docs/PayeeDeltaV3.md)
 - [VeloPayments::PayeeDeltaV4](docs/PayeeDeltaV4.md)
 - [VeloPayments::PayeeDetailResponseV3](docs/PayeeDetailResponseV3.md)
 - [VeloPayments::PayeeDetailResponseV4](docs/PayeeDetailResponseV4.md)
 - [VeloPayments::PayeeDetailsChanged](docs/PayeeDetailsChanged.md)
 - [VeloPayments::PayeeEvent](docs/PayeeEvent.md)
 - [VeloPayments::PayeeEventAllOf](docs/PayeeEventAllOf.md)
 - [VeloPayments::PayeeEventAllOfReasons](docs/PayeeEventAllOfReasons.md)
 - [VeloPayments::PayeeInvitationStatusResponseV3](docs/PayeeInvitationStatusResponseV3.md)
 - [VeloPayments::PayeeInvitationStatusResponseV4](docs/PayeeInvitationStatusResponseV4.md)
 - [VeloPayments::PayeePayorRefV3](docs/PayeePayorRefV3.md)
 - [VeloPayments::PayeePayorRefV4](docs/PayeePayorRefV4.md)
 - [VeloPayments::PayeeType](docs/PayeeType.md)
 - [VeloPayments::PayeeType2](docs/PayeeType2.md)
 - [VeloPayments::PayeeUserSelfUpdateRequest](docs/PayeeUserSelfUpdateRequest.md)
 - [VeloPayments::PaymentAuditCurrency](docs/PaymentAuditCurrency.md)
 - [VeloPayments::PaymentAuditCurrencyV3](docs/PaymentAuditCurrencyV3.md)
 - [VeloPayments::PaymentChannelCountry](docs/PaymentChannelCountry.md)
 - [VeloPayments::PaymentChannelRule](docs/PaymentChannelRule.md)
 - [VeloPayments::PaymentChannelRulesResponse](docs/PaymentChannelRulesResponse.md)
 - [VeloPayments::PaymentDelta](docs/PaymentDelta.md)
 - [VeloPayments::PaymentDeltaResponse](docs/PaymentDeltaResponse.md)
 - [VeloPayments::PaymentDeltaResponseV1](docs/PaymentDeltaResponseV1.md)
 - [VeloPayments::PaymentDeltaV1](docs/PaymentDeltaV1.md)
 - [VeloPayments::PaymentEvent](docs/PaymentEvent.md)
 - [VeloPayments::PaymentEventAllOf](docs/PaymentEventAllOf.md)
 - [VeloPayments::PaymentEventResponse](docs/PaymentEventResponse.md)
 - [VeloPayments::PaymentEventResponseV3](docs/PaymentEventResponseV3.md)
 - [VeloPayments::PaymentInstructionV3](docs/PaymentInstructionV3.md)
 - [VeloPayments::PaymentRails](docs/PaymentRails.md)
 - [VeloPayments::PaymentRejectedOrReturned](docs/PaymentRejectedOrReturned.md)
 - [VeloPayments::PaymentRejectedOrReturnedAllOf](docs/PaymentRejectedOrReturnedAllOf.md)
 - [VeloPayments::PaymentResponseV3](docs/PaymentResponseV3.md)
 - [VeloPayments::PaymentResponseV4](docs/PaymentResponseV4.md)
 - [VeloPayments::PaymentResponseV4Payout](docs/PaymentResponseV4Payout.md)
 - [VeloPayments::PaymentStatusChanged](docs/PaymentStatusChanged.md)
 - [VeloPayments::PaymentStatusChangedAllOf](docs/PaymentStatusChangedAllOf.md)
 - [VeloPayments::PaymentV3](docs/PaymentV3.md)
 - [VeloPayments::PayorAddress](docs/PayorAddress.md)
 - [VeloPayments::PayorAddressV2](docs/PayorAddressV2.md)
 - [VeloPayments::PayorAmlTransaction](docs/PayorAmlTransaction.md)
 - [VeloPayments::PayorAmlTransactionV3](docs/PayorAmlTransactionV3.md)
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
 - [VeloPayments::PayoutCompanyV3](docs/PayoutCompanyV3.md)
 - [VeloPayments::PayoutIndividualV3](docs/PayoutIndividualV3.md)
 - [VeloPayments::PayoutNameV3](docs/PayoutNameV3.md)
 - [VeloPayments::PayoutPayeeV3](docs/PayoutPayeeV3.md)
 - [VeloPayments::PayoutPayor](docs/PayoutPayor.md)
 - [VeloPayments::PayoutPayorIds](docs/PayoutPayorIds.md)
 - [VeloPayments::PayoutPrincipal](docs/PayoutPrincipal.md)
 - [VeloPayments::PayoutSchedule](docs/PayoutSchedule.md)
 - [VeloPayments::PayoutSchedule2](docs/PayoutSchedule2.md)
 - [VeloPayments::PayoutStatus](docs/PayoutStatus.md)
 - [VeloPayments::PayoutStatusV3](docs/PayoutStatusV3.md)
 - [VeloPayments::PayoutSummaryAudit](docs/PayoutSummaryAudit.md)
 - [VeloPayments::PayoutSummaryAuditV3](docs/PayoutSummaryAuditV3.md)
 - [VeloPayments::PayoutSummaryResponseV3](docs/PayoutSummaryResponseV3.md)
 - [VeloPayments::PayoutType](docs/PayoutType.md)
 - [VeloPayments::Ping](docs/Ping.md)
 - [VeloPayments::PingResponse](docs/PingResponse.md)
 - [VeloPayments::QueryBatchResponseV3](docs/QueryBatchResponseV3.md)
 - [VeloPayments::QueryBatchResponseV4](docs/QueryBatchResponseV4.md)
 - [VeloPayments::QuoteFxSummaryV3](docs/QuoteFxSummaryV3.md)
 - [VeloPayments::QuoteResponseV3](docs/QuoteResponseV3.md)
 - [VeloPayments::RegionV2](docs/RegionV2.md)
 - [VeloPayments::RegisterSmsRequest](docs/RegisterSmsRequest.md)
 - [VeloPayments::RejectedPaymentV3](docs/RejectedPaymentV3.md)
 - [VeloPayments::ResendTokenRequest](docs/ResendTokenRequest.md)
 - [VeloPayments::ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [VeloPayments::Role](docs/Role.md)
 - [VeloPayments::RoleUpdateRequest](docs/RoleUpdateRequest.md)
 - [VeloPayments::SchedulePayoutRequest](docs/SchedulePayoutRequest.md)
 - [VeloPayments::ScheduleStatus](docs/ScheduleStatus.md)
 - [VeloPayments::ScheduleStatus2](docs/ScheduleStatus2.md)
 - [VeloPayments::SelfMFATypeUnregisterRequest](docs/SelfMFATypeUnregisterRequest.md)
 - [VeloPayments::SelfUpdatePasswordRequest](docs/SelfUpdatePasswordRequest.md)
 - [VeloPayments::SetNotificationsRequest](docs/SetNotificationsRequest.md)
 - [VeloPayments::SourceAccountResponse](docs/SourceAccountResponse.md)
 - [VeloPayments::SourceAccountResponseV2](docs/SourceAccountResponseV2.md)
 - [VeloPayments::SourceAccountResponseV3](docs/SourceAccountResponseV3.md)
 - [VeloPayments::SourceAccountSummary](docs/SourceAccountSummary.md)
 - [VeloPayments::SourceAccountSummaryV3](docs/SourceAccountSummaryV3.md)
 - [VeloPayments::SourceAccountType](docs/SourceAccountType.md)
 - [VeloPayments::SourceAccountV3](docs/SourceAccountV3.md)
 - [VeloPayments::SourceEvent](docs/SourceEvent.md)
 - [VeloPayments::SupportedCountriesResponse](docs/SupportedCountriesResponse.md)
 - [VeloPayments::SupportedCountriesResponseV2](docs/SupportedCountriesResponseV2.md)
 - [VeloPayments::SupportedCountry](docs/SupportedCountry.md)
 - [VeloPayments::SupportedCountryV2](docs/SupportedCountryV2.md)
 - [VeloPayments::SupportedCurrencyResponseV2](docs/SupportedCurrencyResponseV2.md)
 - [VeloPayments::SupportedCurrencyV2](docs/SupportedCurrencyV2.md)
 - [VeloPayments::TransferRequest](docs/TransferRequest.md)
 - [VeloPayments::TransferRequest2](docs/TransferRequest2.md)
 - [VeloPayments::TransmissionType](docs/TransmissionType.md)
 - [VeloPayments::TransmissionTypes](docs/TransmissionTypes.md)
 - [VeloPayments::TransmissionTypes2](docs/TransmissionTypes2.md)
 - [VeloPayments::UnregisterMFARequest](docs/UnregisterMFARequest.md)
 - [VeloPayments::UpdatePayeeDetailsRequestV3](docs/UpdatePayeeDetailsRequestV3.md)
 - [VeloPayments::UpdatePayeeDetailsRequestV4](docs/UpdatePayeeDetailsRequestV4.md)
 - [VeloPayments::UpdateRemoteIdRequestV3](docs/UpdateRemoteIdRequestV3.md)
 - [VeloPayments::UpdateRemoteIdRequestV4](docs/UpdateRemoteIdRequestV4.md)
 - [VeloPayments::UpdateWebhookRequest](docs/UpdateWebhookRequest.md)
 - [VeloPayments::UserDetailsUpdateRequest](docs/UserDetailsUpdateRequest.md)
 - [VeloPayments::UserInfo](docs/UserInfo.md)
 - [VeloPayments::UserResponse](docs/UserResponse.md)
 - [VeloPayments::UserStatus](docs/UserStatus.md)
 - [VeloPayments::UserType](docs/UserType.md)
 - [VeloPayments::UserType2](docs/UserType2.md)
 - [VeloPayments::ValidatePasswordResponse](docs/ValidatePasswordResponse.md)
 - [VeloPayments::WatchlistStatusV3](docs/WatchlistStatusV3.md)
 - [VeloPayments::WatchlistStatusV4](docs/WatchlistStatusV4.md)
 - [VeloPayments::WebhookResponse](docs/WebhookResponse.md)
 - [VeloPayments::WebhooksResponse](docs/WebhooksResponse.md)
 - [VeloPayments::WithdrawPaymentRequest](docs/WithdrawPaymentRequest.md)


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

