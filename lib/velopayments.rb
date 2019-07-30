=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.14.92

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.0-SNAPSHOT

=end

# Common files
require 'velopayments/api_client'
require 'velopayments/api_error'
require 'velopayments/version'
require 'velopayments/configuration'

# Models
require 'velopayments/models/address'
require 'velopayments/models/auth_response'
require 'velopayments/models/auto_top_up_config'
require 'velopayments/models/challenge'
require 'velopayments/models/company'
require 'velopayments/models/create_individual'
require 'velopayments/models/create_payee'
require 'velopayments/models/create_payee_address'
require 'velopayments/models/create_payees_csv_request'
require 'velopayments/models/create_payees_csv_response'
require 'velopayments/models/create_payees_request'
require 'velopayments/models/create_payment_channel'
require 'velopayments/models/create_payout_request'
require 'velopayments/models/failed_submission'
require 'velopayments/models/funding_audit'
require 'velopayments/models/funding_event'
require 'velopayments/models/funding_event_type'
require 'velopayments/models/funding_request_v1'
require 'velopayments/models/funding_request_v2'
require 'velopayments/models/fx_summary_v3'
require 'velopayments/models/fx_summary_v4'
require 'velopayments/models/get_fundings_response'
require 'velopayments/models/get_fundings_response_all_of'
require 'velopayments/models/get_payments_for_payout_response_v3'
require 'velopayments/models/get_payments_for_payout_response_v3_page'
require 'velopayments/models/get_payments_for_payout_response_v3_summary'
require 'velopayments/models/get_payments_for_payout_response_v4'
require 'velopayments/models/get_payments_for_payout_response_v4_summary'
require 'velopayments/models/get_payout_statistics'
require 'velopayments/models/get_payouts_response_v3'
require 'velopayments/models/get_payouts_response_v3_links'
require 'velopayments/models/get_payouts_response_v3_page'
require 'velopayments/models/get_payouts_response_v3_summary'
require 'velopayments/models/get_payouts_response_v4'
require 'velopayments/models/individual'
require 'velopayments/models/individual_name'
require 'velopayments/models/invitation_status'
require 'velopayments/models/invitation_status_response'
require 'velopayments/models/invite_payee_request'
require 'velopayments/models/language'
require 'velopayments/models/list_payments_response'
require 'velopayments/models/list_payments_response_page'
require 'velopayments/models/list_payments_response_summary'
require 'velopayments/models/list_source_account_response'
require 'velopayments/models/list_source_account_response_links'
require 'velopayments/models/list_source_account_response_page'
require 'velopayments/models/list_source_account_response_v2'
require 'velopayments/models/list_source_account_response_v2_page'
require 'velopayments/models/marketing_opt_in'
require 'velopayments/models/notifications'
require 'velopayments/models/ofac_status'
require 'velopayments/models/onboarded_status'
require 'velopayments/models/paged_payee_invitation_status_response'
require 'velopayments/models/paged_response'
require 'velopayments/models/paged_response_page'
require 'velopayments/models/payee'
require 'velopayments/models/payee_delta'
require 'velopayments/models/payee_delta_response'
require 'velopayments/models/payee_delta_response_links'
require 'velopayments/models/payee_delta_response_page'
require 'velopayments/models/payee_invitation_status'
require 'velopayments/models/payee_invitation_status_response'
require 'velopayments/models/payee_response'
require 'velopayments/models/payee_response_links'
require 'velopayments/models/payee_response_page'
require 'velopayments/models/payee_response_summary'
require 'velopayments/models/payee_type'
require 'velopayments/models/payment_audit_currency_v3'
require 'velopayments/models/payment_audit_currency_v4'
require 'velopayments/models/payment_channel'
require 'velopayments/models/payment_channel_country'
require 'velopayments/models/payment_channel_rule'
require 'velopayments/models/payment_channel_rules_response'
require 'velopayments/models/payment_event_response_v3'
require 'velopayments/models/payment_event_response_v4'
require 'velopayments/models/payment_instruction'
require 'velopayments/models/payment_response_v3'
require 'velopayments/models/payment_response_v4'
require 'velopayments/models/payor_branding_response'
require 'velopayments/models/payor_create_api_key_request'
require 'velopayments/models/payor_create_api_key_response'
require 'velopayments/models/payor_create_application_request'
require 'velopayments/models/payor_email_opt_out_request'
require 'velopayments/models/payor_funding_bank_details_update'
require 'velopayments/models/payor_links_response'
require 'velopayments/models/payor_links_response_links'
require 'velopayments/models/payor_links_response_payors'
require 'velopayments/models/payor_logo_request'
require 'velopayments/models/payor_ref'
require 'velopayments/models/payor_v1'
require 'velopayments/models/payor_v2'
require 'velopayments/models/payout_status_v3'
require 'velopayments/models/payout_status_v4'
require 'velopayments/models/payout_summary_audit_v3'
require 'velopayments/models/payout_summary_audit_v4'
require 'velopayments/models/payout_summary_response'
require 'velopayments/models/query_batch_response'
require 'velopayments/models/quote_fx_summary'
require 'velopayments/models/quote_response'
require 'velopayments/models/rejected_payment'
require 'velopayments/models/set_notifications_request'
require 'velopayments/models/source_account'
require 'velopayments/models/source_account_response'
require 'velopayments/models/source_account_response_v2'
require 'velopayments/models/source_account_summary_v3'
require 'velopayments/models/source_account_summary_v4'
require 'velopayments/models/supported_countries_response'
require 'velopayments/models/supported_country'
require 'velopayments/models/supported_currency'
require 'velopayments/models/supported_currency_response'

# APIs
require 'velopayments/api/auth_api'
require 'velopayments/api/countries_api'
require 'velopayments/api/currencies_api'
require 'velopayments/api/funding_manager_api'
require 'velopayments/api/get_payout_api'
require 'velopayments/api/instruct_payout_api'
require 'velopayments/api/payee_invitation_api'
require 'velopayments/api/payees_api'
require 'velopayments/api/payment_audit_service_api'
require 'velopayments/api/payor_applications_api'
require 'velopayments/api/payors_api'
require 'velopayments/api/payout_history_api'
require 'velopayments/api/quote_payout_api'
require 'velopayments/api/submit_payout_api'
require 'velopayments/api/withdraw_payout_api'

module VeloPayments
  class << self
    # Customize default settings for the SDK using block.
    #   VeloPayments.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
