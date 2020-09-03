=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.22.122

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for VeloPayments::PayeesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayeesApi' do
  before do
    # run before each test
    if ENV['APITOKEN'] == ""
      VeloPayments.configure do |config|
        config.username = ENV['KEY']
        config.password =  ENV['SECRET']
      end
      
      api_instance = VeloPayments::LoginApi.new
      opts = {
        grant_type: 'client_credentials'
      }
      
      begin
        res = api_instance.velo_auth(opts)

        ENV['APITOKEN'] = res.access_token
      rescue VeloPayments::ApiError => e
        puts "Exception when calling LoginApi->velo_auth: #{e}"
      end
    end

    uri = URI.parse(ENV['APIURL'])
    VeloPayments.configure do |config|
      config.access_token = ENV['APITOKEN']
      config.host = uri.host
    end

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

  # unit tests for delete_payee_by_id_v1
  # Delete Payee by Id
  # &lt;p&gt;This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:&lt;/p&gt; &lt;p&gt;* Payee ID is not found&lt;/p&gt; &lt;p&gt;* If Payee has not been on-boarded&lt;/p&gt; &lt;p&gt;* If Payee is in grace period&lt;/p&gt; &lt;p&gt;* If Payee has existing payments&lt;/p&gt; &lt;p&gt;Please use V3 instead.&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payee_by_id_v1 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_payee_by_id_v3
  # Delete Payee by Id
  # &lt;p&gt;This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:&lt;/p&gt; &lt;p&gt;* Payee ID is not found&lt;/p&gt; &lt;p&gt;* If Payee has not been on-boarded&lt;/p&gt; &lt;p&gt;* If Payee is in grace period&lt;/p&gt; &lt;p&gt;* If Payee has existing payments&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payee_by_id_v3 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payee_by_id_v1
  # Get Payee by Id
  # &lt;p&gt;Get Payee by Id&lt;/p&gt; &lt;p&gt;Please use V3 instead.&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [Payee]
  describe 'get_payee_by_id_v1 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payee_by_id_v2
  # Get Payee by Id
  # &lt;p&gt;Get Payee by Id&lt;/p&gt; &lt;p&gt;Please use V3 instead.&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [PayeeResponseV2]
  describe 'get_payee_by_id_v2 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payee_by_id_v3
  # Get Payee by Id
  # Get Payee by Id
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [PayeeDetailResponse]
  describe 'get_payee_by_id_v3 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payee_changes
  # List Payee Changes
  # &lt;p&gt;Get a paginated response listing payee changes.&lt;/p&gt; &lt;p&gt;Please use V3 instead.&lt;/p&gt; 
  # @param payor_id The Payor ID to find associated Payees
  # @param updated_since The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000.
  # @return [PayeeDeltaResponse]
  describe 'list_payee_changes test' do
    it 'should work' do
      payor_id = ENV['PAYOR']
      updated_since = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
      opts = {
        page: 1, # Integer | Page number. Default is 1.
        page_size: 100 # Integer | Page size. Default is 100. Max allowable is 1000.
      }
      res = @api_instance.list_payee_changes(payor_id, updated_since, opts)
      expect(res.content.length()).to be >= 1
      expect(@api_instance).to respond_to(:list_payee_changes) 
    end
  end

  # unit tests for list_payee_changes_v3
  # List Payee Changes
  # Get a paginated response listing payee changes.
  # @param payor_id The Payor ID to find associated Payees
  # @param updated_since The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000.
  # @return [PayeeDeltaResponse2]
  describe 'list_payee_changes_v3 test' do
    it 'should work' do
      payor_id = ENV['PAYOR']
      updated_since = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
      opts = {
        page: 1, # Integer | Page number. Default is 1.
        page_size: 100 # Integer | Page size. Default is 100. Max allowable is 1000.
      }
      res = @api_instance.list_payee_changes_v3(payor_id, updated_since, opts)
      expect(res.content.length()).to be >= 1
      expect(@api_instance).to respond_to(:list_payee_changes_v3) 
    end
  end

  # unit tests for list_payees_v1
  # List Payees V1
  # &lt;p&gt;Get a paginated response listing the payees for a payor.&lt;/p&gt; &lt;p&gt;Please use V3 instead.&lt;/&gt; 
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
  describe 'list_payees_v1 test' do
    it 'should work' do
      payor_id = ENV['PAYOR']
      opts = {
        ofac_status: nil, # VeloPayments::OfacStatus.new, # OfacStatus | The ofacStatus of the payees.
        onboarded_status: nil, # VeloPayments::OnboardedStatus.new, # OnboardedStatus | The onboarded status of the payees.
        email: nil, # String | Email address
        display_name: nil, # String | The display name of the payees.
        remote_id: 'remoteId123', # String | The remote id of the payees.
        payee_type: nil, # VeloPayments::PayeeType.new, # PayeeType | The onboarded status of the payees.
        payee_country: 'US', # String | The country of the payee - 2 letter ISO 3166-1 country code (upper case)
        page: 1, # Integer | Page number. Default is 1.
        page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
        sort: 'displayName:asc' # String | List of sort fields (e.g. ?sort=onboardedStatus:asc,name:asc) Default is name:asc 'name' is treated as company name for companies - last name + ',' + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
      }
      res = @api_instance.list_payees_v1(payor_id, opts)
      expect(res.content.length()).to be >= 0
      expect(@api_instance).to respond_to(:list_payees_v1) 
    end
  end

  # unit tests for list_payees_v3
  # List Payees
  # Get a paginated response listing the payees for a payor.
  # @param payor_id The account owner Payor ID
  # @param [Hash] opts the optional parameters
  # @option opts [WatchlistStatus] :watchlist_status The watchlistStatus of the payees.
  # @option opts [Boolean] :disabled Payee disabled
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
      payor_id = ENV['PAYOR']
      opts = {
        watchlist_status: nil, # VeloPayments::WatchlistStatus.new, # WatchlistStatus | The watchlistStatus of the payees.
        disabled: true, # Boolean | Payee disabled
        onboarded_status: nil, # VeloPayments::OnboardedStatus.new, # OnboardedStatus | The onboarded status of the payees.
        email: nil, # String | Email address
        display_name: nil, #  String | The display name of the payees.
        remote_id: nil, # String | The remote id of the payees.
        payee_type: nil, # VeloPayments::PayeeType.new, # PayeeType | The onboarded status of the payees.
        payee_country: 'US', # String | The country of the payee - 2 letter ISO 3166-1 country code (upper case)
        page: 1, # Integer | Page number. Default is 1.
        page_size: 25, # Integer | Page size. Default is 25. Max allowable is 100.
        sort: 'displayName:asc' # String | List of sort fields (e.g. ?sort=onboardedStatus:asc,name:asc) Default is name:asc 'name' is treated as company name for companies - last name + ',' + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus. 
      }
      res = @api_instance.list_payees_v1(payor_id, opts)
      expect(res.content.length()).to be >= 0
      expect(@api_instance).to respond_to(:list_payees_v1) 
    end
  end

  # unit tests for payee_details_update_v3
  # Update Payee Details
  # &lt;p&gt;Update payee details for the given Payee Id.&lt;p&gt; 
  # @param payee_id The UUID of the payee.
  # @param update_payee_details_request Request to update payee details
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'payee_details_update_v3 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_payees_payee_id_remote_id_update_post
  # Update Payee Remote Id
  # &lt;p&gt;Update the remote Id for the given Payee Id.&lt;/p&gt; &lt;p&gt;Please use V3 instead&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param update_remote_id_request Request to update payee remote id v1
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v1_payees_payee_id_remote_id_update_post test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v3_payees_payee_id_remote_id_update_post
  # Update Payee Remote Id
  # &lt;p&gt;Update the remote Id for the given Payee Id.&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param update_remote_id_request Request to update payee remote id v3
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v3_payees_payee_id_remote_id_update_post test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
