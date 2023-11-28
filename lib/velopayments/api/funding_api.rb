=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class FundingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Funding Request
    # Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo  (202 - accepted, 400 - invalid request body, 404 - source account not found).
    # @param source_account_id [String] Source account id
    # @param funding_request_v2 [FundingRequestV2] Body to included amount to be funded
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_funding_request_v2(source_account_id, funding_request_v2, opts = {})
      create_funding_request_v2_with_http_info(source_account_id, funding_request_v2, opts)
      nil
    end

    # Create Funding Request
    # Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo  (202 - accepted, 400 - invalid request body, 404 - source account not found).
    # @param source_account_id [String] Source account id
    # @param funding_request_v2 [FundingRequestV2] Body to included amount to be funded
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_funding_request_v2_with_http_info(source_account_id, funding_request_v2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingApi.create_funding_request_v2 ...'
      end
      # verify the required parameter 'source_account_id' is set
      if @api_client.config.client_side_validation && source_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'source_account_id' when calling FundingApi.create_funding_request_v2"
      end
      # verify the required parameter 'funding_request_v2' is set
      if @api_client.config.client_side_validation && funding_request_v2.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_v2' when calling FundingApi.create_funding_request_v2"
      end
      # resource path
      local_var_path = '/v2/sourceAccounts/{sourceAccountId}/fundingRequest'.sub('{' + 'sourceAccountId' + '}', CGI.escape(source_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_v2)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"FundingApi.create_funding_request_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingApi#create_funding_request_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Funding Request
    # <p>Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo</p> 
    # @param source_account_id [String] Source account id
    # @param funding_request_v3 [FundingRequestV3] Body to included amount to be funded
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_funding_request_v3(source_account_id, funding_request_v3, opts = {})
      create_funding_request_v3_with_http_info(source_account_id, funding_request_v3, opts)
      nil
    end

    # Create Funding Request
    # &lt;p&gt;Instruct a funding request to transfer funds from the payor’s funding bank to the payor’s balance held within Velo&lt;/p&gt; 
    # @param source_account_id [String] Source account id
    # @param funding_request_v3 [FundingRequestV3] Body to included amount to be funded
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_funding_request_v3_with_http_info(source_account_id, funding_request_v3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingApi.create_funding_request_v3 ...'
      end
      # verify the required parameter 'source_account_id' is set
      if @api_client.config.client_side_validation && source_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'source_account_id' when calling FundingApi.create_funding_request_v3"
      end
      # verify the required parameter 'funding_request_v3' is set
      if @api_client.config.client_side_validation && funding_request_v3.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_v3' when calling FundingApi.create_funding_request_v3"
      end
      # resource path
      local_var_path = '/v3/sourceAccounts/{sourceAccountId}/fundingRequest'.sub('{' + 'sourceAccountId' + '}', CGI.escape(source_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_v3)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"FundingApi.create_funding_request_v3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingApi#create_funding_request_v3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Funding Account
    # Get Funding Account by ID
    # @param funding_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive  (default to false)
    # @return [FundingAccountResponseV2]
    def get_funding_account_v2(funding_account_id, opts = {})
      data, _status_code, _headers = get_funding_account_v2_with_http_info(funding_account_id, opts)
      data
    end

    # Get Funding Account
    # Get Funding Account by ID
    # @param funding_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :sensitive  (default to false)
    # @return [Array<(FundingAccountResponseV2, Integer, Hash)>] FundingAccountResponseV2 data, response status code and response headers
    def get_funding_account_v2_with_http_info(funding_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingApi.get_funding_account_v2 ...'
      end
      # verify the required parameter 'funding_account_id' is set
      if @api_client.config.client_side_validation && funding_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'funding_account_id' when calling FundingApi.get_funding_account_v2"
      end
      # resource path
      local_var_path = '/v2/fundingAccounts/{fundingAccountId}'.sub('{' + 'fundingAccountId' + '}', CGI.escape(funding_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingAccountResponseV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"FundingApi.get_funding_account_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingApi#get_funding_account_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Funding Accounts
    # Get the funding accounts.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payor_id 
    # @option opts [String] :name The descriptive funding account name
    # @option opts [String] :country_code The 2 letter ISO 3166-1 country code (upper case)
    # @option opts [String] :currency The ISO 4217 currency code
    # @option opts [String] :type The type of funding account.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name. (default to 'accountName:asc')
    # @option opts [Boolean] :sensitive  (default to false)
    # @return [ListFundingAccountsResponseV2]
    def get_funding_accounts_v2(opts = {})
      data, _status_code, _headers = get_funding_accounts_v2_with_http_info(opts)
      data
    end

    # Get Funding Accounts
    # Get the funding accounts.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payor_id 
    # @option opts [String] :name The descriptive funding account name
    # @option opts [String] :country_code The 2 letter ISO 3166-1 country code (upper case)
    # @option opts [String] :currency The ISO 4217 currency code
    # @option opts [String] :type The type of funding account.
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @option opts [String] :sort List of sort fields (e.g. ?sort&#x3D;accountName:asc,name:asc) Default is accountName:asc The supported sort fields are - accountName, name. (default to 'accountName:asc')
    # @option opts [Boolean] :sensitive  (default to false)
    # @return [Array<(ListFundingAccountsResponseV2, Integer, Hash)>] ListFundingAccountsResponseV2 data, response status code and response headers
    def get_funding_accounts_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingApi.get_funding_accounts_v2 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FundingApi.get_funding_accounts_v2, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FundingApi.get_funding_accounts_v2, must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/[a-zA-Z]+[:desc|:asc]/)
      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"sort\"]' when calling FundingApi.get_funding_accounts_v2, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v2/fundingAccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payorId'] = opts[:'payor_id'] if !opts[:'payor_id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'countryCode'] = opts[:'country_code'] if !opts[:'country_code'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
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
      return_type = opts[:debug_return_type] || 'ListFundingAccountsResponseV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"FundingApi.get_funding_accounts_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingApi#get_funding_accounts_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Funding
    # Get Funding by Id
    # @param funding_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [FundingResponse]
    def get_funding_by_id_v1(funding_id, opts = {})
      data, _status_code, _headers = get_funding_by_id_v1_with_http_info(funding_id, opts)
      data
    end

    # Get Funding
    # Get Funding by Id
    # @param funding_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingResponse, Integer, Hash)>] FundingResponse data, response status code and response headers
    def get_funding_by_id_v1_with_http_info(funding_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingApi.get_funding_by_id_v1 ...'
      end
      # verify the required parameter 'funding_id' is set
      if @api_client.config.client_side_validation && funding_id.nil?
        fail ArgumentError, "Missing the required parameter 'funding_id' when calling FundingApi.get_funding_by_id_v1"
      end
      # resource path
      local_var_path = '/v1/fundings/{fundingId}'.sub('{' + 'fundingId' + '}', CGI.escape(funding_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"FundingApi.get_funding_by_id_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingApi#get_funding_by_id_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Funding Audit Delta
    # Get funding audit deltas for a payor
    # @param payor_id [String] 
    # @param updated_since [Time] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @return [PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse]
    def list_funding_audit_deltas(payor_id, updated_since, opts = {})
      data, _status_code, _headers = list_funding_audit_deltas_with_http_info(payor_id, updated_since, opts)
      data
    end

    # Get Funding Audit Delta
    # Get funding audit deltas for a payor
    # @param payor_id [String] 
    # @param updated_since [Time] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Default is 1. (default to 1)
    # @option opts [Integer] :page_size The number of results to return in a page (default to 25)
    # @return [Array<(PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse, Integer, Hash)>] PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse data, response status code and response headers
    def list_funding_audit_deltas_with_http_info(payor_id, updated_since, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingApi.list_funding_audit_deltas ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling FundingApi.list_funding_audit_deltas"
      end
      # verify the required parameter 'updated_since' is set
      if @api_client.config.client_side_validation && updated_since.nil?
        fail ArgumentError, "Missing the required parameter 'updated_since' when calling FundingApi.list_funding_audit_deltas"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FundingApi.list_funding_audit_deltas, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FundingApi.list_funding_audit_deltas, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/deltas/fundings'

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
      return_type = opts[:debug_return_type] || 'PageResourceFundingPayorStatusAuditResponseFundingPayorStatusAuditResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"FundingApi.list_funding_audit_deltas",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingApi#list_funding_audit_deltas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
