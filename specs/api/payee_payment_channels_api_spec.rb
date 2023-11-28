=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for VeloPayments::PayeePaymentChannelsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayeePaymentChannelsApi' do
  before do
    # run before each test
    @api_instance = VeloPayments::PayeePaymentChannelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayeePaymentChannelsApi' do
    it 'should create an instance of PayeePaymentChannelsApi' do
      expect(@api_instance).to be_instance_of(VeloPayments::PayeePaymentChannelsApi)
    end
  end

  # unit tests for create_payment_channel_v4
  # Create Payment Channel
  # &lt;p&gt;Create a payment channel&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param create_payment_channel_request_v4 Post payment channel to update
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_payment_channel_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_payment_channel_v4
  # Delete Payment Channel
  # &lt;p&gt;Delete a payees payment channel&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param payment_channel_id The UUID of the payment channel.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payment_channel_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for enable_payment_channel_v4
  # Enable Payment Channel
  # &lt;p&gt;Enable a payment channel for a payee&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param payment_channel_id The UUID of the payment channel.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'enable_payment_channel_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payment_channel_v4
  # Get Payment Channel Details
  # &lt;p&gt;Get the payment channel details for the payee&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param payment_channel_id The UUID of the payment channel.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :payable payable if true only return the payment channel if the payee is payable
  # @option opts [Boolean] :sensitive &lt;p&gt;Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked.&lt;/p&gt; &lt;p&gt;If set to true, and you have permission, the PII values will be returned as their original unmasked values.&lt;/p&gt; 
  # @return [PaymentChannelResponseV4]
  describe 'get_payment_channel_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payment_channels_v4
  # Get All Payment Channels Details
  # &lt;p&gt;Get all payment channels details for a payee&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payor_id &lt;p&gt;(UUID) the id of the Payor.&lt;/p&gt; &lt;p&gt;If specified the payment channels are filtered to those mapped to this payor.&lt;/p&gt; 
  # @option opts [Boolean] :payable payable if true only return the payment channel if the payee is payable
  # @option opts [Boolean] :sensitive &lt;p&gt;Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked.&lt;/p&gt; &lt;p&gt;If set to true, and you have permission, the PII values will be returned as their original unmasked values.&lt;/p&gt; 
  # @option opts [Boolean] :ignore_payor_invite_status payable if true only return the payment channel if the payee is payable
  # @return [PaymentChannelsResponseV4]
  describe 'get_payment_channels_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_payment_channel_order_v4
  # Update Payees preferred Payment Channel order
  # &lt;p&gt;Update the Payee&#39;s preferred order of payment channels by passing in just the payment channel ids. When payments are made to the payee then in the absence of any other rules (e.g. matching on currency) the first payment channel in this list will be chosen. &lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param payment_channel_order_request_v4 Put the payment channel ids in the preferred order
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_payment_channel_order_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_payment_channel_v4
  # Update Payment Channel
  # &lt;p&gt;Update the details of the payment channel. Note payment channels are immutable. The current payment channel will be logically deleted as part of this call and replaced with new one with the correct details; this endpoint will return a Location header with a link to the new payment channel upon success. Updating a currently disabled payment channel will result in a new, fully enabled, payment channel.&lt;/p&gt; 
  # @param payee_id The UUID of the payee.
  # @param payment_channel_id The UUID of the payment channel.
  # @param update_payment_channel_request_v4 Post payment channel to update
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_payment_channel_v4 test' do
    skip "skipping test" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
