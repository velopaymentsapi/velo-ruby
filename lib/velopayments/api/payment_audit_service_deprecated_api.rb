=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class PaymentAuditServiceDeprecatedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # V3 Export Transactions
    # Deprecated (use /v4/paymentaudit/transactions instead)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payor_id The Payor ID for whom you wish to run the report. For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor. 
    # @option opts [Date] :start_date Start date, inclusive. Format is YYYY-MM-DD
    # @option opts [Date] :end_date End date, inclusive. Format is YYYY-MM-DD
    # @return [PayorAmlTransactionV3]
    def export_transactions_csvv3(opts = {})
      data, _status_code, _headers = export_transactions_csvv3_with_http_info(opts)
      data
    end

    # V3 Export Transactions
    # Deprecated (use /v4/paymentaudit/transactions instead)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payor_id The Payor ID for whom you wish to run the report. For a Payor requesting the report, this could be their exact Payor, or it could be a child/descendant Payor. 
    # @option opts [Date] :start_date Start date, inclusive. Format is YYYY-MM-DD
    # @option opts [Date] :end_date End date, inclusive. Format is YYYY-MM-DD
    # @return [Array<(PayorAmlTransactionV3, Integer, Hash)>] PayorAmlTransactionV3 data, response status code and response headers
    def export_transactions_csvv3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.export_transactions_csvv3 ...'
      end
      # resource path
      local_var_path = '/v3/paymentaudit/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = opts[:'payor_id'] if !opts[:'payor_id'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/csv', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PayorAmlTransactionV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.export_transactions_csvv3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#export_transactions_csvv3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V1 Get Fundings for Payor
    # Deprecated (use /v4/paymentaudit/fundings)
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount. 
    # @return [GetFundingsResponse]
    def get_fundings_v1(payor_id, opts = {})
      data, _status_code, _headers = get_fundings_v1_with_http_info(payor_id, opts)
      data
    end

    # V1 Get Fundings for Payor
    # Deprecated (use /v4/paymentaudit/fundings)
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields. Example: &#x60;&#x60;&#x60;?sort&#x3D;destinationCurrency:asc,destinationAmount:asc&#x60;&#x60;&#x60; Default is no sort. The supported sort fields are: dateTime and amount. 
    # @return [Array<(GetFundingsResponse, Integer, Hash)>] GetFundingsResponse data, response status code and response headers
    def get_fundings_v1_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.get_fundings_v1 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PaymentAuditServiceDeprecatedApi.get_fundings_v1"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.get_fundings_v1, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.get_fundings_v1, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/paymentaudit/fundings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = payor_id
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetFundingsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.get_fundings_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#get_fundings_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V3 Get Payment
    # Deprecated (use /v4/paymentaudit/payments/<paymentId> instead)
    # @param payment_id [String] Payment Id
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [PaymentResponseV3]
    def get_payment_details_v3(payment_id, opts = {})
      data, _status_code, _headers = get_payment_details_v3_with_http_info(payment_id, opts)
      data
    end

    # V3 Get Payment
    # Deprecated (use /v4/paymentaudit/payments/&lt;paymentId&gt; instead)
    # @param payment_id [String] Payment Id
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [Array<(PaymentResponseV3, Integer, Hash)>] PaymentResponseV3 data, response status code and response headers
    def get_payment_details_v3_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.get_payment_details_v3 ...'
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentAuditServiceDeprecatedApi.get_payment_details_v3"
      end
      # resource path
      local_var_path = '/v3/paymentaudit/payments/{paymentId}'.sub('{' + 'paymentId' + '}', CGI.escape(payment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sensitive'] = opts[:'sensitive'] if !opts[:'sensitive'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.get_payment_details_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#get_payment_details_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V3 Get Payments for Payout
    # Deprecated (use /v4/paymentaudit/payouts/<payoutId> instead)
    # @param payout_id [String] The id (UUID) of the payout.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :status Payment Status
    # @option opts [Integer] :source_amount_from The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom
    # @option opts [Integer] :source_amount_to The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
    # @option opts [Integer] :payment_amount_from The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom
    # @option opts [Integer] :payment_amount_to The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
    # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
    # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort &lt;p&gt;List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId&lt;/p&gt; &lt;p&gt;The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status&lt;/p&gt; 
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [GetPaymentsForPayoutResponseV3]
    def get_payments_for_payout_pav3(payout_id, opts = {})
      data, _status_code, _headers = get_payments_for_payout_pav3_with_http_info(payout_id, opts)
      data
    end

    # V3 Get Payments for Payout
    # Deprecated (use /v4/paymentaudit/payouts/&lt;payoutId&gt; instead)
    # @param payout_id [String] The id (UUID) of the payout.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :status Payment Status
    # @option opts [Integer] :source_amount_from The source amount from range filter. Filters for sourceAmount &gt;&#x3D; sourceAmountFrom
    # @option opts [Integer] :source_amount_to The source amount to range filter. Filters for sourceAmount ⇐ sourceAmountTo
    # @option opts [Integer] :payment_amount_from The payment amount from range filter. Filters for paymentAmount &gt;&#x3D; paymentAmountFrom
    # @option opts [Integer] :payment_amount_to The payment amount to range filter. Filters for paymentAmount ⇐ paymentAmountTo
    # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
    # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort &lt;p&gt;List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId&lt;/p&gt; &lt;p&gt;The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status&lt;/p&gt; 
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [Array<(GetPaymentsForPayoutResponseV3, Integer, Hash)>] GetPaymentsForPayoutResponseV3 data, response status code and response headers
    def get_payments_for_payout_pav3_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.get_payments_for_payout_pav3 ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PaymentAuditServiceDeprecatedApi.get_payments_for_payout_pav3"
      end
      allowable_values = ["ACCEPTED", "AWAITING_FUNDS", "FUNDED", "UNFUNDED", "BANK_PAYMENT_REQUESTED", "REJECTED", "ACCEPTED_BY_RAILS", "CONFIRMED", "FAILED", "RETURNED", "WITHDRAWN"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.get_payments_for_payout_pav3, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.get_payments_for_payout_pav3, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/paymentaudit/payouts/{payoutId}'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'remoteId'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'sourceAmountFrom'] = opts[:'source_amount_from'] if !opts[:'source_amount_from'].nil?
      query_params[:'sourceAmountTo'] = opts[:'source_amount_to'] if !opts[:'source_amount_to'].nil?
      query_params[:'paymentAmountFrom'] = opts[:'payment_amount_from'] if !opts[:'payment_amount_from'].nil?
      query_params[:'paymentAmountTo'] = opts[:'payment_amount_to'] if !opts[:'payment_amount_to'].nil?
      query_params[:'submittedDateFrom'] = opts[:'submitted_date_from'] if !opts[:'submitted_date_from'].nil?
      query_params[:'submittedDateTo'] = opts[:'submitted_date_to'] if !opts[:'submitted_date_to'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sensitive'] = opts[:'sensitive'] if !opts[:'sensitive'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetPaymentsForPayoutResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.get_payments_for_payout_pav3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#get_payments_for_payout_pav3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V1 Get Payout Statistics
    # Deprecated (Use /v4/paymentaudit/payoutStatistics)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payor_id The account owner Payor ID. Required for external users.
    # @return [GetPayoutStatistics]
    def get_payout_stats_v1(opts = {})
      data, _status_code, _headers = get_payout_stats_v1_with_http_info(opts)
      data
    end

    # V1 Get Payout Statistics
    # Deprecated (Use /v4/paymentaudit/payoutStatistics)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payor_id The account owner Payor ID. Required for external users.
    # @return [Array<(GetPayoutStatistics, Integer, Hash)>] GetPayoutStatistics data, response status code and response headers
    def get_payout_stats_v1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.get_payout_stats_v1 ...'
      end
      # resource path
      local_var_path = '/v1/paymentaudit/payoutStatistics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = opts[:'payor_id'] if !opts[:'payor_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetPayoutStatistics'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.get_payout_stats_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#get_payout_stats_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V3 Get Payouts for Payor
    # Deprecated (use /v4/paymentaudit/payouts instead)
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payout_memo Payout Memo filter - case insensitive sub-string match
    # @option opts [String] :status Payout Status
    # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
    # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status. 
    # @return [GetPayoutsResponseV3]
    def get_payouts_for_payor_v3(payor_id, opts = {})
      data, _status_code, _headers = get_payouts_for_payor_v3_with_http_info(payor_id, opts)
      data
    end

    # V3 Get Payouts for Payor
    # Deprecated (use /v4/paymentaudit/payouts instead)
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payout_memo Payout Memo filter - case insensitive sub-string match
    # @option opts [String] :status Payout Status
    # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
    # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,instructedDateTime:asc,status:asc) Default is submittedDateTime:asc The supported sort fields are: submittedDateTime, instructedDateTime, status. 
    # @return [Array<(GetPayoutsResponseV3, Integer, Hash)>] GetPayoutsResponseV3 data, response status code and response headers
    def get_payouts_for_payor_v3_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.get_payouts_for_payor_v3 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PaymentAuditServiceDeprecatedApi.get_payouts_for_payor_v3"
      end
      allowable_values = ["ACCEPTED", "REJECTED", "SUBMITTED", "QUOTED", "INSTRUCTED", "COMPLETED", "INCOMPLETE", "CONFIRMED", "WITHDRAWN"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.get_payouts_for_payor_v3, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.get_payouts_for_payor_v3, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/paymentaudit/payouts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = payor_id
      query_params[:'payoutMemo'] = opts[:'payout_memo'] if !opts[:'payout_memo'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'submittedDateFrom'] = opts[:'submitted_date_from'] if !opts[:'submitted_date_from'].nil?
      query_params[:'submittedDateTo'] = opts[:'submitted_date_to'] if !opts[:'submitted_date_to'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetPayoutsResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.get_payouts_for_payor_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#get_payouts_for_payor_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V1 List Payment Changes
    # Deprecated (use /v4/payments/deltas instead)
    # @param payor_id [String] The Payor ID to find associated Payments
    # @param updated_since [Time] The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 100)
    # @return [PaymentDeltaResponseV1]
    def list_payment_changes(payor_id, updated_since, opts = {})
      data, _status_code, _headers = list_payment_changes_with_http_info(payor_id, updated_since, opts)
      data
    end

    # V1 List Payment Changes
    # Deprecated (use /v4/payments/deltas instead)
    # @param payor_id [String] The Payor ID to find associated Payments
    # @param updated_since [Time] The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 100)
    # @return [Array<(PaymentDeltaResponseV1, Integer, Hash)>] PaymentDeltaResponseV1 data, response status code and response headers
    def list_payment_changes_with_http_info(payor_id, updated_since, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.list_payment_changes ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PaymentAuditServiceDeprecatedApi.list_payment_changes"
      end
      # verify the required parameter 'updated_since' is set
      if @api_client.config.client_side_validation && updated_since.nil?
        fail ArgumentError, "Missing the required parameter 'updated_since' when calling PaymentAuditServiceDeprecatedApi.list_payment_changes"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.list_payment_changes, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.list_payment_changes, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/deltas/payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = payor_id
      query_params[:'updatedSince'] = updated_since
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentDeltaResponseV1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.list_payment_changes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#list_payment_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # V3 Get List of Payments
    # Deprecated (use /v4/paymentaudit/payments instead)
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
    # @option opts [String] :payment_currency The payment currency filter. Filters based on an exact match on the currency.
    # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
    # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
    # @option opts [String] :payment_memo The payment memo filter. This filters via a case insensitive substring match.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [ListPaymentsResponseV3]
    def list_payments_audit_v3(opts = {})
      data, _status_code, _headers = list_payments_audit_v3_with_http_info(opts)
      data
    end

    # V3 Get List of Payments
    # Deprecated (use /v4/paymentaudit/payments instead)
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
    # @option opts [String] :payment_currency The payment currency filter. Filters based on an exact match on the currency.
    # @option opts [Date] :submitted_date_from The submitted date from range filter. Format is yyyy-MM-dd.
    # @option opts [Date] :submitted_date_to The submitted date to range filter. Format is yyyy-MM-dd.
    # @option opts [String] :payment_memo The payment memo filter. This filters via a case insensitive substring match.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;submittedDateTime:asc,status:asc). Default is sort by remoteId The supported sort fields are: sourceAmount, sourceCurrency, paymentAmount, paymentCurrency, routingNumber, accountNumber, remoteId, submittedDateTime and status 
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [Array<(ListPaymentsResponseV3, Integer, Hash)>] ListPaymentsResponseV3 data, response status code and response headers
    def list_payments_audit_v3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentAuditServiceDeprecatedApi.list_payments_audit_v3 ...'
      end
      allowable_values = ["ACCEPTED", "AWAITING_FUNDS", "FUNDED", "UNFUNDED", "BANK_PAYMENT_REQUESTED", "REJECTED", "ACCEPTED_BY_RAILS", "CONFIRMED", "FAILED", "RETURNED", "WITHDRAWN"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.list_payments_audit_v3, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PaymentAuditServiceDeprecatedApi.list_payments_audit_v3, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/paymentaudit/payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payeeId'] = opts[:'payee_id'] if !opts[:'payee_id'].nil?
      query_params[:'payorId'] = opts[:'payor_id'] if !opts[:'payor_id'].nil?
      query_params[:'payorName'] = opts[:'payor_name'] if !opts[:'payor_name'].nil?
      query_params[:'remoteId'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'sourceAccountName'] = opts[:'source_account_name'] if !opts[:'source_account_name'].nil?
      query_params[:'sourceAmountFrom'] = opts[:'source_amount_from'] if !opts[:'source_amount_from'].nil?
      query_params[:'sourceAmountTo'] = opts[:'source_amount_to'] if !opts[:'source_amount_to'].nil?
      query_params[:'sourceCurrency'] = opts[:'source_currency'] if !opts[:'source_currency'].nil?
      query_params[:'paymentAmountFrom'] = opts[:'payment_amount_from'] if !opts[:'payment_amount_from'].nil?
      query_params[:'paymentAmountTo'] = opts[:'payment_amount_to'] if !opts[:'payment_amount_to'].nil?
      query_params[:'paymentCurrency'] = opts[:'payment_currency'] if !opts[:'payment_currency'].nil?
      query_params[:'submittedDateFrom'] = opts[:'submitted_date_from'] if !opts[:'submitted_date_from'].nil?
      query_params[:'submittedDateTo'] = opts[:'submitted_date_to'] if !opts[:'submitted_date_to'].nil?
      query_params[:'paymentMemo'] = opts[:'payment_memo'] if !opts[:'payment_memo'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sensitive'] = opts[:'sensitive'] if !opts[:'sensitive'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListPaymentsResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PaymentAuditServiceDeprecatedApi.list_payments_audit_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentAuditServiceDeprecatedApi#list_payments_audit_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
