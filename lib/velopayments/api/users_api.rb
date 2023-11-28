=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a User
    # Delete User by Id. 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user_by_id_v2(user_id, opts = {})
      delete_user_by_id_v2_with_http_info(user_id, opts)
      nil
    end

    # Delete a User
    # Delete User by Id. 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_user_by_id_v2_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user_by_id_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.delete_user_by_id_v2"
      end
      # resource path
      local_var_path = '/v2/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.delete_user_by_id_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user_by_id_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable a User
    # <p>If a user is enabled this endpoint will disable them </p> <p>The invoker must have the appropriate permission </p> <p>A user cannot disable themself </p> <p>When a user is disabled any active access tokens will be revoked and the user will not be able to log in</p> 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disable_user_v2(user_id, opts = {})
      disable_user_v2_with_http_info(user_id, opts)
      nil
    end

    # Disable a User
    # &lt;p&gt;If a user is enabled this endpoint will disable them &lt;/p&gt; &lt;p&gt;The invoker must have the appropriate permission &lt;/p&gt; &lt;p&gt;A user cannot disable themself &lt;/p&gt; &lt;p&gt;When a user is disabled any active access tokens will be revoked and the user will not be able to log in&lt;/p&gt; 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_user_v2_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.disable_user_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.disable_user_v2"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/disable'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.disable_user_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#disable_user_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable a User
    # <p>If a user has been disabled this endpoints will enable them </p> <p>The invoker must have the appropriate permission </p> <p>A user cannot enable themself </p> <p>If the user is a payor user and the payor is disabled this operation is not allowed</p> <p>If enabling a payor user would breach the limit for master admin payor users the request will be rejected </p> 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def enable_user_v2(user_id, opts = {})
      enable_user_v2_with_http_info(user_id, opts)
      nil
    end

    # Enable a User
    # &lt;p&gt;If a user has been disabled this endpoints will enable them &lt;/p&gt; &lt;p&gt;The invoker must have the appropriate permission &lt;/p&gt; &lt;p&gt;A user cannot enable themself &lt;/p&gt; &lt;p&gt;If the user is a payor user and the payor is disabled this operation is not allowed&lt;/p&gt; &lt;p&gt;If enabling a payor user would breach the limit for master admin payor users the request will be rejected &lt;/p&gt; 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def enable_user_v2_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.enable_user_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.enable_user_v2"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/enable'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.enable_user_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#enable_user_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Self
    # Get the user's details 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def get_self(opts = {})
      data, _status_code, _headers = get_self_with_http_info(opts)
      data
    end

    # Get Self
    # Get the user&#39;s details 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_self_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_self ...'
      end
      # resource path
      local_var_path = '/v2/users/self'

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.get_self",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get User
    # Get a Single User by Id. 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def get_user_by_id_v2(user_id, opts = {})
      data, _status_code, _headers = get_user_by_id_v2_with_http_info(user_id, opts)
      data
    end

    # Get User
    # Get a Single User by Id. 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_by_id_v2_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_by_id_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user_by_id_v2"
      end
      # resource path
      local_var_path = '/v2/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user_by_id_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_by_id_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invite a User
    # Create a User and invite them to the system 
    # @param invite_user_request [InviteUserRequest] Details of User to invite
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def invite_user(invite_user_request, opts = {})
      invite_user_with_http_info(invite_user_request, opts)
      nil
    end

    # Invite a User
    # Create a User and invite them to the system 
    # @param invite_user_request [InviteUserRequest] Details of User to invite
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def invite_user_with_http_info(invite_user_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.invite_user ...'
      end
      # verify the required parameter 'invite_user_request' is set
      if @api_client.config.client_side_validation && invite_user_request.nil?
        fail ArgumentError, "Missing the required parameter 'invite_user_request' when calling UsersApi.invite_user"
      end
      # resource path
      local_var_path = '/v2/users/invite'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invite_user_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.invite_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#invite_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Users
    # Get a paginated response listing the Users
    # @param [Hash] opts the optional parameters
    # @option opts [UserType] :type The Type of the User.
    # @option opts [UserStatus] :status The status of the User.
    # @option opts [String] :entity_id The entityId of the User.
    # @option opts [PayeeType] :payee_type The Type of the Payee entity. Either COMPANY or INDIVIDUAL.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;email:asc,lastName:asc) Default is email:asc &#39;name&#39; The supported sort fields are - email, lastNmae.  (default to 'email:asc')
    # @return [PagedUserResponse]
    def list_users(opts = {})
      data, _status_code, _headers = list_users_with_http_info(opts)
      data
    end

    # List Users
    # Get a paginated response listing the Users
    # @param [Hash] opts the optional parameters
    # @option opts [UserType] :type The Type of the User.
    # @option opts [UserStatus] :status The status of the User.
    # @option opts [String] :entity_id The entityId of the User.
    # @option opts [PayeeType] :payee_type The Type of the Payee entity. Either COMPANY or INDIVIDUAL.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;email:asc,lastName:asc) Default is email:asc &#39;name&#39; The supported sort fields are - email, lastNmae.  (default to 'email:asc')
    # @return [Array<(PagedUserResponse, Integer, Hash)>] PagedUserResponse data, response status code and response headers
    def list_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_users ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling UsersApi.list_users, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling UsersApi.list_users, must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/[a-zA-Z]+[:desc|:asc]/)
      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"sort\"]' when calling UsersApi.list_users, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v2/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?
      query_params[:'payeeType'] = opts[:'payee_type'] if !opts[:'payee_type'].nil?
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
      return_type = opts[:debug_return_type] || 'PagedUserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.list_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register SMS Number
    # <p>Register an Sms number and send an OTP to it </p> <p>Used for manual verification of a user </p> <p>The backoffice user initiates the request to send the OTP to the user's sms </p> <p>The user then reads back the OTP which the backoffice user enters in the verifactionCode property for requests that require it</p> 
    # @param register_sms_request [RegisterSmsRequest] a SMS Number to send an OTP to
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def register_sms(register_sms_request, opts = {})
      register_sms_with_http_info(register_sms_request, opts)
      nil
    end

    # Register SMS Number
    # &lt;p&gt;Register an Sms number and send an OTP to it &lt;/p&gt; &lt;p&gt;Used for manual verification of a user &lt;/p&gt; &lt;p&gt;The backoffice user initiates the request to send the OTP to the user&#39;s sms &lt;/p&gt; &lt;p&gt;The user then reads back the OTP which the backoffice user enters in the verifactionCode property for requests that require it&lt;/p&gt; 
    # @param register_sms_request [RegisterSmsRequest] a SMS Number to send an OTP to
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def register_sms_with_http_info(register_sms_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.register_sms ...'
      end
      # verify the required parameter 'register_sms_request' is set
      if @api_client.config.client_side_validation && register_sms_request.nil?
        fail ArgumentError, "Missing the required parameter 'register_sms_request' when calling UsersApi.register_sms"
      end
      # resource path
      local_var_path = '/v2/users/registration/sms'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(register_sms_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.register_sms",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#register_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend a token
    # <p>Resend the specified token </p> <p>The token to resend must already exist for the user </p> <p>It will be revoked and a new one issued</p> 
    # @param user_id [String] The UUID of the User.
    # @param resend_token_request [ResendTokenRequest] The type of token to resend
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def resend_token(user_id, resend_token_request, opts = {})
      resend_token_with_http_info(user_id, resend_token_request, opts)
      nil
    end

    # Resend a token
    # &lt;p&gt;Resend the specified token &lt;/p&gt; &lt;p&gt;The token to resend must already exist for the user &lt;/p&gt; &lt;p&gt;It will be revoked and a new one issued&lt;/p&gt; 
    # @param user_id [String] The UUID of the User.
    # @param resend_token_request [ResendTokenRequest] The type of token to resend
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def resend_token_with_http_info(user_id, resend_token_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.resend_token ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.resend_token"
      end
      # verify the required parameter 'resend_token_request' is set
      if @api_client.config.client_side_validation && resend_token_request.nil?
        fail ArgumentError, "Missing the required parameter 'resend_token_request' when calling UsersApi.resend_token"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/tokens'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resend_token_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.resend_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#resend_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User Role
    # <p>Update the user's Role</p> 
    # @param user_id [String] The UUID of the User.
    # @param role_update_request [RoleUpdateRequest] The Role to change to
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def role_update(user_id, role_update_request, opts = {})
      role_update_with_http_info(user_id, role_update_request, opts)
      nil
    end

    # Update User Role
    # &lt;p&gt;Update the user&#39;s Role&lt;/p&gt; 
    # @param user_id [String] The UUID of the User.
    # @param role_update_request [RoleUpdateRequest] The Role to change to
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def role_update_with_http_info(user_id, role_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.role_update ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.role_update"
      end
      # verify the required parameter 'role_update_request' is set
      if @api_client.config.client_side_validation && role_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'role_update_request' when calling UsersApi.role_update"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/roleUpdate'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(role_update_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.role_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#role_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlock a User
    # If a user is locked this endpoint will unlock them 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlock_user_v2(user_id, opts = {})
      unlock_user_v2_with_http_info(user_id, opts)
      nil
    end

    # Unlock a User
    # If a user is locked this endpoint will unlock them 
    # @param user_id [String] The UUID of the User.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unlock_user_v2_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.unlock_user_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.unlock_user_v2"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/unlock'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.unlock_user_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#unlock_user_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unregister MFA for the user
    # <p>Unregister the MFA device for the user </p> <p>If the user does not require further verification then a register new MFA device token will be sent to them via their email address</p> 
    # @param user_id [String] The UUID of the User.
    # @param unregister_mfa_request [UnregisterMFARequest] The MFA Type to unregister
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unregister_mfa(user_id, unregister_mfa_request, opts = {})
      unregister_mfa_with_http_info(user_id, unregister_mfa_request, opts)
      nil
    end

    # Unregister MFA for the user
    # &lt;p&gt;Unregister the MFA device for the user &lt;/p&gt; &lt;p&gt;If the user does not require further verification then a register new MFA device token will be sent to them via their email address&lt;/p&gt; 
    # @param user_id [String] The UUID of the User.
    # @param unregister_mfa_request [UnregisterMFARequest] The MFA Type to unregister
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unregister_mfa_with_http_info(user_id, unregister_mfa_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.unregister_mfa ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.unregister_mfa"
      end
      # verify the required parameter 'unregister_mfa_request' is set
      if @api_client.config.client_side_validation && unregister_mfa_request.nil?
        fail ArgumentError, "Missing the required parameter 'unregister_mfa_request' when calling UsersApi.unregister_mfa"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/mfa/unregister'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(unregister_mfa_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.unregister_mfa",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#unregister_mfa\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unregister MFA for Self
    # <p>Unregister the MFA device for the user </p> <p>If the user does not require further verification then a register new MFA device token will be sent to them via their email address</p> 
    # @param self_mfa_type_unregister_request [SelfMFATypeUnregisterRequest] The MFA Type to unregister
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer token authorization leg of validate
    # @return [nil]
    def unregister_mfa_for_self(self_mfa_type_unregister_request, opts = {})
      unregister_mfa_for_self_with_http_info(self_mfa_type_unregister_request, opts)
      nil
    end

    # Unregister MFA for Self
    # &lt;p&gt;Unregister the MFA device for the user &lt;/p&gt; &lt;p&gt;If the user does not require further verification then a register new MFA device token will be sent to them via their email address&lt;/p&gt; 
    # @param self_mfa_type_unregister_request [SelfMFATypeUnregisterRequest] The MFA Type to unregister
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer token authorization leg of validate
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unregister_mfa_for_self_with_http_info(self_mfa_type_unregister_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.unregister_mfa_for_self ...'
      end
      # verify the required parameter 'self_mfa_type_unregister_request' is set
      if @api_client.config.client_side_validation && self_mfa_type_unregister_request.nil?
        fail ArgumentError, "Missing the required parameter 'self_mfa_type_unregister_request' when calling UsersApi.unregister_mfa_for_self"
      end
      # resource path
      local_var_path = '/v2/users/self/mfa/unregister'

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
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(self_mfa_type_unregister_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.unregister_mfa_for_self",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#unregister_mfa_for_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Password for self
    # Update password for self 
    # @param self_update_password_request [SelfUpdatePasswordRequest] The password
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_password_self(self_update_password_request, opts = {})
      update_password_self_with_http_info(self_update_password_request, opts)
      nil
    end

    # Update Password for self
    # Update password for self 
    # @param self_update_password_request [SelfUpdatePasswordRequest] The password
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_password_self_with_http_info(self_update_password_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_password_self ...'
      end
      # verify the required parameter 'self_update_password_request' is set
      if @api_client.config.client_side_validation && self_update_password_request.nil?
        fail ArgumentError, "Missing the required parameter 'self_update_password_request' when calling UsersApi.update_password_self"
      end
      # resource path
      local_var_path = '/v2/users/self/password'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(self_update_password_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.update_password_self",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_password_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User Details
    # <p>Update the profile details for the given user</p> <p>When updating Payor users with the role of payor.master_admin a verificationCode is required</p> 
    # @param user_id [String] The UUID of the User.
    # @param user_details_update_request [UserDetailsUpdateRequest] The details of the user to update
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def user_details_update(user_id, user_details_update_request, opts = {})
      user_details_update_with_http_info(user_id, user_details_update_request, opts)
      nil
    end

    # Update User Details
    # &lt;p&gt;Update the profile details for the given user&lt;/p&gt; &lt;p&gt;When updating Payor users with the role of payor.master_admin a verificationCode is required&lt;/p&gt; 
    # @param user_id [String] The UUID of the User.
    # @param user_details_update_request [UserDetailsUpdateRequest] The details of the user to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def user_details_update_with_http_info(user_id, user_details_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.user_details_update ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.user_details_update"
      end
      # verify the required parameter 'user_details_update_request' is set
      if @api_client.config.client_side_validation && user_details_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'user_details_update_request' when calling UsersApi.user_details_update"
      end
      # resource path
      local_var_path = '/v2/users/{userId}/userDetailsUpdate'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(user_details_update_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.user_details_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#user_details_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User Details for self
    # <p>Update the profile details for the given user</p> <p>Only Payee user types are supported</p> 
    # @param payee_user_self_update_request [PayeeUserSelfUpdateRequest] The details of the user to update
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def user_details_update_for_self(payee_user_self_update_request, opts = {})
      user_details_update_for_self_with_http_info(payee_user_self_update_request, opts)
      nil
    end

    # Update User Details for self
    # &lt;p&gt;Update the profile details for the given user&lt;/p&gt; &lt;p&gt;Only Payee user types are supported&lt;/p&gt; 
    # @param payee_user_self_update_request [PayeeUserSelfUpdateRequest] The details of the user to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def user_details_update_for_self_with_http_info(payee_user_self_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.user_details_update_for_self ...'
      end
      # verify the required parameter 'payee_user_self_update_request' is set
      if @api_client.config.client_side_validation && payee_user_self_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'payee_user_self_update_request' when calling UsersApi.user_details_update_for_self"
      end
      # resource path
      local_var_path = '/v2/users/self/userDetailsUpdate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payee_user_self_update_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.user_details_update_for_self",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#user_details_update_for_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate the proposed password
    # validate the password and return a score 
    # @param password_request [PasswordRequest] The password
    # @param [Hash] opts the optional parameters
    # @return [ValidatePasswordResponse]
    def validate_password_self(password_request, opts = {})
      data, _status_code, _headers = validate_password_self_with_http_info(password_request, opts)
      data
    end

    # Validate the proposed password
    # validate the password and return a score 
    # @param password_request [PasswordRequest] The password
    # @param [Hash] opts the optional parameters
    # @return [Array<(ValidatePasswordResponse, Integer, Hash)>] ValidatePasswordResponse data, response status code and response headers
    def validate_password_self_with_http_info(password_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.validate_password_self ...'
      end
      # verify the required parameter 'password_request' is set
      if @api_client.config.client_side_validation && password_request.nil?
        fail ArgumentError, "Missing the required parameter 'password_request' when calling UsersApi.validate_password_self"
      end
      # resource path
      local_var_path = '/v2/users/self/password/validate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(password_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ValidatePasswordResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"UsersApi.validate_password_self",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#validate_password_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
