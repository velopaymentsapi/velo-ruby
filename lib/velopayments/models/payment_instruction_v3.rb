=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.26.124

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module VeloPayments
  # Instruction for creating a payment
  class PaymentInstructionV3
    # Your identifier for payee
    attr_accessor :remote_id

    # Valid ISO 4217 3 letter currency code. See the <a href=\"https://www.iso.org/iso-4217-currency-codes.html\" target=\"_blank\" a>ISO specification</a> for details.
    attr_accessor :currency

    # <p>Amount to send to Payee</p> <p>The maximum payment amount is dependent on the currency</p> 
    attr_accessor :amount

    # <p>Any value here will override the memo value in the parent payout</p> <p>This should be the reference field on the statement seen by the payee (but not via ACH)</p> 
    attr_accessor :payment_memo

    # Must match a valid source account name belonging to the payor
    attr_accessor :source_account_name

    # A reference identifier for the payor for the given payee payment
    attr_accessor :payor_payment_id

    attr_accessor :transmission_type

    # <p>The identifier for the remote payments system if not Velo</p> <p>Should only be used after consultation with Velo Payments</p> 
    attr_accessor :remote_system_id

    # <p>Metadata about the payment that may be relevant to the specific rails or remote system making the payout</p> <p>The structure of the data will be dictated by the requirements of the payment rails</p> 
    attr_accessor :payment_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'remote_id' => :'remoteId',
        :'currency' => :'currency',
        :'amount' => :'amount',
        :'payment_memo' => :'paymentMemo',
        :'source_account_name' => :'sourceAccountName',
        :'payor_payment_id' => :'payorPaymentId',
        :'transmission_type' => :'transmissionType',
        :'remote_system_id' => :'remoteSystemId',
        :'payment_metadata' => :'paymentMetadata'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'remote_id' => :'String',
        :'currency' => :'String',
        :'amount' => :'Integer',
        :'payment_memo' => :'String',
        :'source_account_name' => :'String',
        :'payor_payment_id' => :'String',
        :'transmission_type' => :'TransmissionType',
        :'remote_system_id' => :'String',
        :'payment_metadata' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PaymentInstructionV3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PaymentInstructionV3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'payment_memo')
        self.payment_memo = attributes[:'payment_memo']
      end

      if attributes.key?(:'source_account_name')
        self.source_account_name = attributes[:'source_account_name']
      end

      if attributes.key?(:'payor_payment_id')
        self.payor_payment_id = attributes[:'payor_payment_id']
      end

      if attributes.key?(:'transmission_type')
        self.transmission_type = attributes[:'transmission_type']
      end

      if attributes.key?(:'remote_system_id')
        self.remote_system_id = attributes[:'remote_system_id']
      end

      if attributes.key?(:'payment_metadata')
        self.payment_metadata = attributes[:'payment_metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @remote_id.nil?
        invalid_properties.push('invalid value for "remote_id", remote_id cannot be nil.')
      end

      if @remote_id.to_s.length > 100
        invalid_properties.push('invalid value for "remote_id", the character length must be smaller than or equal to 100.')
      end

      if @remote_id.to_s.length < 1
        invalid_properties.push('invalid value for "remote_id", the character length must be great than or equal to 1.')
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

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount < 1
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 1.')
      end

      if !@payment_memo.nil? && @payment_memo.to_s.length > 40
        invalid_properties.push('invalid value for "payment_memo", the character length must be smaller than or equal to 40.')
      end

      if !@payment_memo.nil? && @payment_memo.to_s.length < 0
        invalid_properties.push('invalid value for "payment_memo", the character length must be great than or equal to 0.')
      end

      if @source_account_name.nil?
        invalid_properties.push('invalid value for "source_account_name", source_account_name cannot be nil.')
      end

      if @source_account_name.to_s.length > 64
        invalid_properties.push('invalid value for "source_account_name", the character length must be smaller than or equal to 64.')
      end

      if @source_account_name.to_s.length < 1
        invalid_properties.push('invalid value for "source_account_name", the character length must be great than or equal to 1.')
      end

      if !@payor_payment_id.nil? && @payor_payment_id.to_s.length > 40
        invalid_properties.push('invalid value for "payor_payment_id", the character length must be smaller than or equal to 40.')
      end

      if !@payor_payment_id.nil? && @payor_payment_id.to_s.length < 0
        invalid_properties.push('invalid value for "payor_payment_id", the character length must be great than or equal to 0.')
      end

      if !@remote_system_id.nil? && @remote_system_id.to_s.length > 100
        invalid_properties.push('invalid value for "remote_system_id", the character length must be smaller than or equal to 100.')
      end

      if !@remote_system_id.nil? && @remote_system_id.to_s.length < 1
        invalid_properties.push('invalid value for "remote_system_id", the character length must be great than or equal to 1.')
      end

      if !@payment_metadata.nil? && @payment_metadata.to_s.length > 512
        invalid_properties.push('invalid value for "payment_metadata", the character length must be smaller than or equal to 512.')
      end

      if !@payment_metadata.nil? && @payment_metadata.to_s.length < 0
        invalid_properties.push('invalid value for "payment_metadata", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @remote_id.nil?
      return false if @remote_id.to_s.length > 100
      return false if @remote_id.to_s.length < 1
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      return false if @currency !~ Regexp.new(/^[A-Z]{3}$/)
      return false if @amount.nil?
      return false if @amount < 1
      return false if !@payment_memo.nil? && @payment_memo.to_s.length > 40
      return false if !@payment_memo.nil? && @payment_memo.to_s.length < 0
      return false if @source_account_name.nil?
      return false if @source_account_name.to_s.length > 64
      return false if @source_account_name.to_s.length < 1
      return false if !@payor_payment_id.nil? && @payor_payment_id.to_s.length > 40
      return false if !@payor_payment_id.nil? && @payor_payment_id.to_s.length < 0
      return false if !@remote_system_id.nil? && @remote_system_id.to_s.length > 100
      return false if !@remote_system_id.nil? && @remote_system_id.to_s.length < 1
      return false if !@payment_metadata.nil? && @payment_metadata.to_s.length > 512
      return false if !@payment_metadata.nil? && @payment_metadata.to_s.length < 0
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

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount < 1
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 1.'
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_memo Value to be assigned
    def payment_memo=(payment_memo)
      if !payment_memo.nil? && payment_memo.to_s.length > 40
        fail ArgumentError, 'invalid value for "payment_memo", the character length must be smaller than or equal to 40.'
      end

      if !payment_memo.nil? && payment_memo.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_memo", the character length must be great than or equal to 0.'
      end

      @payment_memo = payment_memo
    end

    # Custom attribute writer method with validation
    # @param [Object] source_account_name Value to be assigned
    def source_account_name=(source_account_name)
      if source_account_name.nil?
        fail ArgumentError, 'source_account_name cannot be nil'
      end

      if source_account_name.to_s.length > 64
        fail ArgumentError, 'invalid value for "source_account_name", the character length must be smaller than or equal to 64.'
      end

      if source_account_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "source_account_name", the character length must be great than or equal to 1.'
      end

      @source_account_name = source_account_name
    end

    # Custom attribute writer method with validation
    # @param [Object] payor_payment_id Value to be assigned
    def payor_payment_id=(payor_payment_id)
      if !payor_payment_id.nil? && payor_payment_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "payor_payment_id", the character length must be smaller than or equal to 40.'
      end

      if !payor_payment_id.nil? && payor_payment_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "payor_payment_id", the character length must be great than or equal to 0.'
      end

      @payor_payment_id = payor_payment_id
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_system_id Value to be assigned
    def remote_system_id=(remote_system_id)
      if !remote_system_id.nil? && remote_system_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "remote_system_id", the character length must be smaller than or equal to 100.'
      end

      if !remote_system_id.nil? && remote_system_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "remote_system_id", the character length must be great than or equal to 1.'
      end

      @remote_system_id = remote_system_id
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_metadata Value to be assigned
    def payment_metadata=(payment_metadata)
      if !payment_metadata.nil? && payment_metadata.to_s.length > 512
        fail ArgumentError, 'invalid value for "payment_metadata", the character length must be smaller than or equal to 512.'
      end

      if !payment_metadata.nil? && payment_metadata.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_metadata", the character length must be great than or equal to 0.'
      end

      @payment_metadata = payment_metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          remote_id == o.remote_id &&
          currency == o.currency &&
          amount == o.amount &&
          payment_memo == o.payment_memo &&
          source_account_name == o.source_account_name &&
          payor_payment_id == o.payor_payment_id &&
          transmission_type == o.transmission_type &&
          remote_system_id == o.remote_system_id &&
          payment_metadata == o.payment_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [remote_id, currency, amount, payment_memo, source_account_name, payor_payment_id, transmission_type, remote_system_id, payment_metadata].hash
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
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
