=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.19.116

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1-SNAPSHOT

=end

require 'cgi'

module VeloPayments
  class PayorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Payor
    # Get a Single Payor by Id. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [PayorV1]
    def get_payor_by_id(payor_id, opts = {})
      data, _status_code, _headers = get_payor_by_id_with_http_info(payor_id, opts)
      data
    end

    # Get Payor
    # Get a Single Payor by Id. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayorV1, Integer, Hash)>] PayorV1 data, response status code and response headers
    def get_payor_by_id_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.get_payor_by_id ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.get_payor_by_id"
      end
      # resource path
      local_var_path = '/v1/payors/{payorId}'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

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
      return_type = opts[:return_type] || 'PayorV1' 

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
        @api_client.config.logger.debug "API called: PayorsApi#get_payor_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payor
    # Get a Single Payor by Id. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [PayorV2]
    def get_payor_by_id_v2(payor_id, opts = {})
      data, _status_code, _headers = get_payor_by_id_v2_with_http_info(payor_id, opts)
      data
    end

    # Get Payor
    # Get a Single Payor by Id. 
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayorV2, Integer, Hash)>] PayorV2 data, response status code and response headers
    def get_payor_by_id_v2_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.get_payor_by_id_v2 ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.get_payor_by_id_v2"
      end
      # resource path
      local_var_path = '/v2/payors/{payorId}'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

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
      return_type = opts[:return_type] || 'PayorV2' 

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
        @api_client.config.logger.debug "API called: PayorsApi#get_payor_by_id_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add Logo
    # Add Payor Logo. Logo file is used in your branding, and emails sent to payees.
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [File] :logo 
    # @return [nil]
    def payor_add_payor_logo(payor_id, opts = {})
      payor_add_payor_logo_with_http_info(payor_id, opts)
      nil
    end

    # Add Logo
    # Add Payor Logo. Logo file is used in your branding, and emails sent to payees.
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @option opts [File] :logo 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def payor_add_payor_logo_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.payor_add_payor_logo ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.payor_add_payor_logo"
      end
      # resource path
      local_var_path = '/v1/payors/{payorId}/branding/logos'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['logo'] = opts[:'logo'] if !opts[:'logo'].nil?

      # http body (model)
      post_body = opts[:body] 

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
        @api_client.config.logger.debug "API called: PayorsApi#payor_add_payor_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create API Key
    # Create an an API key for the given payor Id and application Id
    # @param payor_id [String] The account owner Payor ID
    # @param application_id [String] Application ID
    # @param payor_create_api_key_request [PayorCreateApiKeyRequest] Details of application API key to create
    # @param [Hash] opts the optional parameters
    # @return [PayorCreateApiKeyResponse]
    def payor_create_api_key_request(payor_id, application_id, payor_create_api_key_request, opts = {})
      data, _status_code, _headers = payor_create_api_key_request_with_http_info(payor_id, application_id, payor_create_api_key_request, opts)
      data
    end

    # Create API Key
    # Create an an API key for the given payor Id and application Id
    # @param payor_id [String] The account owner Payor ID
    # @param application_id [String] Application ID
    # @param payor_create_api_key_request [PayorCreateApiKeyRequest] Details of application API key to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayorCreateApiKeyResponse, Integer, Hash)>] PayorCreateApiKeyResponse data, response status code and response headers
    def payor_create_api_key_request_with_http_info(payor_id, application_id, payor_create_api_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.payor_create_api_key_request ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.payor_create_api_key_request"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling PayorsApi.payor_create_api_key_request"
      end
      # verify the required parameter 'payor_create_api_key_request' is set
      if @api_client.config.client_side_validation && payor_create_api_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'payor_create_api_key_request' when calling PayorsApi.payor_create_api_key_request"
      end
      # resource path
      local_var_path = '/v1/payors/{payorId}/applications/{applicationId}/keys'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s)).sub('{' + 'applicationId' + '}', CGI.escape(application_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(payor_create_api_key_request) 

      # return_type
      return_type = opts[:return_type] || 'PayorCreateApiKeyResponse' 

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
        @api_client.config.logger.debug "API called: PayorsApi#payor_create_api_key_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Application
    # Create an application for the given Payor ID. Applications are programatic users which can be assigned unique keys.
    # @param payor_id [String] The account owner Payor ID
    # @param payor_create_application_request [PayorCreateApplicationRequest] Details of application to create
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def payor_create_application_request(payor_id, payor_create_application_request, opts = {})
      payor_create_application_request_with_http_info(payor_id, payor_create_application_request, opts)
      nil
    end

    # Create Application
    # Create an application for the given Payor ID. Applications are programatic users which can be assigned unique keys.
    # @param payor_id [String] The account owner Payor ID
    # @param payor_create_application_request [PayorCreateApplicationRequest] Details of application to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def payor_create_application_request_with_http_info(payor_id, payor_create_application_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.payor_create_application_request ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.payor_create_application_request"
      end
      # verify the required parameter 'payor_create_application_request' is set
      if @api_client.config.client_side_validation && payor_create_application_request.nil?
        fail ArgumentError, "Missing the required parameter 'payor_create_application_request' when calling PayorsApi.payor_create_application_request"
      end
      # resource path
      local_var_path = '/v1/payors/{payorId}/applications'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(payor_create_application_request) 

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
        @api_client.config.logger.debug "API called: PayorsApi#payor_create_application_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reminder Email Opt-Out
    # Update the emailRemindersOptOut field for a Payor. This API can be used to opt out or opt into Payor Reminder emails. These emails are typically around payee events such as payees registering and onboarding. 
    # @param payor_id [String] The account owner Payor ID
    # @param payor_email_opt_out_request [PayorEmailOptOutRequest] Reminder Emails Opt-Out Request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def payor_email_opt_out(payor_id, payor_email_opt_out_request, opts = {})
      payor_email_opt_out_with_http_info(payor_id, payor_email_opt_out_request, opts)
      nil
    end

    # Reminder Email Opt-Out
    # Update the emailRemindersOptOut field for a Payor. This API can be used to opt out or opt into Payor Reminder emails. These emails are typically around payee events such as payees registering and onboarding. 
    # @param payor_id [String] The account owner Payor ID
    # @param payor_email_opt_out_request [PayorEmailOptOutRequest] Reminder Emails Opt-Out Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def payor_email_opt_out_with_http_info(payor_id, payor_email_opt_out_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.payor_email_opt_out ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.payor_email_opt_out"
      end
      # verify the required parameter 'payor_email_opt_out_request' is set
      if @api_client.config.client_side_validation && payor_email_opt_out_request.nil?
        fail ArgumentError, "Missing the required parameter 'payor_email_opt_out_request' when calling PayorsApi.payor_email_opt_out"
      end
      # resource path
      local_var_path = '/v1/payors/{payorId}/reminderEmailsUpdate'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(payor_email_opt_out_request) 

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
        @api_client.config.logger.debug "API called: PayorsApi#payor_email_opt_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Branding
    # Get the payor branding details.
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [PayorBrandingResponse]
    def payor_get_branding(payor_id, opts = {})
      data, _status_code, _headers = payor_get_branding_with_http_info(payor_id, opts)
      data
    end

    # Get Branding
    # Get the payor branding details.
    # @param payor_id [String] The account owner Payor ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayorBrandingResponse, Integer, Hash)>] PayorBrandingResponse data, response status code and response headers
    def payor_get_branding_with_http_info(payor_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.payor_get_branding ...'
      end
      # verify the required parameter 'payor_id' is set
      if @api_client.config.client_side_validation && payor_id.nil?
        fail ArgumentError, "Missing the required parameter 'payor_id' when calling PayorsApi.payor_get_branding"
      end
      # resource path
      local_var_path = '/v1/payors/{payorId}/branding'.sub('{' + 'payorId' + '}', CGI.escape(payor_id.to_s))

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
      return_type = opts[:return_type] || 'PayorBrandingResponse' 

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
        @api_client.config.logger.debug "API called: PayorsApi#payor_get_branding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Payor Links
    # This endpoint allows you to list payor links
    # @param [Hash] opts the optional parameters
    # @option opts [String] :descendants_of_payor The Payor ID from which to start the query to show all descendants
    # @option opts [String] :parent_of_payor Look for the parent payor details for this payor id
    # @option opts [String] :fields List of additional Payor fields to include in the response for each Payor. The values of payorId and payorName and always included for each Payor - &#39;fields&#39; allows you to add to this. Example: &#x60;&#x60;&#x60;fields&#x3D;primaryContactEmail,kycState&#x60;&#x60;&#x60; - will include payorId+payorName+primaryContactEmail+kycState for each Payor Default if not specified is to include only payorId and payorName. The supported fields are any combination of: primaryContactEmail,kycState 
    # @return [PayorLinksResponse]
    def payor_links(opts = {})
      data, _status_code, _headers = payor_links_with_http_info(opts)
      data
    end

    # List Payor Links
    # This endpoint allows you to list payor links
    # @param [Hash] opts the optional parameters
    # @option opts [String] :descendants_of_payor The Payor ID from which to start the query to show all descendants
    # @option opts [String] :parent_of_payor Look for the parent payor details for this payor id
    # @option opts [String] :fields List of additional Payor fields to include in the response for each Payor. The values of payorId and payorName and always included for each Payor - &#39;fields&#39; allows you to add to this. Example: &#x60;&#x60;&#x60;fields&#x3D;primaryContactEmail,kycState&#x60;&#x60;&#x60; - will include payorId+payorName+primaryContactEmail+kycState for each Payor Default if not specified is to include only payorId and payorName. The supported fields are any combination of: primaryContactEmail,kycState 
    # @return [Array<(PayorLinksResponse, Integer, Hash)>] PayorLinksResponse data, response status code and response headers
    def payor_links_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorsApi.payor_links ...'
      end
      # resource path
      local_var_path = '/v1/payorLinks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'descendantsOfPayor'] = opts[:'descendants_of_payor'] if !opts[:'descendants_of_payor'].nil?
      query_params[:'parentOfPayor'] = opts[:'parent_of_payor'] if !opts[:'parent_of_payor'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PayorLinksResponse' 

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
        @api_client.config.logger.debug "API called: PayorsApi#payor_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
