=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.20.29

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class PayeeInvitationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Payee Invitation Status
    # <p>Returns a list of payees associated with a payor, along with invitation status and grace period end date.</p> <p>Please use V3 instead</p> 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [InvitationStatusResponse]
    def get_payees_invitation_status_v1(payor_id, opts = {})
      data, _status_code, _headers = get_payees_invitation_status_v1_with_http_info(payor_id, opts)
      data
    end

    # Get Payee Invitation Status
    # &lt;p&gt;Returns a list of payees associated with a payor, along with invitation status and grace period end date.&lt;/p&gt; &lt;p&gt;Please use V3 instead&lt;/p&gt; 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvitationStatusResponse, Integer, Hash)>] InvitationStatusResponse data, response status code and response headers
    def get_payees_invitation_status_v1_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.get_payees_invitation_status_v1 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeeInvitationApi.get_payees_invitation_status_v1"
      end
      # resource path
      local_var_path = '/v1/payees/payors/{payorId}/invitationStatus'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InvitationStatusResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#get_payees_invitation_status_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payee Invitation Status
    # <p>Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.</p> <p>Please use V3 instead</p> 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [InvitationStatus] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @return [PagedPayeeInvitationStatusResponse]
    def get_payees_invitation_status_v2(payor_id, opts = {})
      data, _status_code, _headers = get_payees_invitation_status_v2_with_http_info(payor_id, opts)
      data
    end

    # Get Payee Invitation Status
    # &lt;p&gt;Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date.&lt;/p&gt; &lt;p&gt;Please use V3 instead&lt;/p&gt; 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [InvitationStatus] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1.
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
    # @return [Array<(PagedPayeeInvitationStatusResponse, Integer, Hash)>] PagedPayeeInvitationStatusResponse data, response status code and response headers
    def get_payees_invitation_status_v2_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.get_payees_invitation_status_v2 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayeeInvitationApi.get_payees_invitation_status_v2"
      end
      # resource path
      local_var_path = '/v2/payees/payors/{payorId}/invitationStatus'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PagedPayeeInvitationStatusResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#get_payees_invitation_status_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payee Invitation Status
    # Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [InvitationStatus] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100. (default to 25)
    # @return [PagedPayeeInvitationStatusResponse2]
    def get_payees_invitation_status_v3(payor_id, opts = {})
      data, _status_code, _headers = get_payees_invitation_status_v3_with_http_info(payor_id, opts)
      data
    end

    # Get Payee Invitation Status
    # Returns a filtered, paginated list of payees associated with a payor, along with invitation status and grace period end date. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payee_id The UUID of the payee.
    # @option opts [InvitationStatus] :invitation_status The invitation status of the payees.
    # @option opts [Integer] :page Page number. Default is 1.
    # @option opts [Integer] :page_size Page size. Default is 25. Max allowable is 100.
    # @return [Array<(PagedPayeeInvitationStatusResponse2, Integer, Hash)>] PagedPayeeInvitationStatusResponse2 data, response status code and response headers
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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PagedPayeeInvitationStatusResponse2' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
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

    # Query Batch Status
    # <p>Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ).</p> <p>Please use V3 instead</p> 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [QueryBatchResponse]
    def query_batch_status_v2(batch_id, opts = {})
      data, _status_code, _headers = query_batch_status_v2_with_http_info(batch_id, opts)
      data
    end

    # Query Batch Status
    # &lt;p&gt;Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ).&lt;/p&gt; &lt;p&gt;Please use V3 instead&lt;/p&gt; 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryBatchResponse, Integer, Hash)>] QueryBatchResponse data, response status code and response headers
    def query_batch_status_v2_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.query_batch_status_v2 ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling PayeeInvitationApi.query_batch_status_v2"
      end
      # resource path
      local_var_path = '/v2/payees/batch/{batchId}'.sub('{' + 'batchId' + '}', CGI.escape(batch_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'QueryBatchResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#query_batch_status_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query Batch Status
    # Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [QueryBatchResponse2]
    def query_batch_status_v3(batch_id, opts = {})
      data, _status_code, _headers = query_batch_status_v3_with_http_info(batch_id, opts)
      data
    end

    # Query Batch Status
    # Fetch the status of a specific batch of payees. The batch is fully processed when status is ACCEPTED and pendingCount is 0 ( 200 - OK, 404 - batch not found ). 
    # @param batch_id [String] Batch Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryBatchResponse2, Integer, Hash)>] QueryBatchResponse2 data, response status code and response headers
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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'QueryBatchResponse2' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
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

    # Resend Payee Invite
    # <p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> <p>Deprecated. Please use v3 instead</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request [InvitePayeeRequest] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_payee_invite_v1(payee_id, invite_payee_request, opts = {})
      resend_payee_invite_v1_with_http_info(payee_id, invite_payee_request, opts)
      nil
    end

    # Resend Payee Invite
    # &lt;p&gt;Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined&lt;/p&gt; &lt;p&gt;Any previous invites to the payee by this Payor will be invalidated&lt;/p&gt; &lt;p&gt;Deprecated. Please use v3 instead&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request [InvitePayeeRequest] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def resend_payee_invite_v1_with_http_info(payee_id, invite_payee_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.resend_payee_invite_v1 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeeInvitationApi.resend_payee_invite_v1"
      end
      # verify the required parameter 'invite_payee_request' is set
      if @api_client.config.client_side_validation && invite_payee_request.nil?
        fail ArgumentError, "Missing the required parameter 'invite_payee_request' when calling PayeeInvitationApi.resend_payee_invite_v1"
      end
      # resource path
      local_var_path = '/v1/payees/{payeeId}/invite'.sub('{' + 'payeeId' + '}', CGI.escape(payee_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(invite_payee_request) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#resend_payee_invite_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend Payee Invite
    # <p>Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined</p> <p>Any previous invites to the payee by this Payor will be invalidated</p> 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request2 [InvitePayeeRequest2] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_payee_invite_v3(payee_id, invite_payee_request2, opts = {})
      resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request2, opts)
      nil
    end

    # Resend Payee Invite
    # &lt;p&gt;Resend an invite to the Payee The payee must have already been invited by the payor and not yet accepted or declined&lt;/p&gt; &lt;p&gt;Any previous invites to the payee by this Payor will be invalidated&lt;/p&gt; 
    # @param payee_id [String] The UUID of the payee.
    # @param invite_payee_request2 [InvitePayeeRequest2] Provide Payor Id in body of request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def resend_payee_invite_v3_with_http_info(payee_id, invite_payee_request2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.resend_payee_invite_v3 ...'
      end
      # verify the required parameter 'payee_id' is set
      if @api_client.config.client_side_validation && payee_id.nil?
        fail ArgumentError, "Missing the required parameter 'payee_id' when calling PayeeInvitationApi.resend_payee_invite_v3"
      end
      # verify the required parameter 'invite_payee_request2' is set
      if @api_client.config.client_side_validation && invite_payee_request2.nil?
        fail ArgumentError, "Missing the required parameter 'invite_payee_request2' when calling PayeeInvitationApi.resend_payee_invite_v3"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(invite_payee_request2) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
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

    # Initiate Payee Creation
    # Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body, 409 - if there is a duplicate remote id within the batch / if there is a duplicate email within the batch). 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequest] :create_payees_request Post payees to create.
    # @return [CreatePayeesCSVResponse]
    def v2_create_payee(opts = {})
      data, _status_code, _headers = v2_create_payee_with_http_info(opts)
      data
    end

    # Initiate Payee Creation
    # Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body, 409 - if there is a duplicate remote id within the batch / if there is a duplicate email within the batch). 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequest] :create_payees_request Post payees to create.
    # @return [Array<(CreatePayeesCSVResponse, Integer, Hash)>] CreatePayeesCSVResponse data, response status code and response headers
    def v2_create_payee_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.v2_create_payee ...'
      end
      # resource path
      local_var_path = '/v2/payees'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'create_payees_request']) 

      # return_type
      return_type = opts[:return_type] || 'CreatePayeesCSVResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#v2_create_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate Payee Creation
    # Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body, 409 - if there is a duplicate remote id within the batch / if there is a duplicate email within the batch). 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequest2] :create_payees_request2 Post payees to create.
    # @return [CreatePayeesCSVResponse2]
    def v3_create_payee(opts = {})
      data, _status_code, _headers = v3_create_payee_with_http_info(opts)
      data
    end

    # Initiate Payee Creation
    # Initiate the process of creating 1 to 2000 payees in a batch Use the response location header to query for status (201 - Created, 400 - invalid request body, 409 - if there is a duplicate remote id within the batch / if there is a duplicate email within the batch). 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayeesRequest2] :create_payees_request2 Post payees to create.
    # @return [Array<(CreatePayeesCSVResponse2, Integer, Hash)>] CreatePayeesCSVResponse2 data, response status code and response headers
    def v3_create_payee_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayeeInvitationApi.v3_create_payee ...'
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'create_payees_request2']) 

      # return_type
      return_type = opts[:return_type] || 'CreatePayeesCSVResponse2' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayeeInvitationApi#v3_create_payee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
