=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.18.31

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3-SNAPSHOT

=end

require 'date'

module VeloPayments
  class PaymentResponseV3
    # The id of the payment
    attr_accessor :payment_id

    # The id of the paymeee
    attr_accessor :payee_id

    # The id of the payor
    attr_accessor :payor_id

    # The name of the payor
    attr_accessor :payor_name

    # The quote Id used for the FX
    attr_accessor :quote_id

    # The id of the source account from which the payment was taken
    attr_accessor :source_account_id

    # The name of the source account from which the payment was taken
    attr_accessor :source_account_name

    # The remote id by which the payor refers to the payee. Only populated once payment is confirmed
    attr_accessor :remote_id

    # The source amount for the payment (amount debited to make the payment)
    attr_accessor :source_amount

    attr_accessor :source_currency

    # The amount which the payee will receive
    attr_accessor :payment_amount

    attr_accessor :payment_currency

    # The FX rate for the payment, if FX was involved. **Note** that (depending on the role of the caller) this information may not be displayed
    attr_accessor :rate

    # The inverted FX rate for the payment, if FX was involved. **Note** that (depending on the role of the caller) this information may not be displayed
    attr_accessor :inverted_rate

    attr_accessor :submitted_date_time

    attr_accessor :status

    # The funding status of the payment
    attr_accessor :funding_status

    # The routing number for the payment.
    attr_accessor :routing_number

    # The account number for the account which will receive the payment.
    attr_accessor :account_number

    # The iban for the payment.
    attr_accessor :iban

    # The payment memo set by the payor
    attr_accessor :payment_memo

    # ACH file payment was submitted in, if applicable
    attr_accessor :filename_reference

    # Individual Identification Number assigned to the payment in the ACH file, if applicable
    attr_accessor :individual_identification_number

    # Trace Number assigned to the payment in the ACH file, if applicable
    attr_accessor :trace_number

    attr_accessor :payor_payment_id

    attr_accessor :payment_channel_id

    attr_accessor :payment_channel_name

    attr_accessor :account_name

    # The rails ID. Default value is RAILS ID UNAVAILABLE when not populated.
    attr_accessor :rails_id

    # The country code of the payment channel.
    attr_accessor :country_code

    attr_accessor :events

    # The return cost if a returned payment.
    attr_accessor :return_cost

    attr_accessor :return_reason

    attr_accessor :rails_payment_id

    attr_accessor :rails_batch_id

    attr_accessor :rejection_reason

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
        :'payment_id' => :'paymentId',
        :'payee_id' => :'payeeId',
        :'payor_id' => :'payorId',
        :'payor_name' => :'payorName',
        :'quote_id' => :'quoteId',
        :'source_account_id' => :'sourceAccountId',
        :'source_account_name' => :'sourceAccountName',
        :'remote_id' => :'remoteId',
        :'source_amount' => :'sourceAmount',
        :'source_currency' => :'sourceCurrency',
        :'payment_amount' => :'paymentAmount',
        :'payment_currency' => :'paymentCurrency',
        :'rate' => :'rate',
        :'inverted_rate' => :'invertedRate',
        :'submitted_date_time' => :'submittedDateTime',
        :'status' => :'status',
        :'funding_status' => :'fundingStatus',
        :'routing_number' => :'routingNumber',
        :'account_number' => :'accountNumber',
        :'iban' => :'iban',
        :'payment_memo' => :'paymentMemo',
        :'filename_reference' => :'filenameReference',
        :'individual_identification_number' => :'individualIdentificationNumber',
        :'trace_number' => :'traceNumber',
        :'payor_payment_id' => :'payorPaymentId',
        :'payment_channel_id' => :'paymentChannelId',
        :'payment_channel_name' => :'paymentChannelName',
        :'account_name' => :'accountName',
        :'rails_id' => :'railsId',
        :'country_code' => :'countryCode',
        :'events' => :'events',
        :'return_cost' => :'returnCost',
        :'return_reason' => :'returnReason',
        :'rails_payment_id' => :'railsPaymentId',
        :'rails_batch_id' => :'railsBatchId',
        :'rejection_reason' => :'rejectionReason'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_id' => :'String',
        :'payee_id' => :'String',
        :'payor_id' => :'String',
        :'payor_name' => :'String',
        :'quote_id' => :'String',
        :'source_account_id' => :'String',
        :'source_account_name' => :'String',
        :'remote_id' => :'String',
        :'source_amount' => :'Integer',
        :'source_currency' => :'PaymentAuditCurrencyV3',
        :'payment_amount' => :'Integer',
        :'payment_currency' => :'PaymentAuditCurrencyV3',
        :'rate' => :'Float',
        :'inverted_rate' => :'Float',
        :'submitted_date_time' => :'DateTime',
        :'status' => :'String',
        :'funding_status' => :'String',
        :'routing_number' => :'String',
        :'account_number' => :'String',
        :'iban' => :'String',
        :'payment_memo' => :'String',
        :'filename_reference' => :'String',
        :'individual_identification_number' => :'String',
        :'trace_number' => :'String',
        :'payor_payment_id' => :'String',
        :'payment_channel_id' => :'String',
        :'payment_channel_name' => :'String',
        :'account_name' => :'String',
        :'rails_id' => :'String',
        :'country_code' => :'String',
        :'events' => :'Array<PaymentEventResponseV3>',
        :'return_cost' => :'Integer',
        :'return_reason' => :'String',
        :'rails_payment_id' => :'String',
        :'rails_batch_id' => :'String',
        :'rejection_reason' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PaymentResponseV3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PaymentResponseV3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.key?(:'payor_id')
        self.payor_id = attributes[:'payor_id']
      end

      if attributes.key?(:'payor_name')
        self.payor_name = attributes[:'payor_name']
      end

      if attributes.key?(:'quote_id')
        self.quote_id = attributes[:'quote_id']
      end

      if attributes.key?(:'source_account_id')
        self.source_account_id = attributes[:'source_account_id']
      end

      if attributes.key?(:'source_account_name')
        self.source_account_name = attributes[:'source_account_name']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'source_amount')
        self.source_amount = attributes[:'source_amount']
      end

      if attributes.key?(:'source_currency')
        self.source_currency = attributes[:'source_currency']
      end

      if attributes.key?(:'payment_amount')
        self.payment_amount = attributes[:'payment_amount']
      end

      if attributes.key?(:'payment_currency')
        self.payment_currency = attributes[:'payment_currency']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'inverted_rate')
        self.inverted_rate = attributes[:'inverted_rate']
      end

      if attributes.key?(:'submitted_date_time')
        self.submitted_date_time = attributes[:'submitted_date_time']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'funding_status')
        self.funding_status = attributes[:'funding_status']
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

      if attributes.key?(:'payment_memo')
        self.payment_memo = attributes[:'payment_memo']
      end

      if attributes.key?(:'filename_reference')
        self.filename_reference = attributes[:'filename_reference']
      end

      if attributes.key?(:'individual_identification_number')
        self.individual_identification_number = attributes[:'individual_identification_number']
      end

      if attributes.key?(:'trace_number')
        self.trace_number = attributes[:'trace_number']
      end

      if attributes.key?(:'payor_payment_id')
        self.payor_payment_id = attributes[:'payor_payment_id']
      end

      if attributes.key?(:'payment_channel_id')
        self.payment_channel_id = attributes[:'payment_channel_id']
      end

      if attributes.key?(:'payment_channel_name')
        self.payment_channel_name = attributes[:'payment_channel_name']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'rails_id')
        self.rails_id = attributes[:'rails_id']
      else
        self.rails_id = 'RAILS ID UNAVAILABLE'
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
      end

      if attributes.key?(:'return_cost')
        self.return_cost = attributes[:'return_cost']
      end

      if attributes.key?(:'return_reason')
        self.return_reason = attributes[:'return_reason']
      end

      if attributes.key?(:'rails_payment_id')
        self.rails_payment_id = attributes[:'rails_payment_id']
      end

      if attributes.key?(:'rails_batch_id')
        self.rails_batch_id = attributes[:'rails_batch_id']
      end

      if attributes.key?(:'rejection_reason')
        self.rejection_reason = attributes[:'rejection_reason']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @payment_id.nil?
        invalid_properties.push('invalid value for "payment_id", payment_id cannot be nil.')
      end

      if @payee_id.nil?
        invalid_properties.push('invalid value for "payee_id", payee_id cannot be nil.')
      end

      if @payor_id.nil?
        invalid_properties.push('invalid value for "payor_id", payor_id cannot be nil.')
      end

      if @quote_id.nil?
        invalid_properties.push('invalid value for "quote_id", quote_id cannot be nil.')
      end

      if @source_account_id.nil?
        invalid_properties.push('invalid value for "source_account_id", source_account_id cannot be nil.')
      end

      if @payment_amount.nil?
        invalid_properties.push('invalid value for "payment_amount", payment_amount cannot be nil.')
      end

      if @submitted_date_time.nil?
        invalid_properties.push('invalid value for "submitted_date_time", submitted_date_time cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @funding_status.nil?
        invalid_properties.push('invalid value for "funding_status", funding_status cannot be nil.')
      end

      if @rails_id.nil?
        invalid_properties.push('invalid value for "rails_id", rails_id cannot be nil.')
      end

      if @events.nil?
        invalid_properties.push('invalid value for "events", events cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_id.nil?
      return false if @payee_id.nil?
      return false if @payor_id.nil?
      return false if @quote_id.nil?
      return false if @source_account_id.nil?
      return false if @payment_amount.nil?
      return false if @submitted_date_time.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["ACCEPTED", "AWAITING_FUNDS", "FUNDED", "UNFUNDED", "BANK_PAYMENT_REQUESTED", "REJECTED", "ACCEPTED_BY_RAILS", "CONFIRMED", "FAILED", "WITHDRAWN"])
      return false unless status_validator.valid?(@status)
      return false if @funding_status.nil?
      funding_status_validator = EnumAttributeValidator.new('String', ["FUNDED", "INSTRUCTED", "UNFUNDED"])
      return false unless funding_status_validator.valid?(@funding_status)
      return false if @rails_id.nil?
      return false if @events.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACCEPTED", "AWAITING_FUNDS", "FUNDED", "UNFUNDED", "BANK_PAYMENT_REQUESTED", "REJECTED", "ACCEPTED_BY_RAILS", "CONFIRMED", "FAILED", "WITHDRAWN"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_status Object to be assigned
    def funding_status=(funding_status)
      validator = EnumAttributeValidator.new('String', ["FUNDED", "INSTRUCTED", "UNFUNDED"])
      unless validator.valid?(funding_status)
        fail ArgumentError, "invalid value for \"funding_status\", must be one of #{validator.allowable_values}."
      end
      @funding_status = funding_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_id == o.payment_id &&
          payee_id == o.payee_id &&
          payor_id == o.payor_id &&
          payor_name == o.payor_name &&
          quote_id == o.quote_id &&
          source_account_id == o.source_account_id &&
          source_account_name == o.source_account_name &&
          remote_id == o.remote_id &&
          source_amount == o.source_amount &&
          source_currency == o.source_currency &&
          payment_amount == o.payment_amount &&
          payment_currency == o.payment_currency &&
          rate == o.rate &&
          inverted_rate == o.inverted_rate &&
          submitted_date_time == o.submitted_date_time &&
          status == o.status &&
          funding_status == o.funding_status &&
          routing_number == o.routing_number &&
          account_number == o.account_number &&
          iban == o.iban &&
          payment_memo == o.payment_memo &&
          filename_reference == o.filename_reference &&
          individual_identification_number == o.individual_identification_number &&
          trace_number == o.trace_number &&
          payor_payment_id == o.payor_payment_id &&
          payment_channel_id == o.payment_channel_id &&
          payment_channel_name == o.payment_channel_name &&
          account_name == o.account_name &&
          rails_id == o.rails_id &&
          country_code == o.country_code &&
          events == o.events &&
          return_cost == o.return_cost &&
          return_reason == o.return_reason &&
          rails_payment_id == o.rails_payment_id &&
          rails_batch_id == o.rails_batch_id &&
          rejection_reason == o.rejection_reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_id, payee_id, payor_id, payor_name, quote_id, source_account_id, source_account_name, remote_id, source_amount, source_currency, payment_amount, payment_currency, rate, inverted_rate, submitted_date_time, status, funding_status, routing_number, account_number, iban, payment_memo, filename_reference, individual_identification_number, trace_number, payor_payment_id, payment_channel_id, payment_channel_name, account_name, rails_id, country_code, events, return_cost, return_reason, rails_payment_id, rails_batch_id, rejection_reason].hash
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
