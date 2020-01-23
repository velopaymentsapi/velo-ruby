=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.18.31

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for VeloPayments::PayeesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayeesApi' do
  before do
    # run before each test
    @api_instance = VeloPayments::PayeesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayeesApi' do
    it 'should create an instance of PayeesApi' do
      expect(@api_instance).to be_instance_of(VeloPayments::PayeesApi)
    end
  end

  # unit tests for delete_payee_by_id
  # Delete Payee by Id
  # This API will delete Payee by Id (UUID). Deletion by ID is not allowed if: * Payee ID is not found * If Payee has not been on-boarded * If Payee is in grace period * If Payee has existing payments 
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payee_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payee_by_id
  # Get Payee by Id
  # Get Payee by Id
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [Payee]
  describe 'get_payee_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payee_changes
  # List Payee Changes
  # Get a paginated response listing payee changes.
  # @param payor_id The Payor ID to find associated Payees
  # @param updated_since The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000.
  # @return [PayeeDeltaResponse]
  describe 'list_payee_changes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payees
  # List Payees
  # Get a paginated response listing the payees for a payor.
  # @param payor_id The account owner Payor ID
  # @param [Hash] opts the optional parameters
  # @option opts [OfacStatus] :ofac_status The ofacStatus of the payees.
  # @option opts [OnboardedStatus] :onboarded_status The onboarded status of the payees.
  # @option opts [String] :email Email address
  # @option opts [String] :display_name The display name of the payees.
  # @option opts [String] :remote_id The remote id of the payees.
  # @option opts [PayeeType] :payee_type The onboarded status of the payees.
  # @option opts [String] :payee_country The country of the payee - 2 letter ISO 3166-1 country code (upper case)
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
  # @return [PagedPayeeResponse]
  describe 'list_payees test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payees_v3
  # List Payees
  # Get a paginated response listing the payees for a payor.
  # @param payor_id The account owner Payor ID
  # @param [Hash] opts the optional parameters
  # @option opts [WatchlistStatus] :ofac_status The watchlistStatus of the payees.
  # @option opts [OnboardedStatus] :onboarded_status The onboarded status of the payees.
  # @option opts [String] :email Email address
  # @option opts [String] :display_name The display name of the payees.
  # @option opts [String] :remote_id The remote id of the payees.
  # @option opts [PayeeType] :payee_type The onboarded status of the payees.
  # @option opts [String] :payee_country The country of the payee - 2 letter ISO 3166-1 country code (upper case)
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
  # @return [PagedPayeeResponse2]
  describe 'list_payees_v3 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_payees_payee_id_remote_id_update_post
  # Update Payee Remote Id
  # Update the remote Id for the given Payee Id.
  # @param payee_id The UUID of the payee.
  # @param update_remote_id_request Request to update payee remote id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_payees_payee_id_remote_id_update_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
