=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.35.58

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for VeloPayments::PayeeInvitationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayeeInvitationApi' do
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

    @api_instance = VeloPayments::PayeeInvitationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayeeInvitationApi' do
    it 'should create an instance of PayeeInvitationApi' do
      expect(@api_instance).to be_instance_of(VeloPayments::PayeeInvitationApi)
    end
  end

  # unit tests for create_payee_v3
  # Initiate Payee Creation
  # &lt;p&gt;Use v4 instead&lt;/p&gt; Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body. In addition to standard semantic validations, a 400 will also result if there is a duplicate remote id within the batch / if there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch). The validation at this stage is intra-batch only. Validation against payees who have already been invited occurs subsequently during processing of the batch. 
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePayeesRequestV3] :create_payees_request_v3 Post payees to create.
  # @return [CreatePayeesCSVResponseV3]
  describe 'create_payee_v3 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payees_invitation_status_v3
  # Get Payee Invitation Status
  # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.&lt;/p&gt; 
  # @param payor_id The account owner Payor ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payee_id The UUID of the payee.
  # @option opts [String] :invitation_status The invitation status of the payees.
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @return [PagedPayeeInvitationStatusResponseV3]
  describe 'get_payees_invitation_status_v3 test' do
    it 'should work' do
      payor_id = ENV['PAYOR']
      opts = {
        payee_id: nil, # String | The UUID of the payee.
        invitation_status: nil, # VeloPayments::InvitationStatus.new, # InvitationStatus | The invitation status of the payees.
        page: 1, # Integer | Page number. Default is 1.
        page_size: 25 # Integer | Page size. Default is 25. Max allowable is 100.
      }

      res = @api_instance.get_payees_invitation_status_v3(payor_id, opts)
      expect(res.content.length()).to be >= 1
      expect(@api_instance).to respond_to(:get_payees_invitation_status_v3) 
    end
  end

  # unit tests for get_payees_invitation_status_v4
  # Get Payee Invitation Status
  # Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 
  # @param payor_id The account owner Payor ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payee_id The UUID of the payee.
  # @option opts [String] :invitation_status The invitation status of the payees.
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @return [PagedPayeeInvitationStatusResponseV4]
  describe 'get_payees_invitation_status_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_batch_status_v3
  # Query Batch Status
  # &lt;p&gt;Use v4 instead&lt;/p&gt; Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
  # @param batch_id Batch Id
  # @param [Hash] opts the optional parameters
  # @return [QueryBatchResponseV3]
  describe 'query_batch_status_v3 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_batch_status_v4
  # Query Batch Status
  # Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
  # @param batch_id Batch Id
  # @param [Hash] opts the optional parameters
  # @return [QueryBatchResponseV4]
  describe 'query_batch_status_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for resend_payee_invite_v3
  # Resend Payee Invite
  # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined&lt;/p&gt; &lt;p&gt;Any previous invites to the payee by this Payor will be invalidated&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param invite_payee_request_v3 Provide Payor Id in body of request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'resend_payee_invite_v3 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for resend_payee_invite_v4
  # Resend Payee Invite
  # &lt;p&gt;Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined&lt;/p&gt; &lt;p&gt;Any previous invites to the payee by this Payor will be invalidated&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param invite_payee_request_v4 Provide Payor Id in body of request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'resend_payee_invite_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v4_create_payee
  # Initiate Payee Creation
  # &lt;p&gt;Initiate the process of creating 1 to 2000 payees in a batch&lt;/p&gt; &lt;p&gt;Use the batchId in the response to query for status.&lt;/p&gt; &lt;p&gt;In addition to standard semantic validations, a 400 will also result if: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;there is a duplicate remote id within the batch&lt;/li&gt; &lt;li&gt;there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch).&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The validation at this stage is intra-batch only.&lt;/p&gt; &lt;p&gt;Validation against payees who have already been invited occurs subsequently during processing of the batch.&lt;/p&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePayeesRequestV4] :create_payees_request_v4 Post payees to create.
  # @return [CreatePayeesCSVResponseV4]
  describe 'v4_create_payee test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
