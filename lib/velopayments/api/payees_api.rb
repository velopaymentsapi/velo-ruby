=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class PayeesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Payee by Id
    # <p>Use v4 instead</p> <p>This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:</p> <p>* Payee ID is not found</p> <p>* If Payee has not been on-boarded</p> <p>* If Payee is in grace period</p> <p>* If Payee has existing payments</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payee_by_id_v3(payee_id, opts = {})
      delete_payee_by_id_v3_with_http_info(payee_id, opts)
      nil
    end

    # Delete Payee by Id
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:&lt;/p&gt; &lt;p&gt;* Payee ID is not found&lt;/p&gt; &lt;p&gt;* If Payee has not been on-boarded&lt;/p&gt; &lt;p&gt;* If Payee is in grace period&lt;/p&gt; &lt;p&gt;* If Payee has existing payments&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payee_by_id_v3_with_http_info(payee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.delete_payee_by_id_v3 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.delete_payee_by_id_v3"
      end
      # resource path
      local_var_path = '/v3/payees/{payeeId}'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
        :operation => :"PayeesApi.delete_payee_by_id_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#delete_payee_by_id_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Payee by Id
    # <p>This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:</p> <p>* Payee ID is not found</p> <p>* If Payee has not been on-boarded</p> <p>* If Payee is in grace period</p> <p>* If Payee has existing payments</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payee_by_id_v4(payee_id, opts = {})
      delete_payee_by_id_v4_with_http_info(payee_id, opts)
      nil
    end

    # Delete Payee by Id
    # &lt;p&gt;This API will delete Payee by Id (UUID). Deletion by ID is not allowed if:&lt;/p&gt; &lt;p&gt;* Payee ID is not found&lt;/p&gt; &lt;p&gt;* If Payee has not been on-boarded&lt;/p&gt; &lt;p&gt;* If Payee is in grace period&lt;/p&gt; &lt;p&gt;* If Payee has existing payments&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payee_by_id_v4_with_http_info(payee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.delete_payee_by_id_v4 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.delete_payee_by_id_v4"
      end
      # resource path
      local_var_path = '/v4/payees/{payeeId}'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
        :operation => :"PayeesApi.delete_payee_by_id_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#delete_payee_by_id_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payee by Id
    # <p>Use v4 instead</p> <p>Get Payee by Id</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [PayeeDetailResponseV3]
    def get_payee_by_id_v3(payee_id, opts = {})
      data, _status_code, _headers = get_payee_by_id_v3_with_http_info(payee_id, opts)
      data
    end

    # Get Payee by Id
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Get Payee by Id&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [Array<(PayeeDetailResponseV3, Integer, Hash)>] PayeeDetailResponseV3 data, response status code and response headers
    def get_payee_by_id_v3_with_http_info(payee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.get_payee_by_id_v3 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.get_payee_by_id_v3"
      end
      # resource path
      local_var_path = '/v3/payees/{payeeId}'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PayeeDetailResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.get_payee_by_id_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#get_payee_by_id_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payee by Id
    # Get Payee by Id
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [PayeeDetailResponseV4]
    def get_payee_by_id_v4(payee_id, opts = {})
      data, _status_code, _headers = get_payee_by_id_v4_with_http_info(payee_id, opts)
      data
    end

    # Get Payee by Id
    # Get Payee by Id
    # @param payee_id [String] The UUID of the payee.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive Optional. If omitted or set to false, any Personal Identifiable Information (PII) values are returned masked. If set to true, and you have permission, the PII values will be returned as their original unmasked values. 
    # @return [Array<(PayeeDetailResponseV4, Integer, Hash)>] PayeeDetailResponseV4 data, response status code and response headers
    def get_payee_by_id_v4_with_http_info(payee_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.get_payee_by_id_v4 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.get_payee_by_id_v4"
      end
      # resource path
      local_var_path = '/v4/payees/{payeeId}'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PayeeDetailResponseV4'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.get_payee_by_id_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#get_payee_by_id_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payee Changes
    # <p>Use v4 instead</p> <p>Get a paginated response listing payee changes.</p> 
    # @param payor_id [String] The Payor ID to find associated Payees
    # @param updated_since [Time] The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000. (default to 100)
    # @return [PayeeDeltaResponseV3]
    def list_payee_changes_v3(payor_id, updated_since, opts = {})
      data, _status_code, _headers = list_payee_changes_v3_with_http_info(payor_id, updated_since, opts)
      data
    end

    # List Payee Changes
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Get a paginated response listing payee changes.&lt;/p&gt; 
    # @param payor_id [String] The Payor ID to find associated Payees
    # @param updated_since [Time] The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000. (default to 100)
    # @return [Array<(PayeeDeltaResponseV3, Integer, Hash)>] PayeeDeltaResponseV3 data, response status code and response headers
    def list_payee_changes_v3_with_http_info(payor_id, updated_since, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.list_payee_changes_v3 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeesApi.list_payee_changes_v3"
      end
      # verify the required parameter 'updated_since' is set
      if @api_client.config.client_side_validation && updated_since.nil?
        fail ArgumentError, "Missing the required parameter 'updated_since' when calling PayeesApi.list_payee_changes_v3"
      end
      # resource path
      local_var_path = '/v3/payees/deltas'

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
      return_type = opts[:debug_return_type] || 'PayeeDeltaResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.list_payee_changes_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#list_payee_changes_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payee Changes
    # Get a paginated response listing payee changes (updated since a particular time) to a limited set of fields: - dbaName - displayName - email - onboardedStatus - payeeCountry - payeeId - remoteId 
    # @param payor_id [String] The Payor ID to find associated Payees
    # @param updated_since [Time] The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000. (default to 100)
    # @return [PayeeDeltaResponseV4]
    def list_payee_changes_v4(payor_id, updated_since, opts = {})
      data, _status_code, _headers = list_payee_changes_v4_with_http_info(payor_id, updated_since, opts)
      data
    end

    # List Payee Changes
    # Get a paginated response listing payee changes (updated since a particular time) to a limited set of fields: - dbaName - displayName - email - onboardedStatus - payeeCountry - payeeId - remoteId 
    # @param payor_id [String] The Payor ID to find associated Payees
    # @param updated_since [Time] The updatedSince filter in the format YYYY-MM-DDThh:mm:ss+hh:mm
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 100. Max allowable is 1000. (default to 100)
    # @return [Array<(PayeeDeltaResponseV4, Integer, Hash)>] PayeeDeltaResponseV4 data, response status code and response headers
    def list_payee_changes_v4_with_http_info(payor_id, updated_since, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.list_payee_changes_v4 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeesApi.list_payee_changes_v4"
      end
      # verify the required parameter 'updated_since' is set
      if @api_client.config.client_side_validation && updated_since.nil?
        fail ArgumentError, "Missing the required parameter 'updated_since' when calling PayeesApi.list_payee_changes_v4"
      end
      # resource path
      local_var_path = '/v4/payees/deltas'

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
      return_type = opts[:debug_return_type] || 'PayeeDeltaResponseV4'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.list_payee_changes_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#list_payee_changes_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payees
    # <p>Use v4 instead</p> Get a paginated response listing the payees for a payor. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :watchlist_status The watchlistStatus of the payees.
    # @option opts [Boolean] :disabled Payee disabled
    # @option opts [String] :onboarded_status The onboarded status of the payees.
    # @option opts [String] :email Email address
    # @option opts [String] :display_name The display name of the payees.
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :payee_type The onboarded status of the payees.
    # @option opts [String] :payee_country The country of the payee - 2 letter ISO 3166-1 country code (upper case)
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  (default to 'displayName:asc')
    # @return [PagedPayeeResponseV3]
    def list_payees_v3(payor_id, opts = {})
      data, _status_code, _headers = list_payees_v3_with_http_info(payor_id, opts)
      data
    end

    # List Payees
    # &lt;p&gt;Use v4 instead&lt;/p&gt; Get a paginated response listing the payees for a payor. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :watchlist_status The watchlistStatus of the payees.
    # @option opts [Boolean] :disabled Payee disabled
    # @option opts [String] :onboarded_status The onboarded status of the payees.
    # @option opts [String] :email Email address
    # @option opts [String] :display_name The display name of the payees.
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :payee_type The onboarded status of the payees.
    # @option opts [String] :payee_country The country of the payee - 2 letter ISO 3166-1 country code (upper case)
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  (default to 'displayName:asc')
    # @return [Array<(PagedPayeeResponseV3, Integer, Hash)>] PagedPayeeResponseV3 data, response status code and response headers
    def list_payees_v3_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.list_payees_v3 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeesApi.list_payees_v3"
      end
      pattern = Regexp.new(/[a-zA-Z]+[:desc|:asc]/)
      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"sort\"]' when calling PayeesApi.list_payees_v3, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v3/payees'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = payor_id
      query_params[:'watchlistStatus'] = opts[:'watchlist_status'] if !opts[:'watchlist_status'].nil?
      query_params[:'disabled'] = opts[:'disabled'] if !opts[:'disabled'].nil?
      query_params[:'onboardedStatus'] = opts[:'onboarded_status'] if !opts[:'onboarded_status'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'displayName'] = opts[:'display_name'] if !opts[:'display_name'].nil?
      query_params[:'remoteId'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'payeeType'] = opts[:'payee_type'] if !opts[:'payee_type'].nil?
      query_params[:'payeeCountry'] = opts[:'payee_country'] if !opts[:'payee_country'].nil?
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
      return_type = opts[:debug_return_type] || 'PagedPayeeResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.list_payees_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#list_payees_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payees
    # Get a paginated response listing the payees for a payor.
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :watchlist_status The watchlistStatus of the payees.
    # @option opts [Boolean] :disabled Payee disabled
    # @option opts [String] :onboarded_status The onboarded status of the payees.
    # @option opts [String] :email Email address
    # @option opts [String] :display_name The display name of the payees.
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :payee_type The onboarded status of the payees.
    # @option opts [String] :payee_country The country of the payee - 2 letter ISO 3166-1 country code (upper case)
    # @option opts [String] :ofac_status The ofacStatus of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  (default to 'displayName:asc')
    # @return [PagedPayeeResponseV4]
    def list_payees_v4(payor_id, opts = {})
      data, _status_code, _headers = list_payees_v4_with_http_info(payor_id, opts)
      data
    end

    # List Payees
    # Get a paginated response listing the payees for a payor.
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :watchlist_status The watchlistStatus of the payees.
    # @option opts [Boolean] :disabled Payee disabled
    # @option opts [String] :onboarded_status The onboarded status of the payees.
    # @option opts [String] :email Email address
    # @option opts [String] :display_name The display name of the payees.
    # @option opts [String] :remote_id The remote id of the payees.
    # @option opts [String] :payee_type The onboarded status of the payees.
    # @option opts [String] :payee_country The country of the payee - 2 letter ISO 3166-1 country code (upper case)
    # @option opts [String] :ofac_status The ofacStatus of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;onboardedStatus:asc,name:asc) Default is name:asc &#39;name&#39; is treated as company name for companies - last name + &#39;,&#39; + firstName for individuals The supported sort fields are - payeeId, displayName, payoutStatus, onboardedStatus.  (default to 'displayName:asc')
    # @return [Array<(PagedPayeeResponseV4, Integer, Hash)>] PagedPayeeResponseV4 data, response status code and response headers
    def list_payees_v4_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.list_payees_v4 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeesApi.list_payees_v4"
      end
      pattern = Regexp.new(/[a-zA-Z]+[:desc|:asc]/)
      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"sort\"]' when calling PayeesApi.list_payees_v4, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v4/payees'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = payor_id
      query_params[:'watchlistStatus'] = opts[:'watchlist_status'] if !opts[:'watchlist_status'].nil?
      query_params[:'disabled'] = opts[:'disabled'] if !opts[:'disabled'].nil?
      query_params[:'onboardedStatus'] = opts[:'onboarded_status'] if !opts[:'onboarded_status'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'displayName'] = opts[:'display_name'] if !opts[:'display_name'].nil?
      query_params[:'remoteId'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'payeeType'] = opts[:'payee_type'] if !opts[:'payee_type'].nil?
      query_params[:'payeeCountry'] = opts[:'payee_country'] if !opts[:'payee_country'].nil?
      query_params[:'ofacStatus'] = opts[:'ofac_status'] if !opts[:'ofac_status'].nil?
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
      return_type = opts[:debug_return_type] || 'PagedPayeeResponseV4'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.list_payees_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#list_payees_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Payee Details
    # <p>Use v4 instead</p> <p>Update payee details for the given Payee Id.<p> 
    # @param payee_id [String] The UUID of the payee.
    # @param update_payee_details_request_v3 [UpdatePayeeDetailsRequestV3] Request to update payee details
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def payee_details_update_v3(payee_id, update_payee_details_request_v3, opts = {})
      payee_details_update_v3_with_http_info(payee_id, update_payee_details_request_v3, opts)
      nil
    end

    # Update Payee Details
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Update payee details for the given Payee Id.&lt;p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param update_payee_details_request_v3 [UpdatePayeeDetailsRequestV3] Request to update payee details
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def payee_details_update_v3_with_http_info(payee_id, update_payee_details_request_v3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.payee_details_update_v3 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.payee_details_update_v3"
      end
      # verify the required parameter 'update_payee_details_request_v3' is set
      if @api_client.config.client_side_validation && update_payee_details_request_v3.nil?
        fail ArgumentError, "Missing the required parameter 'update_payee_details_request_v3' when calling PayeesApi.payee_details_update_v3"
      end
      # resource path
      local_var_path = '/v3/payees/{payeeId}/payeeDetailsUpdate'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_payee_details_request_v3)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.payee_details_update_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#payee_details_update_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Payee Details
    # <p>Update payee details for the given Payee Id.</p> <p>Payors may only update the payee details if the payee has not yet onboarded</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param update_payee_details_request_v4 [UpdatePayeeDetailsRequestV4] Request to update payee details
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def payee_details_update_v4(payee_id, update_payee_details_request_v4, opts = {})
      payee_details_update_v4_with_http_info(payee_id, update_payee_details_request_v4, opts)
      nil
    end

    # Update Payee Details
    # &lt;p&gt;Update payee details for the given Payee Id.&lt;/p&gt; &lt;p&gt;Payors may only update the payee details if the payee has not yet onboarded&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param update_payee_details_request_v4 [UpdatePayeeDetailsRequestV4] Request to update payee details
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def payee_details_update_v4_with_http_info(payee_id, update_payee_details_request_v4, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.payee_details_update_v4 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.payee_details_update_v4"
      end
      # verify the required parameter 'update_payee_details_request_v4' is set
      if @api_client.config.client_side_validation && update_payee_details_request_v4.nil?
        fail ArgumentError, "Missing the required parameter 'update_payee_details_request_v4' when calling PayeesApi.payee_details_update_v4"
      end
      # resource path
      local_var_path = '/v4/payees/{payeeId}/payeeDetailsUpdate'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_payee_details_request_v4)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.payee_details_update_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#payee_details_update_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Payee Remote Id
    # <p>Use v4 instead</p> <p>Update the remote Id for the given Payee Id.</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param update_remote_id_request_v3 [UpdateRemoteIdRequestV3] Request to update payee remote id v3
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v3_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request_v3, opts = {})
      v3_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request_v3, opts)
      nil
    end

    # Update Payee Remote Id
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Update the remote Id for the given Payee Id.&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param update_remote_id_request_v3 [UpdateRemoteIdRequestV3] Request to update payee remote id v3
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v3_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request_v3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.v3_payees_payee_id_remote_id_update_post ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.v3_payees_payee_id_remote_id_update_post"
      end
      # verify the required parameter 'update_remote_id_request_v3' is set
      if @api_client.config.client_side_validation && update_remote_id_request_v3.nil?
        fail ArgumentError, "Missing the required parameter 'update_remote_id_request_v3' when calling PayeesApi.v3_payees_payee_id_remote_id_update_post"
      end
      # resource path
      local_var_path = '/v3/payees/{payeeId}/remoteIdUpdate'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_remote_id_request_v3)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.v3_payees_payee_id_remote_id_update_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#v3_payees_payee_id_remote_id_update_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Payee Remote Id
    # <p>Update the remote Id for the given Payee Id.</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param update_remote_id_request_v4 [UpdateRemoteIdRequestV4] Request to update payee remote id v4
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v4_payees_payee_id_remote_id_update_post(payee_id, update_remote_id_request_v4, opts = {})
      v4_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request_v4, opts)
      nil
    end

    # Update Payee Remote Id
    # &lt;p&gt;Update the remote Id for the given Payee Id.&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param update_remote_id_request_v4 [UpdateRemoteIdRequestV4] Request to update payee remote id v4
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v4_payees_payee_id_remote_id_update_post_with_http_info(payee_id, update_remote_id_request_v4, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeesApi.v4_payees_payee_id_remote_id_update_post ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeesApi.v4_payees_payee_id_remote_id_update_post"
      end
      # verify the required parameter 'update_remote_id_request_v4' is set
      if @api_client.config.client_side_validation && update_remote_id_request_v4.nil?
        fail ArgumentError, "Missing the required parameter 'update_remote_id_request_v4' when calling PayeesApi.v4_payees_payee_id_remote_id_update_post"
      end
      # resource path
      local_var_path = '/v4/payees/{payeeId}/remoteIdUpdate'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_remote_id_request_v4)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeesApi.v4_payees_payee_id_remote_id_update_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeesApi#v4_payees_payee_id_remote_id_update_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
