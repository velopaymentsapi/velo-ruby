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
  class PaymentChannelResponseV4
    attr_accessor :id

    attr_accessor :payee_id

    attr_accessor :payment_channel_name

    attr_accessor :account_name

    # Payment channel type. One of the following values: CHANNEL_BANK
    attr_accessor :channel_type

    # Valid ISO 3166 2 character country code. See the <a href=\"https://www.iso.org/iso-3166-country-codes.html\" target=\"_blank\" a>ISO specification</a> for details.
    attr_accessor :country_code

    attr_accessor :routing_number

    attr_accessor :account_number

    # Must match the regular expression ```^[A-Za-z0-9]+$```.
    attr_accessor :iban

    # Valid ISO 4217 3 letter currency code. See the <a href=\"https://www.iso.org/iso-4217-currency-codes.html\" target=\"_blank\" a>ISO specification</a> for details.
    attr_accessor :currency

    attr_accessor :payor_ids

    attr_accessor :payee_name

    attr_accessor :bank_name

    attr_accessor :bank_swift_bic

    attr_accessor :bank_address

    attr_accessor :deleted

    attr_accessor :enabled

    attr_accessor :disabled_reason_code

    attr_accessor :disabled_reason

    # Whether this payment channel is payable
    attr_accessor :payable

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'payee_id' => :'payeeId',
        :'payment_channel_name' => :'paymentChannelName',
        :'account_name' => :'accountName',
        :'channel_type' => :'channelType',
        :'country_code' => :'countryCode',
        :'routing_number' => :'routingNumber',
        :'account_number' => :'accountNumber',
        :'iban' => :'iban',
        :'currency' => :'currency',
        :'payor_ids' => :'payorIds',
        :'payee_name' => :'payeeName',
        :'bank_name' => :'bankName',
        :'bank_swift_bic' => :'bankSwiftBic',
        :'bank_address' => :'bankAddress',
        :'deleted' => :'deleted',
        :'enabled' => :'enabled',
        :'disabled_reason_code' => :'disabledReasonCode',
        :'disabled_reason' => :'disabledReason',
        :'payable' => :'payable'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'payee_id' => :'String',
        :'payment_channel_name' => :'String',
        :'account_name' => :'String',
        :'channel_type' => :'String',
        :'country_code' => :'String',
        :'routing_number' => :'String',
        :'account_number' => :'String',
        :'iban' => :'String',
        :'currency' => :'String',
        :'payor_ids' => :'Array<String>',
        :'payee_name' => :'String',
        :'bank_name' => :'String',
        :'bank_swift_bic' => :'String',
        :'bank_address' => :'AddressV4',
        :'deleted' => :'Boolean',
        :'enabled' => :'Boolean',
        :'disabled_reason_code' => :'String',
        :'disabled_reason' => :'String',
        :'payable' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PaymentChannelResponseV4` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PaymentChannelResponseV4`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.key?(:'payment_channel_name')
        self.payment_channel_name = attributes[:'payment_channel_name']
      else
        self.payment_channel_name = nil
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      else
        self.account_name = nil
      end

      if attributes.key?(:'channel_type')
        self.channel_type = attributes[:'channel_type']
      else
        self.channel_type = nil
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      else
        self.country_code = nil
      end

      if attributes.key?(:'routing_number')
        self.routing_number = attributes[:'routing_number']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'payor_ids')
        if (value = attributes[:'payor_ids']).is_a?(Array)
          self.payor_ids = value
        end
      end

      if attributes.key?(:'payee_name')
        self.payee_name = attributes[:'payee_name']
      end

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'bank_swift_bic')
        self.bank_swift_bic = attributes[:'bank_swift_bic']
      end

      if attributes.key?(:'bank_address')
        self.bank_address = attributes[:'bank_address']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'disabled_reason_code')
        self.disabled_reason_code = attributes[:'disabled_reason_code']
      end

      if attributes.key?(:'disabled_reason')
        self.disabled_reason = attributes[:'disabled_reason']
      end

      if attributes.key?(:'payable')
        self.payable = attributes[:'payable']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @payment_channel_name.nil?
        invalid_properties.push('invalid value for "payment_channel_name", payment_channel_name cannot be nil.')
      end

      if @account_name.nil?
        invalid_properties.push('invalid value for "account_name", account_name cannot be nil.')
      end

      if @channel_type.nil?
        invalid_properties.push('invalid value for "channel_type", channel_type cannot be nil.')
      end

      if @country_code.nil?
        invalid_properties.push('invalid value for "country_code", country_code cannot be nil.')
      end

      if @country_code.to_s.length > 2
        invalid_properties.push('invalid value for "country_code", the character length must be smaller than or equal to 2.')
      end

      if @country_code.to_s.length < 2
        invalid_properties.push('invalid value for "country_code", the character length must be great than or equal to 2.')
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if @country_code !~ pattern
        invalid_properties.push("invalid value for \"country_code\", must conform to the pattern #{pattern}.")
      end

      if !@routing_number.nil? && @routing_number.to_s.length > 9
        invalid_properties.push('invalid value for "routing_number", the character length must be smaller than or equal to 9.')
      end

      if !@routing_number.nil? && @routing_number.to_s.length < 9
        invalid_properties.push('invalid value for "routing_number", the character length must be great than or equal to 9.')
      end

      if !@account_number.nil? && @account_number.to_s.length > 17
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 17.')
      end

      if !@account_number.nil? && @account_number.to_s.length < 6
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 6.')
      end

      if !@iban.nil? && @iban.to_s.length > 34
        invalid_properties.push('invalid value for "iban", the character length must be smaller than or equal to 34.')
      end

      if !@iban.nil? && @iban.to_s.length < 15
        invalid_properties.push('invalid value for "iban", the character length must be great than or equal to 15.')
      end

      pattern = Regexp.new(/^[A-Za-z0-9]+$/)
      if !@iban.nil? && @iban !~ pattern
        invalid_properties.push("invalid value for \"iban\", must conform to the pattern #{pattern}.")
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if @currency.to_s.length < 3
        invalid_properties.push('invalid value for "currency", the character length must be great than or equal to 3.')
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @payment_channel_name.nil?
      return false if @account_name.nil?
      return false if @channel_type.nil?
      return false if @country_code.nil?
      return false if @country_code.to_s.length > 2
      return false if @country_code.to_s.length < 2
      return false if @country_code !~ Regexp.new(/^[A-Z]{2}$/)
      return false if !@routing_number.nil? && @routing_number.to_s.length > 9
      return false if !@routing_number.nil? && @routing_number.to_s.length < 9
      return false if !@account_number.nil? && @account_number.to_s.length > 17
      return false if !@account_number.nil? && @account_number.to_s.length < 6
      return false if !@iban.nil? && @iban.to_s.length > 34
      return false if !@iban.nil? && @iban.to_s.length < 15
      return false if !@iban.nil? && @iban !~ Regexp.new(/^[A-Za-z0-9]+$/)
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      return false if @currency !~ Regexp.new(/^[A-Z]{3}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)
      if country_code.nil?
        fail ArgumentError, 'country_code cannot be nil'
      end

      if country_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "country_code", the character length must be smaller than or equal to 2.'
      end

      if country_code.to_s.length < 2
        fail ArgumentError, 'invalid value for "country_code", the character length must be great than or equal to 2.'
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if country_code !~ pattern
        fail ArgumentError, "invalid value for \"country_code\", must conform to the pattern #{pattern}."
      end

      @country_code = country_code
    end

    # Custom attribute writer method with validation
    # @param [Object] routing_number Value to be assigned
    def routing_number=(routing_number)
      if routing_number.nil?
        fail ArgumentError, 'routing_number cannot be nil'
      end

      if routing_number.to_s.length > 9
        fail ArgumentError, 'invalid value for "routing_number", the character length must be smaller than or equal to 9.'
      end

      if routing_number.to_s.length < 9
        fail ArgumentError, 'invalid value for "routing_number", the character length must be great than or equal to 9.'
      end

      @routing_number = routing_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      if account_number.to_s.length > 17
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 17.'
      end

      if account_number.to_s.length < 6
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 6.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] iban Value to be assigned
    def iban=(iban)
      if iban.nil?
        fail ArgumentError, 'iban cannot be nil'
      end

      if iban.to_s.length > 34
        fail ArgumentError, 'invalid value for "iban", the character length must be smaller than or equal to 34.'
      end

      if iban.to_s.length < 15
        fail ArgumentError, 'invalid value for "iban", the character length must be great than or equal to 15.'
      end

      pattern = Regexp.new(/^[A-Za-z0-9]+$/)
      if iban !~ pattern
        fail ArgumentError, "invalid value for \"iban\", must conform to the pattern #{pattern}."
      end

      @iban = iban
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      if currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      if currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency", the character length must be great than or equal to 3.'
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if currency !~ pattern
        fail ArgumentError, "invalid value for \"currency\", must conform to the pattern #{pattern}."
      end

      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          payee_id == o.payee_id &&
          payment_channel_name == o.payment_channel_name &&
          account_name == o.account_name &&
          channel_type == o.channel_type &&
          country_code == o.country_code &&
          routing_number == o.routing_number &&
          account_number == o.account_number &&
          iban == o.iban &&
          currency == o.currency &&
          payor_ids == o.payor_ids &&
          payee_name == o.payee_name &&
          bank_name == o.bank_name &&
          bank_swift_bic == o.bank_swift_bic &&
          bank_address == o.bank_address &&
          deleted == o.deleted &&
          enabled == o.enabled &&
          disabled_reason_code == o.disabled_reason_code &&
          disabled_reason == o.disabled_reason &&
          payable == o.payable
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, payee_id, payment_channel_name, account_name, channel_type, country_code, routing_number, account_number, iban, currency, payor_ids, payee_name, bank_name, bank_swift_bic, bank_address, deleted, enabled, disabled_reason_code, disabled_reason, payable].hash
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
