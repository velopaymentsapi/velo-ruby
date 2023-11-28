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
  class PayorAmlTransactionV3
    attr_accessor :transaction_date

    attr_accessor :transaction_time

    attr_accessor :report_transaction_type

    attr_accessor :debit

    # ISO 4217 3 character currency code
    attr_accessor :debit_currency

    attr_accessor :credit

    # ISO 4217 3 character currency code
    attr_accessor :credit_currency

    attr_accessor :return_fee

    # ISO 4217 3 character currency code
    attr_accessor :return_fee_currency

    attr_accessor :return_fee_description

    attr_accessor :return_code

    attr_accessor :return_description

    attr_accessor :funding_type

    attr_accessor :date_funding_requested

    # Remote ID of the Payee, set by Payor
    attr_accessor :remote_id

    attr_accessor :payee_type

    attr_accessor :source_account

    attr_accessor :payment_amount

    # ISO 4217 3 character currency code
    attr_accessor :payment_currency

    attr_accessor :payment_memo

    attr_accessor :payment_rails

    attr_accessor :payor_payment_id

    attr_accessor :payment_status

    attr_accessor :reject_reason

    attr_accessor :fx_applied

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transaction_date' => :'transactionDate',
        :'transaction_time' => :'transactionTime',
        :'report_transaction_type' => :'reportTransactionType',
        :'debit' => :'debit',
        :'debit_currency' => :'debitCurrency',
        :'credit' => :'credit',
        :'credit_currency' => :'creditCurrency',
        :'return_fee' => :'returnFee',
        :'return_fee_currency' => :'returnFeeCurrency',
        :'return_fee_description' => :'returnFeeDescription',
        :'return_code' => :'returnCode',
        :'return_description' => :'returnDescription',
        :'funding_type' => :'fundingType',
        :'date_funding_requested' => :'dateFundingRequested',
        :'remote_id' => :'remoteId',
        :'payee_type' => :'payeeType',
        :'source_account' => :'sourceAccount',
        :'payment_amount' => :'paymentAmount',
        :'payment_currency' => :'paymentCurrency',
        :'payment_memo' => :'paymentMemo',
        :'payment_rails' => :'paymentRails',
        :'payor_payment_id' => :'payorPaymentId',
        :'payment_status' => :'paymentStatus',
        :'reject_reason' => :'rejectReason',
        :'fx_applied' => :'fxApplied'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'transaction_date' => :'Date',
        :'transaction_time' => :'String',
        :'report_transaction_type' => :'String',
        :'debit' => :'Integer',
        :'debit_currency' => :'String',
        :'credit' => :'Integer',
        :'credit_currency' => :'String',
        :'return_fee' => :'String',
        :'return_fee_currency' => :'String',
        :'return_fee_description' => :'String',
        :'return_code' => :'String',
        :'return_description' => :'String',
        :'funding_type' => :'String',
        :'date_funding_requested' => :'String',
        :'remote_id' => :'String',
        :'payee_type' => :'String',
        :'source_account' => :'String',
        :'payment_amount' => :'Integer',
        :'payment_currency' => :'String',
        :'payment_memo' => :'String',
        :'payment_rails' => :'String',
        :'payor_payment_id' => :'String',
        :'payment_status' => :'String',
        :'reject_reason' => :'String',
        :'fx_applied' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PayorAmlTransactionV3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PayorAmlTransactionV3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'transaction_date')
        self.transaction_date = attributes[:'transaction_date']
      end

      if attributes.key?(:'transaction_time')
        self.transaction_time = attributes[:'transaction_time']
      end

      if attributes.key?(:'report_transaction_type')
        self.report_transaction_type = attributes[:'report_transaction_type']
      end

      if attributes.key?(:'debit')
        self.debit = attributes[:'debit']
      end

      if attributes.key?(:'debit_currency')
        self.debit_currency = attributes[:'debit_currency']
      end

      if attributes.key?(:'credit')
        self.credit = attributes[:'credit']
      end

      if attributes.key?(:'credit_currency')
        self.credit_currency = attributes[:'credit_currency']
      end

      if attributes.key?(:'return_fee')
        self.return_fee = attributes[:'return_fee']
      end

      if attributes.key?(:'return_fee_currency')
        self.return_fee_currency = attributes[:'return_fee_currency']
      end

      if attributes.key?(:'return_fee_description')
        self.return_fee_description = attributes[:'return_fee_description']
      end

      if attributes.key?(:'return_code')
        self.return_code = attributes[:'return_code']
      end

      if attributes.key?(:'return_description')
        self.return_description = attributes[:'return_description']
      end

      if attributes.key?(:'funding_type')
        self.funding_type = attributes[:'funding_type']
      end

      if attributes.key?(:'date_funding_requested')
        self.date_funding_requested = attributes[:'date_funding_requested']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'payee_type')
        self.payee_type = attributes[:'payee_type']
      end

      if attributes.key?(:'source_account')
        self.source_account = attributes[:'source_account']
      end

      if attributes.key?(:'payment_amount')
        self.payment_amount = attributes[:'payment_amount']
      end

      if attributes.key?(:'payment_currency')
        self.payment_currency = attributes[:'payment_currency']
      end

      if attributes.key?(:'payment_memo')
        self.payment_memo = attributes[:'payment_memo']
      end

      if attributes.key?(:'payment_rails')
        self.payment_rails = attributes[:'payment_rails']
      end

      if attributes.key?(:'payor_payment_id')
        self.payor_payment_id = attributes[:'payor_payment_id']
      end

      if attributes.key?(:'payment_status')
        self.payment_status = attributes[:'payment_status']
      end

      if attributes.key?(:'reject_reason')
        self.reject_reason = attributes[:'reject_reason']
      end

      if attributes.key?(:'fx_applied')
        self.fx_applied = attributes[:'fx_applied']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transaction_date == o.transaction_date &&
          transaction_time == o.transaction_time &&
          report_transaction_type == o.report_transaction_type &&
          debit == o.debit &&
          debit_currency == o.debit_currency &&
          credit == o.credit &&
          credit_currency == o.credit_currency &&
          return_fee == o.return_fee &&
          return_fee_currency == o.return_fee_currency &&
          return_fee_description == o.return_fee_description &&
          return_code == o.return_code &&
          return_description == o.return_description &&
          funding_type == o.funding_type &&
          date_funding_requested == o.date_funding_requested &&
          remote_id == o.remote_id &&
          payee_type == o.payee_type &&
          source_account == o.source_account &&
          payment_amount == o.payment_amount &&
          payment_currency == o.payment_currency &&
          payment_memo == o.payment_memo &&
          payment_rails == o.payment_rails &&
          payor_payment_id == o.payor_payment_id &&
          payment_status == o.payment_status &&
          reject_reason == o.reject_reason &&
          fx_applied == o.fx_applied
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [transaction_date, transaction_time, report_transaction_type, debit, debit_currency, credit, credit_currency, return_fee, return_fee_currency, return_fee_description, return_code, return_description, funding_type, date_funding_requested, remote_id, payee_type, source_account, payment_amount, payment_currency, payment_memo, payment_rails, payor_payment_id, payment_status, reject_reason, fx_applied].hash
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
