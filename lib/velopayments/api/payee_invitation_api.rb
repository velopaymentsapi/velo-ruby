=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class PayeeInvitationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Initiate Payee Creation
    # <p>Use v4 instead</p> Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body. In addition to standard semantic validations, a 400 will also result if there is a duplicate remote id within the batch / if there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch). The validation at this stage is intra-batch only. Validation against payees who have already been invited occurs subsequently during processing of the batch. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequestV3] :create_payees_request_v3 Post payees to create.
    # @return [CreatePayeesCSVResponseV3]
    def create_payee_v3(opts = {})
      data, _status_code, _headers = create_payee_v3_with_http_info(opts)
      data
    end

    # Initiate Payee Creation
    # &lt;p&gt;Use v4 instead&lt;/p&gt; Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body. In addition to standard semantic validations, a 400 will also result if there is a duplicate remote id within the batch / if there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch). The validation at this stage is intra-batch only. Validation against payees who have already been invited occurs subsequently during processing of the batch. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequestV3] :create_payees_request_v3 Post payees to create.
    # @return [Array<(CreatePayeesCSVResponseV3, Integer, Hash)>] CreatePayeesCSVResponseV3 data, response status code and response headers
    def create_payee_v3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.create_payee_v3 ...'
      end
      # resource path
      local_var_path = '/v3/payees'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_payees_request_v3'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreatePayeesCSVResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.create_payee_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#create_payee_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payee Invitation Status
    # <p>Use v4 instead</p> <p>Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.</p> 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [String] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @return [PagedPayeeInvitationStatusResponseV3]
    def get_payees_invitation_status_v3(payor_id, opts = {})
      data, _status_code, _headers = get_payees_invitation_status_v3_with_http_info(payor_id, opts)
      data
    end

    # Get Payee Invitation Status
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.&lt;/p&gt; 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [String] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @return [Array<(PagedPayeeInvitationStatusResponseV3, Integer, Hash)>] PagedPayeeInvitationStatusResponseV3 data, response status code and response headers
    def get_payees_invitation_status_v3_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.get_payees_invitation_status_v3 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeeInvitationApi.get_payees_invitation_status_v3"
      end
      # resource path
      local_var_path = '/v3/payees/payors/{payorId}/invitationStatus'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payeeId'] = opts[:'payee_id'] if !opts[:'payee_id'].nil?
      query_params[:'invitationStatus'] = opts[:'invitation_status'] if !opts[:'invitation_status'].nil?
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
      return_type = opts[:debug_return_type] || 'PagedPayeeInvitationStatusResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.get_payees_invitation_status_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#get_payees_invitation_status_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payee Invitation Status
    # Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [String] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @return [PagedPayeeInvitationStatusResponseV4]
    def get_payees_invitation_status_v4(payor_id, opts = {})
      data, _status_code, _headers = get_payees_invitation_status_v4_with_http_info(payor_id, opts)
      data
    end

    # Get Payee Invitation Status
    # Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [String] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @return [Array<(PagedPayeeInvitationStatusResponseV4, Integer, Hash)>] PagedPayeeInvitationStatusResponseV4 data, response status code and response headers
    def get_payees_invitation_status_v4_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.get_payees_invitation_status_v4 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeeInvitationApi.get_payees_invitation_status_v4"
      end
      # resource path
      local_var_path = '/v4/payees/payors/{payorId}/invitationStatus'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payeeId'] = opts[:'payee_id'] if !opts[:'payee_id'].nil?
      query_params[:'invitationStatus'] = opts[:'invitation_status'] if !opts[:'invitation_status'].nil?
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
      return_type = opts[:debug_return_type] || 'PagedPayeeInvitationStatusResponseV4'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.get_payees_invitation_status_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#get_payees_invitation_status_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query Batch Status
    # <p>Use v4 instead</p> Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [QueryBatchResponseV3]
    def query_batch_status_v3(batch_id, opts = {})
      data, _status_code, _headers = query_batch_status_v3_with_http_info(batch_id, opts)
      data
    end

    # Query Batch Status
    # &lt;p&gt;Use v4 instead&lt;/p&gt; Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryBatchResponseV3, Integer, Hash)>] QueryBatchResponseV3 data, response status code and response headers
    def query_batch_status_v3_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.query_batch_status_v3 ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling PayeeInvitationApi.query_batch_status_v3"
      end
      # resource path
      local_var_path = '/v3/payees/batch/{batchId}'.sub('{' + 'batchId' + '}', CGI.escape(batch_id.to_s))

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
      return_type = opts[:debug_return_type] || 'QueryBatchResponseV3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.query_batch_status_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#query_batch_status_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query Batch Status
    # Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [QueryBatchResponseV4]
    def query_batch_status_v4(batch_id, opts = {})
      data, _status_code, _headers = query_batch_status_v4_with_http_info(batch_id, opts)
      data
    end

    # Query Batch Status
    # Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryBatchResponseV4, Integer, Hash)>] QueryBatchResponseV4 data, response status code and response headers
    def query_batch_status_v4_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.query_batch_status_v4 ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling PayeeInvitationApi.query_batch_status_v4"
      end
      # resource path
      local_var_path = '/v4/payees/batch/{batchId}'.sub('{' + 'batchId' + '}', CGI.escape(batch_id.to_s))

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
      return_type = opts[:debug_return_type] || 'QueryBatchResponseV4'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.query_batch_status_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#query_batch_status_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend Payee Invite
    # <p>Use v4 instead</p> <p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request_v3 [InvitePayeeRequestV3] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_payee_invite_v3(payee_id, invite_payee_request_v3, opts = {})
      resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request_v3, opts)
      nil
    end

    # Resend Payee Invite
    # &lt;p&gt;Use v4 instead&lt;/p&gt; &lt;p&gt;Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined&lt;/p&gt; &lt;p&gt;Any previous invites to the payee by this Payor will be invalidated&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request_v3 [InvitePayeeRequestV3] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request_v3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.resend_payee_invite_v3 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeeInvitationApi.resend_payee_invite_v3"
      end
      # verify the required parameter 'invite_payee_request_v3' is set
      if @api_client.config.client_side_validation && invite_payee_request_v3.nil?
        fail ArgumentError, "Missing the required parameter 'invite_payee_request_v3' when calling PayeeInvitationApi.resend_payee_invite_v3"
      end
      # resource path
      local_var_path = '/v3/payees/{payeeId}/invite'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invite_payee_request_v3)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.resend_payee_invite_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#resend_payee_invite_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend Payee Invite
    # <p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request_v4 [InvitePayeeRequestV4] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_payee_invite_v4(payee_id, invite_payee_request_v4, opts = {})
      resend_payee_invite_v4_with_http_info(payee_id, invite_payee_request_v4, opts)
      nil
    end

    # Resend Payee Invite
    # &lt;p&gt;Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined&lt;/p&gt; &lt;p&gt;Any previous invites to the payee by this Payor will be invalidated&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request_v4 [InvitePayeeRequestV4] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def resend_payee_invite_v4_with_http_info(payee_id, invite_payee_request_v4, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.resend_payee_invite_v4 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeeInvitationApi.resend_payee_invite_v4"
      end
      # verify the required parameter 'invite_payee_request_v4' is set
      if @api_client.config.client_side_validation && invite_payee_request_v4.nil?
        fail ArgumentError, "Missing the required parameter 'invite_payee_request_v4' when calling PayeeInvitationApi.resend_payee_invite_v4"
      end
      # resource path
      local_var_path = '/v4/payees/{payeeId}/invite'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invite_payee_request_v4)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.resend_payee_invite_v4",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#resend_payee_invite_v4\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate Payee Creation
    # <p>Initiate the process of creating 1 to 2000 payees in a batch</p> <p>Use the batchId in the response to query for status.</p> <p>In addition to standard semantic validations, a 400 will also result if: </p> <ul> <li>there is a duplicate remote id within the batch</li> <li>there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch).</li> </ul> <p>The validation at this stage is intra-batch only.</p> <p>Validation against payees who have already been invited occurs subsequently during processing of the batch.</p> 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequestV4] :create_payees_request_v4 Post payees to create.
    # @return [CreatePayeesCSVResponseV4]
    def v4_create_payee(opts = {})
      data, _status_code, _headers = v4_create_payee_with_http_info(opts)
      data
    end

    # Initiate Payee Creation
    # &lt;p&gt;Initiate the process of creating 1 to 2000 payees in a batch&lt;/p&gt; &lt;p&gt;Use the batchId in the response to query for status.&lt;/p&gt; &lt;p&gt;In addition to standard semantic validations, a 400 will also result if: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;there is a duplicate remote id within the batch&lt;/li&gt; &lt;li&gt;there is a duplicate email within the batch, i.e. if there is a conflict between the data provided for one payee within the batch and that provided for another payee within the same batch).&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The validation at this stage is intra-batch only.&lt;/p&gt; &lt;p&gt;Validation against payees who have already been invited occurs subsequently during processing of the batch.&lt;/p&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequestV4] :create_payees_request_v4 Post payees to create.
    # @return [Array<(CreatePayeesCSVResponseV4, Integer, Hash)>] CreatePayeesCSVResponseV4 data, response status code and response headers
    def v4_create_payee_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.v4_create_payee ...'
      end
      # resource path
      local_var_path = '/v4/payees'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_payees_request_v4'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreatePayeesCSVResponseV4'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PayeeInvitationApi.v4_create_payee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#v4_create_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
