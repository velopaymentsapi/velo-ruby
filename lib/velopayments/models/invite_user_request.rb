=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.18.113

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1-SNAPSHOT

=end

require 'date'

module VeloPayments
  class InviteUserRequest
    # the email address of the invited user
    attr_accessor :email

    # The MFA type that the user will use The type may be conditional on the role(s) the user has 
    attr_accessor :mfa_type

    # The phone number of a device that the user can receive sms messages on 
    attr_accessor :sms_number

    # The main contact number for the user 
    attr_accessor :primary_contact_number

    # The secondary contact number for the user 
    attr_accessor :secondary_contact_number

    # The role(s) for the user The role must exist The role can be a custom role or a system role but the invoker must have the permissions to assign the role System roles are: backoffice.admin, payor.master_admin, payor.admin, payor.support 
    attr_accessor :roles

    attr_accessor :first_name

    attr_accessor :last_name

    # The payorId or null if the user is not a payor user 
    attr_accessor :entity_id

    # Optional property that MUST be suppied when manually verifying a user The user's smsNumber is registered via a separate endpoint and an OTP sent to them 
    attr_accessor :verification_code

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
        :'email' => :'email',
        :'mfa_type' => :'mfaType',
        :'sms_number' => :'smsNumber',
        :'primary_contact_number' => :'primaryContactNumber',
        :'secondary_contact_number' => :'secondaryContactNumber',
        :'roles' => :'roles',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'entity_id' => :'entityId',
        :'verification_code' => :'verificationCode'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email' => :'String',
        :'mfa_type' => :'String',
        :'sms_number' => :'String',
        :'primary_contact_number' => :'String',
        :'secondary_contact_number' => :'String',
        :'roles' => :'Array<String>',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'entity_id' => :'String',
        :'verification_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::InviteUserRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::InviteUserRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'mfa_type')
        self.mfa_type = attributes[:'mfa_type']
      end

      if attributes.key?(:'sms_number')
        self.sms_number = attributes[:'sms_number']
      end

      if attributes.key?(:'primary_contact_number')
        self.primary_contact_number = attributes[:'primary_contact_number']
      end

      if attributes.key?(:'secondary_contact_number')
        self.secondary_contact_number = attributes[:'secondary_contact_number']
      end

      if attributes.key?(:'roles')
        if (value = attributes[:'roles']).is_a?(Array)
          self.roles = value
        end
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'verification_code')
        self.verification_code = attributes[:'verification_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @mfa_type.nil?
        invalid_properties.push('invalid value for "mfa_type", mfa_type cannot be nil.')
      end

      if @sms_number.nil?
        invalid_properties.push('invalid value for "sms_number", sms_number cannot be nil.')
      end

      pattern = Regexp.new(/^\+?[1-9]\d{1,14}$/)
      if @sms_number !~ pattern
        invalid_properties.push("invalid value for \"sms_number\", must conform to the pattern #{pattern}.")
      end

      if @primary_contact_number.nil?
        invalid_properties.push('invalid value for "primary_contact_number", primary_contact_number cannot be nil.')
      end

      pattern = Regexp.new(/^\+?[1-9]\d{1,14}$/)
      if @primary_contact_number !~ pattern
        invalid_properties.push("invalid value for \"primary_contact_number\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^\+?[1-9]\d{1,14}$/)
      if !@secondary_contact_number.nil? && @secondary_contact_number !~ pattern
        invalid_properties.push("invalid value for \"secondary_contact_number\", must conform to the pattern #{pattern}.")
      end

      if @roles.nil?
        invalid_properties.push('invalid value for "roles", roles cannot be nil.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 128
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 128.')
      end

      if !@first_name.nil? && @first_name.to_s.length < 1
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 1.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 128
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 128.')
      end

      if !@last_name.nil? && @last_name.to_s.length < 1
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 1.')
      end

      if !@verification_code.nil? && @verification_code.to_s.length > 6
        invalid_properties.push('invalid value for "verification_code", the character length must be smaller than or equal to 6.')
      end

      if !@verification_code.nil? && @verification_code.to_s.length < 6
        invalid_properties.push('invalid value for "verification_code", the character length must be great than or equal to 6.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @email.nil?
      return false if @mfa_type.nil?
      mfa_type_validator = EnumAttributeValidator.new('String', ["SMS", "YUBIKEY", "TOTP"])
      return false unless mfa_type_validator.valid?(@mfa_type)
      return false if @sms_number.nil?
      return false if @sms_number !~ Regexp.new(/^\+?[1-9]\d{1,14}$/)
      return false if @primary_contact_number.nil?
      return false if @primary_contact_number !~ Regexp.new(/^\+?[1-9]\d{1,14}$/)
      return false if !@secondary_contact_number.nil? && @secondary_contact_number !~ Regexp.new(/^\+?[1-9]\d{1,14}$/)
      return false if @roles.nil?
      return false if !@first_name.nil? && @first_name.to_s.length > 128
      return false if !@first_name.nil? && @first_name.to_s.length < 1
      return false if !@last_name.nil? && @last_name.to_s.length > 128
      return false if !@last_name.nil? && @last_name.to_s.length < 1
      return false if !@verification_code.nil? && @verification_code.to_s.length > 6
      return false if !@verification_code.nil? && @verification_code.to_s.length < 6
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mfa_type Object to be assigned
    def mfa_type=(mfa_type)
      validator = EnumAttributeValidator.new('String', ["SMS", "YUBIKEY", "TOTP"])
      unless validator.valid?(mfa_type)
        fail ArgumentError, "invalid value for \"mfa_type\", must be one of #{validator.allowable_values}."
      end
      @mfa_type = mfa_type
    end

    # Custom attribute writer method with validation
    # @param [Object] sms_number Value to be assigned
    def sms_number=(sms_number)
      if sms_number.nil?
        fail ArgumentError, 'sms_number cannot be nil'
      end

      pattern = Regexp.new(/^\+?[1-9]\d{1,14}$/)
      if sms_number !~ pattern
        fail ArgumentError, "invalid value for \"sms_number\", must conform to the pattern #{pattern}."
      end

      @sms_number = sms_number
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_contact_number Value to be assigned
    def primary_contact_number=(primary_contact_number)
      if primary_contact_number.nil?
        fail ArgumentError, 'primary_contact_number cannot be nil'
      end

      pattern = Regexp.new(/^\+?[1-9]\d{1,14}$/)
      if primary_contact_number !~ pattern
        fail ArgumentError, "invalid value for \"primary_contact_number\", must conform to the pattern #{pattern}."
      end

      @primary_contact_number = primary_contact_number
    end

    # Custom attribute writer method with validation
    # @param [Object] secondary_contact_number Value to be assigned
    def secondary_contact_number=(secondary_contact_number)
      pattern = Regexp.new(/^\+?[1-9]\d{1,14}$/)
      if !secondary_contact_number.nil? && secondary_contact_number !~ pattern
        fail ArgumentError, "invalid value for \"secondary_contact_number\", must conform to the pattern #{pattern}."
      end

      @secondary_contact_number = secondary_contact_number
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 128
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 128.'
      end

      if !first_name.nil? && first_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 1.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 128
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 128.'
      end

      if !last_name.nil? && last_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 1.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] verification_code Value to be assigned
    def verification_code=(verification_code)
      if !verification_code.nil? && verification_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "verification_code", the character length must be smaller than or equal to 6.'
      end

      if !verification_code.nil? && verification_code.to_s.length < 6
        fail ArgumentError, 'invalid value for "verification_code", the character length must be great than or equal to 6.'
      end

      @verification_code = verification_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          mfa_type == o.mfa_type &&
          sms_number == o.sms_number &&
          primary_contact_number == o.primary_contact_number &&
          secondary_contact_number == o.secondary_contact_number &&
          roles == o.roles &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          entity_id == o.entity_id &&
          verification_code == o.verification_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email, mfa_type, sms_number, primary_contact_number, secondary_contact_number, roles, first_name, last_name, entity_id, verification_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        VeloPayments.const_get(type).build_from_hash(value)
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
        next if value.nil?
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
