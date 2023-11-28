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
  class PaymentV3
    # The id of the payment
    attr_accessor :payment_id

    # The remoteId supplied by the payor that identifies the payee
    attr_accessor :remote_id

    # The currency that the payment was made in
    attr_accessor :currency

    # The amount of the payment in minor units
    attr_accessor :amount

    # The identifier of the source account to debit the payment from
    attr_accessor :source_account_name

    # A reference identifier for the payor for the given payee payment
    attr_accessor :payor_payment_id

    # <p>Any value here will override the memo value in the parent payout</p> <p>This should be the reference field on the statement seen by the payee (but not via ACH)</p> 
    attr_accessor :payment_memo

    attr_accessor :payee

    # Can this paynent be withdrawn
    attr_accessor :withdrawable

    # Current status of payment. One of the following values: SUBMITTED, ACCEPTED, REJECTED, WITHDRAWN, RETURNED, AWAITING_FUNDS, FUNDED, UNFUNDED, CANCELLED, BANK_PAYMENT_REQUESTED
    attr_accessor :status

    # <p>The transmission method of the payment.</p> <p>Valid values for transmissionType can be found attached to the Source Account</p> 
    attr_accessor :transmission_type

    # <p>The identifier for the remote payments system if not Velo</p> 
    attr_accessor :remote_system_id

    # <p>Metadata about the payment that may be relevant to the specific rails or remote system making the payout</p> <p>The structure of the data will be dictated by the requirements of the payment rails</p> 
    attr_accessor :payment_metadata

    # Populated only if the payment was automatically withdrawn during instruction for being invalid
    attr_accessor :auto_withdrawn_reason_code

    # Indicates the 3rd party system involved in making this payment
    attr_accessor :rails_id

    # The id of the transaction associated with this payment if there was one
    attr_accessor :transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_id' => :'paymentId',
        :'remote_id' => :'remoteId',
        :'currency' => :'currency',
        :'amount' => :'amount',
        :'source_account_name' => :'sourceAccountName',
        :'payor_payment_id' => :'payorPaymentId',
        :'payment_memo' => :'paymentMemo',
        :'payee' => :'payee',
        :'withdrawable' => :'withdrawable',
        :'status' => :'status',
        :'transmission_type' => :'transmissionType',
        :'remote_system_id' => :'remoteSystemId',
        :'payment_metadata' => :'paymentMetadata',
        :'auto_withdrawn_reason_code' => :'autoWithdrawnReasonCode',
        :'rails_id' => :'railsId',
        :'transaction_id' => :'transactionId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_id' => :'String',
        :'remote_id' => :'String',
        :'currency' => :'String',
        :'amount' => :'Integer',
        :'source_account_name' => :'String',
        :'payor_payment_id' => :'String',
        :'payment_memo' => :'String',
        :'payee' => :'PayoutPayeeV3',
        :'withdrawable' => :'Boolean',
        :'status' => :'String',
        :'transmission_type' => :'String',
        :'remote_system_id' => :'String',
        :'payment_metadata' => :'String',
        :'auto_withdrawn_reason_code' => :'String',
        :'rails_id' => :'String',
        :'transaction_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PaymentV3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PaymentV3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      else
        self.payment_id = nil
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'source_account_name')
        self.source_account_name = attributes[:'source_account_name']
      end

      if attributes.key?(:'payor_payment_id')
        self.payor_payment_id = attributes[:'payor_payment_id']
      end

      if attributes.key?(:'payment_memo')
        self.payment_memo = attributes[:'payment_memo']
      end

      if attributes.key?(:'payee')
        self.payee = attributes[:'payee']
      end

      if attributes.key?(:'withdrawable')
        self.withdrawable = attributes[:'withdrawable']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
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

      if attributes.key?(:'auto_withdrawn_reason_code')
        self.auto_withdrawn_reason_code = attributes[:'auto_withdrawn_reason_code']
      end

      if attributes.key?(:'rails_id')
        self.rails_id = attributes[:'rails_id']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @payment_id.nil?
        invalid_properties.push('invalid value for "payment_id", payment_id cannot be nil.')
      end

      if !@currency.nil? && @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if !@currency.nil? && @currency.to_s.length < 3
        invalid_properties.push('invalid value for "currency", the character length must be great than or equal to 3.')
      end

      if !@payor_payment_id.nil? && @payor_payment_id.to_s.length > 40
        invalid_properties.push('invalid value for "payor_payment_id", the character length must be smaller than or equal to 40.')
      end

      if !@payor_payment_id.nil? && @payor_payment_id.to_s.length < 0
        invalid_properties.push('invalid value for "payor_payment_id", the character length must be great than or equal to 0.')
      end

      if !@payment_memo.nil? && @payment_memo.to_s.length > 40
        invalid_properties.push('invalid value for "payment_memo", the character length must be smaller than or equal to 40.')
      end

      if !@payment_memo.nil? && @payment_memo.to_s.length < 0
        invalid_properties.push('invalid value for "payment_memo", the character length must be great than or equal to 0.')
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
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @payment_id.nil?
      return false if !@currency.nil? && @currency.to_s.length > 3
      return false if !@currency.nil? && @currency.to_s.length < 3
      return false if !@payor_payment_id.nil? && @payor_payment_id.to_s.length > 40
      return false if !@payor_payment_id.nil? && @payor_payment_id.to_s.length < 0
      return false if !@payment_memo.nil? && @payment_memo.to_s.length > 40
      return false if !@payment_memo.nil? && @payment_memo.to_s.length < 0
      return false if !@remote_system_id.nil? && @remote_system_id.to_s.length > 100
      return false if !@remote_system_id.nil? && @remote_system_id.to_s.length < 1
      return false if !@payment_metadata.nil? && @payment_metadata.to_s.length > 512
      return false if !@payment_metadata.nil? && @payment_metadata.to_s.length < 0
      true
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

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] payor_payment_id Value to be assigned
    def payor_payment_id=(payor_payment_id)
      if payor_payment_id.nil?
        fail ArgumentError, 'payor_payment_id cannot be nil'
      end

      if payor_payment_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "payor_payment_id", the character length must be smaller than or equal to 40.'
      end

      if payor_payment_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "payor_payment_id", the character length must be great than or equal to 0.'
      end

      @payor_payment_id = payor_payment_id
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_memo Value to be assigned
    def payment_memo=(payment_memo)
      if payment_memo.nil?
        fail ArgumentError, 'payment_memo cannot be nil'
      end

      if payment_memo.to_s.length > 40
        fail ArgumentError, 'invalid value for "payment_memo", the character length must be smaller than or equal to 40.'
      end

      if payment_memo.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_memo", the character length must be great than or equal to 0.'
      end

      @payment_memo = payment_memo
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_system_id Value to be assigned
    def remote_system_id=(remote_system_id)
      if remote_system_id.nil?
        fail ArgumentError, 'remote_system_id cannot be nil'
      end

      if remote_system_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "remote_system_id", the character length must be smaller than or equal to 100.'
      end

      if remote_system_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "remote_system_id", the character length must be great than or equal to 1.'
      end

      @remote_system_id = remote_system_id
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_metadata Value to be assigned
    def payment_metadata=(payment_metadata)
      if payment_metadata.nil?
        fail ArgumentError, 'payment_metadata cannot be nil'
      end

      if payment_metadata.to_s.length > 512
        fail ArgumentError, 'invalid value for "payment_metadata", the character length must be smaller than or equal to 512.'
      end

      if payment_metadata.to_s.length < 0
        fail ArgumentError, 'invalid value for "payment_metadata", the character length must be great than or equal to 0.'
      end

      @payment_metadata = payment_metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_id == o.payment_id &&
          remote_id == o.remote_id &&
          currency == o.currency &&
          amount == o.amount &&
          source_account_name == o.source_account_name &&
          payor_payment_id == o.payor_payment_id &&
          payment_memo == o.payment_memo &&
          payee == o.payee &&
          withdrawable == o.withdrawable &&
          status == o.status &&
          transmission_type == o.transmission_type &&
          remote_system_id == o.remote_system_id &&
          payment_metadata == o.payment_metadata &&
          auto_withdrawn_reason_code == o.auto_withdrawn_reason_code &&
          rails_id == o.rails_id &&
          transaction_id == o.transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_id, remote_id, currency, amount, source_account_name, payor_payment_id, payment_memo, payee, withdrawable, status, transmission_type, remote_system_id, payment_metadata, auto_withdrawn_reason_code, rails_id, transaction_id].hash
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
