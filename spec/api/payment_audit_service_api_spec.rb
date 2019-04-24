=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

OpenAPI spec version: 2.11.73

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for VeloPayments::PaymentAuditServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentAuditServiceApi' do
  before do
    # run before each test
    @api_instance = VeloPayments::PaymentAuditServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentAuditServiceApi' do
    it 'should create an instance of PaymentAuditServiceApi' do
      expect(@api_instance).to be_instance_of(VeloPayments::PaymentAuditServiceApi)
    end
  end

  # unit tests for export_transactions_csv
  # Export Transactions
  # Download a CSV file containing payments in a date range. Uses Transfer-Encoding - chunked to stream to the client. Date range is inclusive of both the start and end dates.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payor_id The account owner Payor ID
  # @option opts [Date] :start_date Start date, inclusive. Format is YYYY-MM-DD
  # @option opts [Date] :submitted_date_from Start date, inclusive. Format is YYYY-MM-DD
  # @return [String]
  describe 'export_transactions_csv test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fundings
  # Get Fundings for Payor
  # Get a list of Fundings for a payor. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payor_id The account owner Payor ID
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @option opts [String] :sort List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount. 
  # @return [GetFundingsResponse]
  describe 'get_fundings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_details
  # Get Payment
  # Get the payment with the given id. This contains the payment history. 
  # @param payment_id Payment Id
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [PaymentResponse]
  describe 'get_payment_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payments_for_payout
  # Get Payments for Payout
  # Get List of payments for Payout 
  # @param payout_id The id (UUID) of the payout.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :remote_id The remote id of the payees.
  # @option opts [String] :status Payment Status
  # @option opts [Integer] :source_amount_from The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom
  # @option opts [Integer] :source_amount_to The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
  # @option opts [Integer] :payment_amount_from The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom
  # @option opts [Integer] :payment_amount_to The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
  # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
  # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [GetPaymentsForPayoutResponse]
  describe 'get_payments_for_payout test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payouts_for_payor
  # Get Payouts for Payor
  # Get List of payouts for payor 
  # @param payor_id The account owner Payor ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payout_memo Payout Memo filter - case insensitive sub-string match
  # @option opts [String] :status Payout Status
  # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
  # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status. 
  # @return [GetPayoutsResponse]
  describe 'get_payouts_for_payor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_payments_audit
  # Get List of Payments
  # Get payments for the given payor Id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payee_id The UUID of the payee.
  # @option opts [String] :payor_id The account owner Payor Id. Required for external users.
  # @option opts [String] :payor_name The payor’s name. This filters via a case insensitive substring match.
  # @option opts [String] :remote_id The remote id of the payees.
  # @option opts [String] :status Payment Status
  # @option opts [String] :source_account_name The source account name filter. This filters via a case insensitive substring match.
  # @option opts [Integer] :source_amount_from The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom
  # @option opts [Integer] :source_amount_to The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
  # @option opts [String] :source_currency The source currency filter. Filters based on an exact match on the currency.
  # @option opts [Integer] :payment_amount_from The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom
  # @option opts [Integer] :payment_amount_to The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
  # @option opts [String] :payment_currency The source currency filter. Filters based on an exact match on the currency.
  # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
  # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
  # @option opts [String] :payment_memo The payment memo filter. This filters via a case insensitive substring match.
  # @option opts [Integer] :page Page number. Default is 1.
  # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
  # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
  # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
  # @return [ListPaymentsResponse]
  describe 'list_payments_audit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
