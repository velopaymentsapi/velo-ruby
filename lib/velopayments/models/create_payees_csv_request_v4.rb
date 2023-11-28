=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response.   ## Http Status Codes Following is a list of Http Status codes that could be returned by the platform      | Status Code            | Description                                                                          |     | -----------------------| -------------------------------------------------------------------------------------|     | 200 OK                 | The request was successfully processed and usually returns a json response           |     | 201 Created            | A resource was created and a Location header is returned linking to the new resource |     | 202 Accepted           | The request has been accepted for processing                                         |     | 204 No Content         | The request has been processed and there is no response (usually deletes and updates)|     | 400 Bad Request        | The request is invalid and should be fixed before retrying                           |     | 401 Unauthorized       | Authentication has failed, usually means the token has expired                       |     | 403 Forbidden          | The user does not have permissions for the request                                   |     | 404 Not Found          | The resource was not found                                                           |     | 409 Conflict           | The resource already exists and there is a conflict                                  |     | 429 Too Many Requests  | The user has submitted too many requests in a given amount of time                   |     | 5xx Server Error       | Platform internal error (should rarely happen)                                       | 

The version of the OpenAPI document: 2.37.150

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module VeloPayments
  class CreatePayeesCSVRequestV4
    attr_accessor :type

    attr_accessor :remote_id

    attr_accessor :email

    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :address_line3

    attr_accessor :address_line4

    attr_accessor :address_city

    attr_accessor :address_county_or_province

    attr_accessor :address_zip_or_postcode

    # Valid ISO 3166 2 character country code. See the <a href=\"https://www.iso.org/iso-3166-country-codes.html\" target=\"_blank\" a>ISO specification</a> for details.
    attr_accessor :address_country

    attr_accessor :individual_national_identification

    # Must not be date in future. Example - 1970-05-20
    attr_accessor :individual_date_of_birth

    attr_accessor :individual_title

    attr_accessor :individual_first_name

    attr_accessor :individual_other_names

    attr_accessor :individual_last_name

    attr_accessor :company_name

    attr_accessor :company_ein

    attr_accessor :company_operating_name

    # Either routing number and account number or only iban must be set
    attr_accessor :payment_channel_account_number

    # Either routing number and account number or only iban must be set
    attr_accessor :payment_channel_routing_number

    attr_accessor :payment_channel_account_name

    # Must match the regular expression ```^[A-Za-z0-9]+$```.
    attr_accessor :payment_channel_iban

    # Valid ISO 3166 2 character country code. See the <a href=\"https://www.iso.org/iso-3166-country-codes.html\" target=\"_blank\" a>ISO specification</a> for details.
    attr_accessor :payment_channel_country_code

    attr_accessor :payment_channel_currency

    attr_accessor :challenge_description

    attr_accessor :challenge_value

    # An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR> See the /v1/supportedLanguages endpoint to list the available codes for an environment. 
    attr_accessor :payee_language

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'remote_id' => :'remoteId',
        :'email' => :'email',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'address_line3' => :'addressLine3',
        :'address_line4' => :'addressLine4',
        :'address_city' => :'addressCity',
        :'address_county_or_province' => :'addressCountyOrProvince',
        :'address_zip_or_postcode' => :'addressZipOrPostcode',
        :'address_country' => :'addressCountry',
        :'individual_national_identification' => :'individualNationalIdentification',
        :'individual_date_of_birth' => :'individualDateOfBirth',
        :'individual_title' => :'individualTitle',
        :'individual_first_name' => :'individualFirstName',
        :'individual_other_names' => :'individualOtherNames',
        :'individual_last_name' => :'individualLastName',
        :'company_name' => :'companyName',
        :'company_ein' => :'companyEIN',
        :'company_operating_name' => :'companyOperatingName',
        :'payment_channel_account_number' => :'paymentChannelAccountNumber',
        :'payment_channel_routing_number' => :'paymentChannelRoutingNumber',
        :'payment_channel_account_name' => :'paymentChannelAccountName',
        :'payment_channel_iban' => :'paymentChannelIban',
        :'payment_channel_country_code' => :'paymentChannelCountryCode',
        :'payment_channel_currency' => :'paymentChannelCurrency',
        :'challenge_description' => :'challengeDescription',
        :'challenge_value' => :'challengeValue',
        :'payee_language' => :'payeeLanguage'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'PayeeTypeEnum',
        :'remote_id' => :'String',
        :'email' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'address_line3' => :'String',
        :'address_line4' => :'String',
        :'address_city' => :'String',
        :'address_county_or_province' => :'String',
        :'address_zip_or_postcode' => :'String',
        :'address_country' => :'String',
        :'individual_national_identification' => :'String',
        :'individual_date_of_birth' => :'Date',
        :'individual_title' => :'String',
        :'individual_first_name' => :'String',
        :'individual_other_names' => :'String',
        :'individual_last_name' => :'String',
        :'company_name' => :'String',
        :'company_ein' => :'String',
        :'company_operating_name' => :'String',
        :'payment_channel_account_number' => :'String',
        :'payment_channel_routing_number' => :'String',
        :'payment_channel_account_name' => :'String',
        :'payment_channel_iban' => :'String',
        :'payment_channel_country_code' => :'String',
        :'payment_channel_currency' => :'String',
        :'challenge_description' => :'String',
        :'challenge_value' => :'String',
        :'payee_language' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::CreatePayeesCSVRequestV4` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::CreatePayeesCSVRequestV4`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      else
        self.remote_id = nil
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      else
        self.email = nil
      end

      if attributes.key?(:'address_line1')
        self.address_line1 = attributes[:'address_line1']
      else
        self.address_line1 = nil
      end

      if attributes.key?(:'address_line2')
        self.address_line2 = attributes[:'address_line2']
      end

      if attributes.key?(:'address_line3')
        self.address_line3 = attributes[:'address_line3']
      end

      if attributes.key?(:'address_line4')
        self.address_line4 = attributes[:'address_line4']
      end

      if attributes.key?(:'address_city')
        self.address_city = attributes[:'address_city']
      else
        self.address_city = nil
      end

      if attributes.key?(:'address_county_or_province')
        self.address_county_or_province = attributes[:'address_county_or_province']
      end

      if attributes.key?(:'address_zip_or_postcode')
        self.address_zip_or_postcode = attributes[:'address_zip_or_postcode']
      else
        self.address_zip_or_postcode = nil
      end

      if attributes.key?(:'address_country')
        self.address_country = attributes[:'address_country']
      else
        self.address_country = nil
      end

      if attributes.key?(:'individual_national_identification')
        self.individual_national_identification = attributes[:'individual_national_identification']
      end

      if attributes.key?(:'individual_date_of_birth')
        self.individual_date_of_birth = attributes[:'individual_date_of_birth']
      end

      if attributes.key?(:'individual_title')
        self.individual_title = attributes[:'individual_title']
      end

      if attributes.key?(:'individual_first_name')
        self.individual_first_name = attributes[:'individual_first_name']
      end

      if attributes.key?(:'individual_other_names')
        self.individual_other_names = attributes[:'individual_other_names']
      end

      if attributes.key?(:'individual_last_name')
        self.individual_last_name = attributes[:'individual_last_name']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'company_ein')
        self.company_ein = attributes[:'company_ein']
      end

      if attributes.key?(:'company_operating_name')
        self.company_operating_name = attributes[:'company_operating_name']
      end

      if attributes.key?(:'payment_channel_account_number')
        self.payment_channel_account_number = attributes[:'payment_channel_account_number']
      end

      if attributes.key?(:'payment_channel_routing_number')
        self.payment_channel_routing_number = attributes[:'payment_channel_routing_number']
      end

      if attributes.key?(:'payment_channel_account_name')
        self.payment_channel_account_name = attributes[:'payment_channel_account_name']
      end

      if attributes.key?(:'payment_channel_iban')
        self.payment_channel_iban = attributes[:'payment_channel_iban']
      end

      if attributes.key?(:'payment_channel_country_code')
        self.payment_channel_country_code = attributes[:'payment_channel_country_code']
      end

      if attributes.key?(:'payment_channel_currency')
        self.payment_channel_currency = attributes[:'payment_channel_currency']
      end

      if attributes.key?(:'challenge_description')
        self.challenge_description = attributes[:'challenge_description']
      end

      if attributes.key?(:'challenge_value')
        self.challenge_value = attributes[:'challenge_value']
      end

      if attributes.key?(:'payee_language')
        self.payee_language = attributes[:'payee_language']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @remote_id.nil?
        invalid_properties.push('invalid value for "remote_id", remote_id cannot be nil.')
      end

      if @remote_id.to_s.length > 100
        invalid_properties.push('invalid value for "remote_id", the character length must be smaller than or equal to 100.')
      end

      if @remote_id.to_s.length < 1
        invalid_properties.push('invalid value for "remote_id", the character length must be great than or equal to 1.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      if @email.to_s.length < 3
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 3.')
      end

      if @address_line1.nil?
        invalid_properties.push('invalid value for "address_line1", address_line1 cannot be nil.')
      end

      if @address_line1.to_s.length > 100
        invalid_properties.push('invalid value for "address_line1", the character length must be smaller than or equal to 100.')
      end

      if @address_line1.to_s.length < 2
        invalid_properties.push('invalid value for "address_line1", the character length must be great than or equal to 2.')
      end

      if !@address_line2.nil? && @address_line2.to_s.length > 100
        invalid_properties.push('invalid value for "address_line2", the character length must be smaller than or equal to 100.')
      end

      if !@address_line2.nil? && @address_line2.to_s.length < 0
        invalid_properties.push('invalid value for "address_line2", the character length must be great than or equal to 0.')
      end

      if !@address_line3.nil? && @address_line3.to_s.length > 100
        invalid_properties.push('invalid value for "address_line3", the character length must be smaller than or equal to 100.')
      end

      if !@address_line3.nil? && @address_line3.to_s.length < 0
        invalid_properties.push('invalid value for "address_line3", the character length must be great than or equal to 0.')
      end

      if !@address_line4.nil? && @address_line4.to_s.length > 100
        invalid_properties.push('invalid value for "address_line4", the character length must be smaller than or equal to 100.')
      end

      if !@address_line4.nil? && @address_line4.to_s.length < 0
        invalid_properties.push('invalid value for "address_line4", the character length must be great than or equal to 0.')
      end

      if @address_city.nil?
        invalid_properties.push('invalid value for "address_city", address_city cannot be nil.')
      end

      if @address_city.to_s.length > 50
        invalid_properties.push('invalid value for "address_city", the character length must be smaller than or equal to 50.')
      end

      if @address_city.to_s.length < 2
        invalid_properties.push('invalid value for "address_city", the character length must be great than or equal to 2.')
      end

      if !@address_county_or_province.nil? && @address_county_or_province.to_s.length > 50
        invalid_properties.push('invalid value for "address_county_or_province", the character length must be smaller than or equal to 50.')
      end

      if !@address_county_or_province.nil? && @address_county_or_province.to_s.length < 1
        invalid_properties.push('invalid value for "address_county_or_province", the character length must be great than or equal to 1.')
      end

      if @address_zip_or_postcode.nil?
        invalid_properties.push('invalid value for "address_zip_or_postcode", address_zip_or_postcode cannot be nil.')
      end

      if @address_zip_or_postcode.to_s.length > 60
        invalid_properties.push('invalid value for "address_zip_or_postcode", the character length must be smaller than or equal to 60.')
      end

      if @address_zip_or_postcode.to_s.length < 1
        invalid_properties.push('invalid value for "address_zip_or_postcode", the character length must be great than or equal to 1.')
      end

      if @address_country.nil?
        invalid_properties.push('invalid value for "address_country", address_country cannot be nil.')
      end

      if @address_country.to_s.length > 2
        invalid_properties.push('invalid value for "address_country", the character length must be smaller than or equal to 2.')
      end

      if @address_country.to_s.length < 2
        invalid_properties.push('invalid value for "address_country", the character length must be great than or equal to 2.')
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if @address_country !~ pattern
        invalid_properties.push("invalid value for \"address_country\", must conform to the pattern #{pattern}.")
      end

      if !@individual_national_identification.nil? && @individual_national_identification.to_s.length > 30
        invalid_properties.push('invalid value for "individual_national_identification", the character length must be smaller than or equal to 30.')
      end

      if !@individual_national_identification.nil? && @individual_national_identification.to_s.length < 6
        invalid_properties.push('invalid value for "individual_national_identification", the character length must be great than or equal to 6.')
      end

      if !@individual_title.nil? && @individual_title.to_s.length > 40
        invalid_properties.push('invalid value for "individual_title", the character length must be smaller than or equal to 40.')
      end

      if !@individual_title.nil? && @individual_title.to_s.length < 1
        invalid_properties.push('invalid value for "individual_title", the character length must be great than or equal to 1.')
      end

      if !@individual_first_name.nil? && @individual_first_name.to_s.length > 40
        invalid_properties.push('invalid value for "individual_first_name", the character length must be smaller than or equal to 40.')
      end

      if !@individual_first_name.nil? && @individual_first_name.to_s.length < 1
        invalid_properties.push('invalid value for "individual_first_name", the character length must be great than or equal to 1.')
      end

      if !@individual_other_names.nil? && @individual_other_names.to_s.length > 40
        invalid_properties.push('invalid value for "individual_other_names", the character length must be smaller than or equal to 40.')
      end

      if !@individual_other_names.nil? && @individual_other_names.to_s.length < 1
        invalid_properties.push('invalid value for "individual_other_names", the character length must be great than or equal to 1.')
      end

      if !@individual_last_name.nil? && @individual_last_name.to_s.length > 40
        invalid_properties.push('invalid value for "individual_last_name", the character length must be smaller than or equal to 40.')
      end

      if !@individual_last_name.nil? && @individual_last_name.to_s.length < 1
        invalid_properties.push('invalid value for "individual_last_name", the character length must be great than or equal to 1.')
      end

      if !@company_name.nil? && @company_name.to_s.length > 40
        invalid_properties.push('invalid value for "company_name", the character length must be smaller than or equal to 40.')
      end

      if !@company_name.nil? && @company_name.to_s.length < 1
        invalid_properties.push('invalid value for "company_name", the character length must be great than or equal to 1.')
      end

      if !@company_ein.nil? && @company_ein.to_s.length > 30
        invalid_properties.push('invalid value for "company_ein", the character length must be smaller than or equal to 30.')
      end

      if !@company_ein.nil? && @company_ein.to_s.length < 6
        invalid_properties.push('invalid value for "company_ein", the character length must be great than or equal to 6.')
      end

      if !@company_operating_name.nil? && @company_operating_name.to_s.length > 100
        invalid_properties.push('invalid value for "company_operating_name", the character length must be smaller than or equal to 100.')
      end

      if !@company_operating_name.nil? && @company_operating_name.to_s.length < 1
        invalid_properties.push('invalid value for "company_operating_name", the character length must be great than or equal to 1.')
      end

      if !@payment_channel_account_number.nil? && @payment_channel_account_number.to_s.length > 17
        invalid_properties.push('invalid value for "payment_channel_account_number", the character length must be smaller than or equal to 17.')
      end

      if !@payment_channel_account_number.nil? && @payment_channel_account_number.to_s.length < 6
        invalid_properties.push('invalid value for "payment_channel_account_number", the character length must be great than or equal to 6.')
      end

      if !@payment_channel_routing_number.nil? && @payment_channel_routing_number.to_s.length > 9
        invalid_properties.push('invalid value for "payment_channel_routing_number", the character length must be smaller than or equal to 9.')
      end

      if !@payment_channel_routing_number.nil? && @payment_channel_routing_number.to_s.length < 9
        invalid_properties.push('invalid value for "payment_channel_routing_number", the character length must be great than or equal to 9.')
      end

      if !@payment_channel_iban.nil? && @payment_channel_iban.to_s.length > 34
        invalid_properties.push('invalid value for "payment_channel_iban", the character length must be smaller than or equal to 34.')
      end

      if !@payment_channel_iban.nil? && @payment_channel_iban.to_s.length < 15
        invalid_properties.push('invalid value for "payment_channel_iban", the character length must be great than or equal to 15.')
      end

      pattern = Regexp.new(/^[A-Za-z0-9]+$/)
      if !@payment_channel_iban.nil? && @payment_channel_iban !~ pattern
        invalid_properties.push("invalid value for \"payment_channel_iban\", must conform to the pattern #{pattern}.")
      end

      if !@payment_channel_country_code.nil? && @payment_channel_country_code.to_s.length > 2
        invalid_properties.push('invalid value for "payment_channel_country_code", the character length must be smaller than or equal to 2.')
      end

      if !@payment_channel_country_code.nil? && @payment_channel_country_code.to_s.length < 2
        invalid_properties.push('invalid value for "payment_channel_country_code", the character length must be great than or equal to 2.')
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if !@payment_channel_country_code.nil? && @payment_channel_country_code !~ pattern
        invalid_properties.push("invalid value for \"payment_channel_country_code\", must conform to the pattern #{pattern}.")
      end

      if !@payment_channel_currency.nil? && @payment_channel_currency.to_s.length > 3
        invalid_properties.push('invalid value for "payment_channel_currency", the character length must be smaller than or equal to 3.')
      end

      if !@payment_channel_currency.nil? && @payment_channel_currency.to_s.length < 3
        invalid_properties.push('invalid value for "payment_channel_currency", the character length must be great than or equal to 3.')
      end

      if !@challenge_description.nil? && @challenge_description.to_s.length > 255
        invalid_properties.push('invalid value for "challenge_description", the character length must be smaller than or equal to 255.')
      end

      if !@challenge_description.nil? && @challenge_description.to_s.length < 1
        invalid_properties.push('invalid value for "challenge_description", the character length must be great than or equal to 1.')
      end

      if !@challenge_value.nil? && @challenge_value.to_s.length > 20
        invalid_properties.push('invalid value for "challenge_value", the character length must be smaller than or equal to 20.')
      end

      if !@challenge_value.nil? && @challenge_value.to_s.length < 3
        invalid_properties.push('invalid value for "challenge_value", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      return false if @remote_id.nil?
      return false if @remote_id.to_s.length > 100
      return false if @remote_id.to_s.length < 1
      return false if @email.nil?
      return false if @email.to_s.length > 255
      return false if @email.to_s.length < 3
      return false if @address_line1.nil?
      return false if @address_line1.to_s.length > 100
      return false if @address_line1.to_s.length < 2
      return false if !@address_line2.nil? && @address_line2.to_s.length > 100
      return false if !@address_line2.nil? && @address_line2.to_s.length < 0
      return false if !@address_line3.nil? && @address_line3.to_s.length > 100
      return false if !@address_line3.nil? && @address_line3.to_s.length < 0
      return false if !@address_line4.nil? && @address_line4.to_s.length > 100
      return false if !@address_line4.nil? && @address_line4.to_s.length < 0
      return false if @address_city.nil?
      return false if @address_city.to_s.length > 50
      return false if @address_city.to_s.length < 2
      return false if !@address_county_or_province.nil? && @address_county_or_province.to_s.length > 50
      return false if !@address_county_or_province.nil? && @address_county_or_province.to_s.length < 1
      return false if @address_zip_or_postcode.nil?
      return false if @address_zip_or_postcode.to_s.length > 60
      return false if @address_zip_or_postcode.to_s.length < 1
      return false if @address_country.nil?
      return false if @address_country.to_s.length > 2
      return false if @address_country.to_s.length < 2
      return false if @address_country !~ Regexp.new(/^[A-Z]{2}$/)
      return false if !@individual_national_identification.nil? && @individual_national_identification.to_s.length > 30
      return false if !@individual_national_identification.nil? && @individual_national_identification.to_s.length < 6
      return false if !@individual_title.nil? && @individual_title.to_s.length > 40
      return false if !@individual_title.nil? && @individual_title.to_s.length < 1
      return false if !@individual_first_name.nil? && @individual_first_name.to_s.length > 40
      return false if !@individual_first_name.nil? && @individual_first_name.to_s.length < 1
      return false if !@individual_other_names.nil? && @individual_other_names.to_s.length > 40
      return false if !@individual_other_names.nil? && @individual_other_names.to_s.length < 1
      return false if !@individual_last_name.nil? && @individual_last_name.to_s.length > 40
      return false if !@individual_last_name.nil? && @individual_last_name.to_s.length < 1
      return false if !@company_name.nil? && @company_name.to_s.length > 40
      return false if !@company_name.nil? && @company_name.to_s.length < 1
      return false if !@company_ein.nil? && @company_ein.to_s.length > 30
      return false if !@company_ein.nil? && @company_ein.to_s.length < 6
      return false if !@company_operating_name.nil? && @company_operating_name.to_s.length > 100
      return false if !@company_operating_name.nil? && @company_operating_name.to_s.length < 1
      return false if !@payment_channel_account_number.nil? && @payment_channel_account_number.to_s.length > 17
      return false if !@payment_channel_account_number.nil? && @payment_channel_account_number.to_s.length < 6
      return false if !@payment_channel_routing_number.nil? && @payment_channel_routing_number.to_s.length > 9
      return false if !@payment_channel_routing_number.nil? && @payment_channel_routing_number.to_s.length < 9
      return false if !@payment_channel_iban.nil? && @payment_channel_iban.to_s.length > 34
      return false if !@payment_channel_iban.nil? && @payment_channel_iban.to_s.length < 15
      return false if !@payment_channel_iban.nil? && @payment_channel_iban !~ Regexp.new(/^[A-Za-z0-9]+$/)
      return false if !@payment_channel_country_code.nil? && @payment_channel_country_code.to_s.length > 2
      return false if !@payment_channel_country_code.nil? && @payment_channel_country_code.to_s.length < 2
      return false if !@payment_channel_country_code.nil? && @payment_channel_country_code !~ Regexp.new(/^[A-Z]{2}$/)
      return false if !@payment_channel_currency.nil? && @payment_channel_currency.to_s.length > 3
      return false if !@payment_channel_currency.nil? && @payment_channel_currency.to_s.length < 3
      return false if !@challenge_description.nil? && @challenge_description.to_s.length > 255
      return false if !@challenge_description.nil? && @challenge_description.to_s.length < 1
      return false if !@challenge_value.nil? && @challenge_value.to_s.length > 20
      return false if !@challenge_value.nil? && @challenge_value.to_s.length < 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_id Value to be assigned
    def remote_id=(remote_id)
      if remote_id.nil?
        fail ArgumentError, 'remote_id cannot be nil'
      end

      if remote_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "remote_id", the character length must be smaller than or equal to 100.'
      end

      if remote_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "remote_id", the character length must be great than or equal to 1.'
      end

      @remote_id = remote_id
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      if email.to_s.length < 3
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 3.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line1 Value to be assigned
    def address_line1=(address_line1)
      if address_line1.nil?
        fail ArgumentError, 'address_line1 cannot be nil'
      end

      if address_line1.to_s.length > 100
        fail ArgumentError, 'invalid value for "address_line1", the character length must be smaller than or equal to 100.'
      end

      if address_line1.to_s.length < 2
        fail ArgumentError, 'invalid value for "address_line1", the character length must be great than or equal to 2.'
      end

      @address_line1 = address_line1
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line2 Value to be assigned
    def address_line2=(address_line2)
      if address_line2.nil?
        fail ArgumentError, 'address_line2 cannot be nil'
      end

      if address_line2.to_s.length > 100
        fail ArgumentError, 'invalid value for "address_line2", the character length must be smaller than or equal to 100.'
      end

      if address_line2.to_s.length < 0
        fail ArgumentError, 'invalid value for "address_line2", the character length must be great than or equal to 0.'
      end

      @address_line2 = address_line2
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line3 Value to be assigned
    def address_line3=(address_line3)
      if address_line3.nil?
        fail ArgumentError, 'address_line3 cannot be nil'
      end

      if address_line3.to_s.length > 100
        fail ArgumentError, 'invalid value for "address_line3", the character length must be smaller than or equal to 100.'
      end

      if address_line3.to_s.length < 0
        fail ArgumentError, 'invalid value for "address_line3", the character length must be great than or equal to 0.'
      end

      @address_line3 = address_line3
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line4 Value to be assigned
    def address_line4=(address_line4)
      if address_line4.nil?
        fail ArgumentError, 'address_line4 cannot be nil'
      end

      if address_line4.to_s.length > 100
        fail ArgumentError, 'invalid value for "address_line4", the character length must be smaller than or equal to 100.'
      end

      if address_line4.to_s.length < 0
        fail ArgumentError, 'invalid value for "address_line4", the character length must be great than or equal to 0.'
      end

      @address_line4 = address_line4
    end

    # Custom attribute writer method with validation
    # @param [Object] address_city Value to be assigned
    def address_city=(address_city)
      if address_city.nil?
        fail ArgumentError, 'address_city cannot be nil'
      end

      if address_city.to_s.length > 50
        fail ArgumentError, 'invalid value for "address_city", the character length must be smaller than or equal to 50.'
      end

      if address_city.to_s.length < 2
        fail ArgumentError, 'invalid value for "address_city", the character length must be great than or equal to 2.'
      end

      @address_city = address_city
    end

    # Custom attribute writer method with validation
    # @param [Object] address_county_or_province Value to be assigned
    def address_county_or_province=(address_county_or_province)
      if address_county_or_province.nil?
        fail ArgumentError, 'address_county_or_province cannot be nil'
      end

      if address_county_or_province.to_s.length > 50
        fail ArgumentError, 'invalid value for "address_county_or_province", the character length must be smaller than or equal to 50.'
      end

      if address_county_or_province.to_s.length < 1
        fail ArgumentError, 'invalid value for "address_county_or_province", the character length must be great than or equal to 1.'
      end

      @address_county_or_province = address_county_or_province
    end

    # Custom attribute writer method with validation
    # @param [Object] address_zip_or_postcode Value to be assigned
    def address_zip_or_postcode=(address_zip_or_postcode)
      if address_zip_or_postcode.nil?
        fail ArgumentError, 'address_zip_or_postcode cannot be nil'
      end

      if address_zip_or_postcode.to_s.length > 60
        fail ArgumentError, 'invalid value for "address_zip_or_postcode", the character length must be smaller than or equal to 60.'
      end

      if address_zip_or_postcode.to_s.length < 1
        fail ArgumentError, 'invalid value for "address_zip_or_postcode", the character length must be great than or equal to 1.'
      end

      @address_zip_or_postcode = address_zip_or_postcode
    end

    # Custom attribute writer method with validation
    # @param [Object] address_country Value to be assigned
    def address_country=(address_country)
      if address_country.nil?
        fail ArgumentError, 'address_country cannot be nil'
      end

      if address_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "address_country", the character length must be smaller than or equal to 2.'
      end

      if address_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "address_country", the character length must be great than or equal to 2.'
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if address_country !~ pattern
        fail ArgumentError, "invalid value for \"address_country\", must conform to the pattern #{pattern}."
      end

      @address_country = address_country
    end

    # Custom attribute writer method with validation
    # @param [Object] individual_national_identification Value to be assigned
    def individual_national_identification=(individual_national_identification)
      if individual_national_identification.nil?
        fail ArgumentError, 'individual_national_identification cannot be nil'
      end

      if individual_national_identification.to_s.length > 30
        fail ArgumentError, 'invalid value for "individual_national_identification", the character length must be smaller than or equal to 30.'
      end

      if individual_national_identification.to_s.length < 6
        fail ArgumentError, 'invalid value for "individual_national_identification", the character length must be great than or equal to 6.'
      end

      @individual_national_identification = individual_national_identification
    end

    # Custom attribute writer method with validation
    # @param [Object] individual_title Value to be assigned
    def individual_title=(individual_title)
      if individual_title.nil?
        fail ArgumentError, 'individual_title cannot be nil'
      end

      if individual_title.to_s.length > 40
        fail ArgumentError, 'invalid value for "individual_title", the character length must be smaller than or equal to 40.'
      end

      if individual_title.to_s.length < 1
        fail ArgumentError, 'invalid value for "individual_title", the character length must be great than or equal to 1.'
      end

      @individual_title = individual_title
    end

    # Custom attribute writer method with validation
    # @param [Object] individual_first_name Value to be assigned
    def individual_first_name=(individual_first_name)
      if individual_first_name.nil?
        fail ArgumentError, 'individual_first_name cannot be nil'
      end

      if individual_first_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "individual_first_name", the character length must be smaller than or equal to 40.'
      end

      if individual_first_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "individual_first_name", the character length must be great than or equal to 1.'
      end

      @individual_first_name = individual_first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] individual_other_names Value to be assigned
    def individual_other_names=(individual_other_names)
      if individual_other_names.nil?
        fail ArgumentError, 'individual_other_names cannot be nil'
      end

      if individual_other_names.to_s.length > 40
        fail ArgumentError, 'invalid value for "individual_other_names", the character length must be smaller than or equal to 40.'
      end

      if individual_other_names.to_s.length < 1
        fail ArgumentError, 'invalid value for "individual_other_names", the character length must be great than or equal to 1.'
      end

      @individual_other_names = individual_other_names
    end

    # Custom attribute writer method with validation
    # @param [Object] individual_last_name Value to be assigned
    def individual_last_name=(individual_last_name)
      if individual_last_name.nil?
        fail ArgumentError, 'individual_last_name cannot be nil'
      end

      if individual_last_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "individual_last_name", the character length must be smaller than or equal to 40.'
      end

      if individual_last_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "individual_last_name", the character length must be great than or equal to 1.'
      end

      @individual_last_name = individual_last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] company_name Value to be assigned
    def company_name=(company_name)
      if company_name.nil?
        fail ArgumentError, 'company_name cannot be nil'
      end

      if company_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "company_name", the character length must be smaller than or equal to 40.'
      end

      if company_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "company_name", the character length must be great than or equal to 1.'
      end

      @company_name = company_name
    end

    # Custom attribute writer method with validation
    # @param [Object] company_ein Value to be assigned
    def company_ein=(company_ein)
      if company_ein.nil?
        fail ArgumentError, 'company_ein cannot be nil'
      end

      if company_ein.to_s.length > 30
        fail ArgumentError, 'invalid value for "company_ein", the character length must be smaller than or equal to 30.'
      end

      if company_ein.to_s.length < 6
        fail ArgumentError, 'invalid value for "company_ein", the character length must be great than or equal to 6.'
      end

      @company_ein = company_ein
    end

    # Custom attribute writer method with validation
    # @param [Object] company_operating_name Value to be assigned
    def company_operating_name=(company_operating_name)
      if company_operating_name.nil?
        fail ArgumentError, 'company_operating_name cannot be nil'
      end

      if company_operating_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "company_operating_name", the character length must be smaller than or equal to 100.'
      end

      if company_operating_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "company_operating_name", the character length must be great than or equal to 1.'
      end

      @company_operating_name = company_operating_name
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_channel_account_number Value to be assigned
    def payment_channel_account_number=(payment_channel_account_number)
      if payment_channel_account_number.nil?
        fail ArgumentError, 'payment_channel_account_number cannot be nil'
      end

      if payment_channel_account_number.to_s.length > 17
        fail ArgumentError, 'invalid value for "payment_channel_account_number", the character length must be smaller than or equal to 17.'
      end

      if payment_channel_account_number.to_s.length < 6
        fail ArgumentError, 'invalid value for "payment_channel_account_number", the character length must be great than or equal to 6.'
      end

      @payment_channel_account_number = payment_channel_account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_channel_routing_number Value to be assigned
    def payment_channel_routing_number=(payment_channel_routing_number)
      if payment_channel_routing_number.nil?
        fail ArgumentError, 'payment_channel_routing_number cannot be nil'
      end

      if payment_channel_routing_number.to_s.length > 9
        fail ArgumentError, 'invalid value for "payment_channel_routing_number", the character length must be smaller than or equal to 9.'
      end

      if payment_channel_routing_number.to_s.length < 9
        fail ArgumentError, 'invalid value for "payment_channel_routing_number", the character length must be great than or equal to 9.'
      end

      @payment_channel_routing_number = payment_channel_routing_number
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_channel_iban Value to be assigned
    def payment_channel_iban=(payment_channel_iban)
      if payment_channel_iban.nil?
        fail ArgumentError, 'payment_channel_iban cannot be nil'
      end

      if payment_channel_iban.to_s.length > 34
        fail ArgumentError, 'invalid value for "payment_channel_iban", the character length must be smaller than or equal to 34.'
      end

      if payment_channel_iban.to_s.length < 15
        fail ArgumentError, 'invalid value for "payment_channel_iban", the character length must be great than or equal to 15.'
      end

      pattern = Regexp.new(/^[A-Za-z0-9]+$/)
      if payment_channel_iban !~ pattern
        fail ArgumentError, "invalid value for \"payment_channel_iban\", must conform to the pattern #{pattern}."
      end

      @payment_channel_iban = payment_channel_iban
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_channel_country_code Value to be assigned
    def payment_channel_country_code=(payment_channel_country_code)
      if payment_channel_country_code.nil?
        fail ArgumentError, 'payment_channel_country_code cannot be nil'
      end

      if payment_channel_country_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "payment_channel_country_code", the character length must be smaller than or equal to 2.'
      end

      if payment_channel_country_code.to_s.length < 2
        fail ArgumentError, 'invalid value for "payment_channel_country_code", the character length must be great than or equal to 2.'
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if payment_channel_country_code !~ pattern
        fail ArgumentError, "invalid value for \"payment_channel_country_code\", must conform to the pattern #{pattern}."
      end

      @payment_channel_country_code = payment_channel_country_code
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_channel_currency Value to be assigned
    def payment_channel_currency=(payment_channel_currency)
      if payment_channel_currency.nil?
        fail ArgumentError, 'payment_channel_currency cannot be nil'
      end

      if payment_channel_currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "payment_channel_currency", the character length must be smaller than or equal to 3.'
      end

      if payment_channel_currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "payment_channel_currency", the character length must be great than or equal to 3.'
      end

      @payment_channel_currency = payment_channel_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] challenge_description Value to be assigned
    def challenge_description=(challenge_description)
      if challenge_description.nil?
        fail ArgumentError, 'challenge_description cannot be nil'
      end

      if challenge_description.to_s.length > 255
        fail ArgumentError, 'invalid value for "challenge_description", the character length must be smaller than or equal to 255.'
      end

      if challenge_description.to_s.length < 1
        fail ArgumentError, 'invalid value for "challenge_description", the character length must be great than or equal to 1.'
      end

      @challenge_description = challenge_description
    end

    # Custom attribute writer method with validation
    # @param [Object] challenge_value Value to be assigned
    def challenge_value=(challenge_value)
      if challenge_value.nil?
        fail ArgumentError, 'challenge_value cannot be nil'
      end

      if challenge_value.to_s.length > 20
        fail ArgumentError, 'invalid value for "challenge_value", the character length must be smaller than or equal to 20.'
      end

      if challenge_value.to_s.length < 3
        fail ArgumentError, 'invalid value for "challenge_value", the character length must be great than or equal to 3.'
      end

      @challenge_value = challenge_value
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          remote_id == o.remote_id &&
          email == o.email &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          address_line3 == o.address_line3 &&
          address_line4 == o.address_line4 &&
          address_city == o.address_city &&
          address_county_or_province == o.address_county_or_province &&
          address_zip_or_postcode == o.address_zip_or_postcode &&
          address_country == o.address_country &&
          individual_national_identification == o.individual_national_identification &&
          individual_date_of_birth == o.individual_date_of_birth &&
          individual_title == o.individual_title &&
          individual_first_name == o.individual_first_name &&
          individual_other_names == o.individual_other_names &&
          individual_last_name == o.individual_last_name &&
          company_name == o.company_name &&
          company_ein == o.company_ein &&
          company_operating_name == o.company_operating_name &&
          payment_channel_account_number == o.payment_channel_account_number &&
          payment_channel_routing_number == o.payment_channel_routing_number &&
          payment_channel_account_name == o.payment_channel_account_name &&
          payment_channel_iban == o.payment_channel_iban &&
          payment_channel_country_code == o.payment_channel_country_code &&
          payment_channel_currency == o.payment_channel_currency &&
          challenge_description == o.challenge_description &&
          challenge_value == o.challenge_value &&
          payee_language == o.payee_language
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, remote_id, email, address_line1, address_line2, address_line3, address_line4, address_city, address_county_or_province, address_zip_or_postcode, address_country, individual_national_identification, individual_date_of_birth, individual_title, individual_first_name, individual_other_names, individual_last_name, company_name, company_ein, company_operating_name, payment_channel_account_number, payment_channel_routing_number, payment_channel_account_name, payment_channel_iban, payment_channel_country_code, payment_channel_currency, challenge_description, challenge_value, payee_language].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = VeloPayments.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
