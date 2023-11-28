=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class PayoutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a quote for the payout
    # Create quote for a payout
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [QuoteResponseV3]
    def create_quote_for_payout_v3(payout_id, opts = {})
      data, _status_code, _headers = create_quote_for_payout_v3_with_http_info(payout_id, opts)
      data
    end

    # Create a quote for the payout
    # Create quote for a payout
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [Array<(QuoteResponseV3, Integer, Hash)>] QuoteResponseV3 data, response status code and response headers
    def create_quote_for_payout_v3_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.create_quote_for_payout_v3 ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.create_quote_for_payout_v3"
      end
      # resource path
      local_var_path = '/v3/payouts/{payoutId}/quote'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'QuoteResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.create_quote_for_payout_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#create_quote_for_payout_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deschedule a payout
    # Remove the schedule for a scheduled payout
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def deschedule_payout(payout_id, opts = {})
      deschedule_payout_with_http_info(payout_id, opts)
      nil
    end

    # Deschedule a payout
    # Remove the schedule for a scheduled payout
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def deschedule_payout_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.deschedule_payout ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.deschedule_payout"
      end
      # resource path
      local_var_path = '/v3/payouts/{payoutId}/schedule'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.deschedule_payout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#deschedule_payout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve payments for a payout
    # Retrieve payments for a payout
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Payment Status * ACCEPTED: any payment which was accepted at submission time (status may have changed since) * REJECTED: any payment rejected by initial submission processing * WITHDRAWN: any payment which has been withdrawn * WITHDRAWABLE: any payment eligible for withdrawal 
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :payor_payment_id Payor&#39;s Id of the Payment
    # @option opts [String] :source_account_name Physical Account Name
    # @option opts [String] :transmission_type Transmission Type * ACH * SAME_DAY_ACH * WIRE 
    # @option opts [String] :payment_memo Payment Memo of the Payment
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @return [PagedPaymentsResponseV3]
    def get_payments_for_payout_v3(payout_id, opts = {})
      data, _status_code, _headers = get_payments_for_payout_v3_with_http_info(payout_id, opts)
      data
    end

    # Retrieve payments for a payout
    # Retrieve payments for a payout
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Payment Status * ACCEPTED: any payment which was accepted at submission time (status may have changed since) * REJECTED: any payment rejected by initial submission processing * WITHDRAWN: any payment which has been withdrawn * WITHDRAWABLE: any payment eligible for withdrawal 
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :payor_payment_id Payor&#39;s Id of the Payment
    # @option opts [String] :source_account_name Physical Account Name
    # @option opts [String] :transmission_type Transmission Type * ACH * SAME_DAY_ACH * WIRE 
    # @option opts [String] :payment_memo Payment Memo of the Payment
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @return [Array<(PagedPaymentsResponseV3, Integer, Hash)>] PagedPaymentsResponseV3 data, response status code and response headers
    def get_payments_for_payout_v3_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.get_payments_for_payout_v3 ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.get_payments_for_payout_v3"
      end
      allowable_values = ["ACCEPTED", "REJECTED", "WITHDRAWN", "WITHDRAWABLE"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PayoutsApi.get_payments_for_payout_v3, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PayoutsApi.get_payments_for_payout_v3, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v3/payouts/{payoutId}/payments'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'remoteId'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'payorPaymentId'] = opts[:'payor_payment_id'] if !opts[:'payor_payment_id'].nil?
      query_params[:'sourceAccountName'] = opts[:'source_account_name'] if !opts[:'source_account_name'].nil?
      query_params[:'transmissionType'] = opts[:'transmission_type'] if !opts[:'transmission_type'].nil?
      query_params[:'paymentMemo'] = opts[:'payment_memo'] if !opts[:'payment_memo'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PagedPaymentsResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.get_payments_for_payout_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#get_payments_for_payout_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payout Summary
    # Get payout summary - returns the current state of the payout.
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [PayoutSummaryResponseV3]
    def get_payout_summary_v3(payout_id, opts = {})
      data, _status_code, _headers = get_payout_summary_v3_with_http_info(payout_id, opts)
      data
    end

    # Get Payout Summary
    # Get payout summary - returns the current state of the payout.
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayoutSummaryResponseV3, Integer, Hash)>] PayoutSummaryResponseV3 data, response status code and response headers
    def get_payout_summary_v3_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.get_payout_summary_v3 ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.get_payout_summary_v3"
      end
      # resource path
      local_var_path = '/v3/payouts/{payoutId}'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PayoutSummaryResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.get_payout_summary_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#get_payout_summary_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Instruct Payout
    # Instruct a payout to be made for the specified payoutId.
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @option opts [InstructPayoutRequestV3] :instruct_payout_request_v3 Additional instruct payout parameters
    # @return [nil]
    def instruct_payout_v3(payout_id, opts = {})
      instruct_payout_v3_with_http_info(payout_id, opts)
      nil
    end

    # Instruct Payout
    # Instruct a payout to be made for the specified payoutId.
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @option opts [InstructPayoutRequestV3] :instruct_payout_request_v3 Additional instruct payout parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def instruct_payout_v3_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.instruct_payout_v3 ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.instruct_payout_v3"
      end
      # resource path
      local_var_path = '/v3/payouts/{payoutId}'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'instruct_payout_request_v3'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.instruct_payout_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#instruct_payout_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Schedule a payout
    # <p>Schedule a payout for auto-instruction in the future or update existing payout schedule if the payout has been scheduled before.</p> 
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @option opts [SchedulePayoutRequestV3] :schedule_payout_request_v3 schedule payout parameters
    # @return [nil]
    def schedule_for_payout(payout_id, opts = {})
      schedule_for_payout_with_http_info(payout_id, opts)
      nil
    end

    # Schedule a payout
    # &lt;p&gt;Schedule a payout for auto-instruction in the future or update existing payout schedule if the payout has been scheduled before.&lt;/p&gt; 
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @option opts [SchedulePayoutRequestV3] :schedule_payout_request_v3 schedule payout parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def schedule_for_payout_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.schedule_for_payout ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.schedule_for_payout"
      end
      # resource path
      local_var_path = '/v3/payouts/{payoutId}/schedule'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'schedule_payout_request_v3'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.schedule_for_payout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#schedule_for_payout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit Payout
    # <p>Create a new payout and return a location header with a link to the payout</p> <p>Basic validation of the payout is performed before returning but more comprehensive validation is done asynchronously</p> <p>The results can be obtained by issuing a HTTP GET to the URL returned in the location header</p> <p>**NOTE:** amount values in payments must be in 'minor units' format. E.g. cents for USD, pence for GBP etc with no decimal places</p> 
    # @param create_payout_request_v3 [CreatePayoutRequestV3] Post amount to transfer using stored funding account details.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def submit_payout_v3(create_payout_request_v3, opts = {})
      submit_payout_v3_with_http_info(create_payout_request_v3, opts)
      nil
    end

    # Submit Payout
    # &lt;p&gt;Create a new payout and return a location header with a link to the payout&lt;/p&gt; &lt;p&gt;Basic validation of the payout is performed before returning but more comprehensive validation is done asynchronously&lt;/p&gt; &lt;p&gt;The results can be obtained by issuing a HTTP GET to the URL returned in the location header&lt;/p&gt; &lt;p&gt;**NOTE:** amount values in payments must be in &#39;minor units&#39; format. E.g. cents for USD, pence for GBP etc with no decimal places&lt;/p&gt; 
    # @param create_payout_request_v3 [CreatePayoutRequestV3] Post amount to transfer using stored funding account details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def submit_payout_v3_with_http_info(create_payout_request_v3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.submit_payout_v3 ...'
      end
      # verify the required parameter 'create_payout_request_v3' is set
      if @api_client.config.client_side_validation && create_payout_request_v3.nil?
        fail ArgumentError, "Missing the required parameter 'create_payout_request_v3' when calling PayoutsApi.submit_payout_v3"
      end
      # resource path
      local_var_path = '/v3/payouts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_payout_request_v3)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.submit_payout_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#submit_payout_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Withdraw a Payment
    # <p>withdraw a payment </p> <p>There are a variety of reasons why this can fail</p> <ul>     <li>the payment must be in a state of 'accepted' or 'unfunded'</li>     <li>the payout must not be in a state of 'instructed'</li> </ul> 
    # @param payment_id [String] Id of the Payment
    # @param withdraw_payment_request [WithdrawPaymentRequest] details for withdrawal
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def withdraw_payment(payment_id, withdraw_payment_request, opts = {})
      withdraw_payment_with_http_info(payment_id, withdraw_payment_request, opts)
      nil
    end

    # Withdraw a Payment
    # &lt;p&gt;withdraw a payment &lt;/p&gt; &lt;p&gt;There are a variety of reasons why this can fail&lt;/p&gt; &lt;ul&gt;     &lt;li&gt;the payment must be in a state of &#39;accepted&#39; or &#39;unfunded&#39;&lt;/li&gt;     &lt;li&gt;the payout must not be in a state of &#39;instructed&#39;&lt;/li&gt; &lt;/ul&gt; 
    # @param payment_id [String] Id of the Payment
    # @param withdraw_payment_request [WithdrawPaymentRequest] details for withdrawal
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def withdraw_payment_with_http_info(payment_id, withdraw_payment_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.withdraw_payment ...'
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling PayoutsApi.withdraw_payment"
      end
      # verify the required parameter 'withdraw_payment_request' is set
      if @api_client.config.client_side_validation && withdraw_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'withdraw_payment_request' when calling PayoutsApi.withdraw_payment"
      end
      # resource path
      local_var_path = '/v1/payments/{paymentId}/withdraw'.sub('{' + 'paymentId' + '}', CGI.escape(payment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(withdraw_payment_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.withdraw_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#withdraw_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Withdraw Payout
    # Withdraw Payout will remove the payout details from the rails but the payout will still be accessible in payout service in WITHDRAWN status.
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def withdraw_payout_v3(payout_id, opts = {})
      withdraw_payout_v3_with_http_info(payout_id, opts)
      nil
    end

    # Withdraw Payout
    # Withdraw Payout will remove the payout details from the rails but the payout will still be accessible in payout service in WITHDRAWN status.
    # @param payout_id [String] Id of the payout
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def withdraw_payout_v3_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.withdraw_payout_v3 ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutsApi.withdraw_payout_v3"
      end
      # resource path
      local_var_path = '/v3/payouts/{payoutId}'.sub('{' + 'payoutId' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.withdraw_payout_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#withdraw_payout_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
