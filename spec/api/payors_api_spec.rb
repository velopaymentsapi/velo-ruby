=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.22.122

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for VeloPayments::PayorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayorsApi' do
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

    @api_instance = VeloPayments::PayorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayorsApi' do
    it 'should create an instance of PayorsApi' do
      expect(@api_instance).to be_instance_of(VeloPayments::PayorsApi)
    end
  end

  # unit tests for get_payor_by_id
  # Get Payor
  # Get a Single Payor by Id. 
  # @param payor_id The Payor Id
  # @param [Hash] opts the optional parameters
  # @return [PayorV1]
  describe 'get_payor_by_id test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payor_by_id_v2
  # Get Payor
  # Get a Single Payor by Id. 
  # @param payor_id The Payor Id
  # @param [Hash] opts the optional parameters
  # @return [PayorV2]
  describe 'get_payor_by_id_v2 test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payor_add_payor_logo
  # Add Logo
  # Add Payor Logo. Logo file is used in your branding, and emails sent to payees.
  # @param payor_id The Payor Id
  # @param [Hash] opts the optional parameters
  # @option opts [File] :logo 
  # @return [nil]
  describe 'payor_add_payor_logo test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payor_create_api_key_request
  # Create API Key
  # Create an an API key for the given payor Id and application Id
  # @param payor_id The Payor Id
  # @param application_id Application ID
  # @param payor_create_api_key_request Details of application API key to create
  # @param [Hash] opts the optional parameters
  # @return [PayorCreateApiKeyResponse]
  describe 'payor_create_api_key_request test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payor_create_application_request
  # Create Application
  # Create an application for the given Payor ID. Applications are programatic users which can be assigned unique keys.
  # @param payor_id The Payor Id
  # @param payor_create_application_request Details of application to create
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'payor_create_application_request test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payor_email_opt_out
  # Reminder Email Opt-Out
  # Update the emailRemindersOptOut field for a Payor. This API can be used to opt out or opt into Payor Reminder emails. These emails are typically around payee events such as payees registering and onboarding. 
  # @param payor_id The Payor Id
  # @param payor_email_opt_out_request Reminder Emails Opt-Out Request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'payor_email_opt_out test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payor_get_branding
  # Get Branding
  # Get the payor branding details.
  # @param payor_id The Payor Id
  # @param [Hash] opts the optional parameters
  # @return [PayorBrandingResponse]
  describe 'payor_get_branding test' do
    skip "skipping test" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payor_links
  # List Payor Links
  # This endpoint allows you to list payor links
  # @param [Hash] opts the optional parameters
  # @option opts [String] :descendants_of_payor The Payor ID from which to start the query to show all descendants
  # @option opts [String] :parent_of_payor Look for the parent payor details for this payor id
  # @option opts [String] :fields List of additional Payor fields to include in the response for each Payor. The values of payorId and payorName and always included for each Payor - &#39;fields&#39; allows you to add to this. Example: &#x60;&#x60;&#x60;fields&#x3D;primaryContactEmail,kycState&#x60;&#x60;&#x60; - will include payorId+payorName+primaryContactEmail+kycState for each Payor Default if not specified is to include only payorId and payorName. The supported fields are any combination of: primaryContactEmail,kycState 
  # @return [PayorLinksResponse]
  describe 'payor_links test' do
    it 'should work' do
      opts = {
        descendants_of_payor: ENV['PAYOR'], # String | The Payor ID from which to start the query to show all descendants
        parent_of_payor: nil, # String | Look for the parent payor details for this payor id
        fields: nil # String | List of additional Payor fields to include in the response for each Payor. The values of payorId and payorName and always included for each Payor - 'fields' allows you to add to this. Example: ```fields=primaryContactEmail,kycState``` - will include payorId+payorName+primaryContactEmail+kycState for each Payor Default if not specified is to include only payorId and payorName. The supported fields are any combination of: primaryContactEmail,kycState 
      }
      res = @api_instance.payor_links(opts)
      expect(res.payors.length()).to be >= 0
      expect(@api_instance).to respond_to(:payor_links) 
    end
  end

end
