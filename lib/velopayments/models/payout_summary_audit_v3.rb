=begin
#Velo Payments APIs

### Terms and Definitions  Throughout this document and the Velo platform the following terms are used:  * **Payor.** An entity (typically a corporation) which wishes to pay funds to one or more payees via a payout. * **Payee.** The recipient of funds paid out by a payor. * **Payment.** A single transfer of funds from a payor to a payee. * **Payout.** A batch of Payments, typically used by a payor to logically group payments (e.g. by business day). Technically there need be no relationship between the payments in a payout - a single payout can contain payments to multiple payees and/or multiple payments to a single payee. * **Sandbox.** An integration environment provided by Velo Payments which offers a similar API experience to the production environment, but all funding and payment events are simulated, along with many other services such as OFAC sanctions list checking.  ## Overview  The Velo Payments API allows a payor to perform a number of operations. The following is a list of the main capabilities in a natural order of execution:  * Authenticate with the Velo platform * Maintain a collection of payees * Query the payor’s current balance of funds within the platform and perform additional funding * Issue payments to payees * Query the platform for a history of those payments  This document describes the main concepts and APIs required to get up and running with the Velo Payments platform. It is not an exhaustive API reference. For that, please see the separate Velo Payments API Reference.  ## API Considerations  The Velo Payments API is REST based and uses the JSON format for requests and responses.  Most calls are secured using OAuth 2 security and require a valid authentication access token for successful operation. See the Authentication section for details.  Where a dynamic value is required in the examples below, the {token} format is used, suggesting that the caller needs to supply the appropriate value of the token in question (without including the { or } characters).  Where curl examples are given, the –d @filename.json approach is used, indicating that the request body should be placed into a file named filename.json in the current directory. Each of the curl examples in this document should be considered a single line on the command-line, regardless of how they appear in print.  ## Authenticating with the Velo Platform  Once Velo backoffice staff have added your organization as a payor within the Velo platform sandbox, they will create you a payor Id, an API key and an API secret and share these with you in a secure manner.  You will need to use these values to authenticate with the Velo platform in order to gain access to the APIs. The steps to take are explained in the following:  create a string comprising the API key (e.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8) and API secret (e.g. c396b26b-137a-44fd-87f5-34631f8fd529) with a colon between them. E.g. 44a9537d-d55d-4b47-8082-14061c2bcdd8:c396b26b-137a-44fd-87f5-34631f8fd529  base64 encode this string. E.g.: NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  create an HTTP **Authorization** header with the value set to e.g. Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==  perform the Velo authentication REST call using the HTTP header created above e.g. via curl:  ```   curl -X POST \\   -H \"Content-Type: application/json\" \\   -H \"Authorization: Basic NDRhOTUzN2QtZDU1ZC00YjQ3LTgwODItMTQwNjFjMmJjZGQ4OmMzOTZiMjZiLTEzN2EtNDRmZC04N2Y1LTM0NjMxZjhmZDUyOQ==\" \\   'https://api.sandbox.velopayments.com/v1/authenticate?grant_type=client_credentials' ```  If successful, this call will result in a **200** HTTP status code and a response body such as:  ```   {     \"access_token\":\"19f6bafd-93fd-4747-b229-00507bbc991f\",     \"token_type\":\"bearer\",     \"expires_in\":1799,     \"scope\":\"...\"   } ``` ## API access following authentication Following successful authentication, the value of the access_token field in the response (indicated in green above) should then be presented with all subsequent API calls to allow the Velo platform to validate that the caller is authenticated.  This is achieved by setting the HTTP Authorization header with the value set to e.g. Bearer 19f6bafd-93fd-4747-b229-00507bbc991f such as the curl example below:  ```   -H \"Authorization: Bearer 19f6bafd-93fd-4747-b229-00507bbc991f \" ```  If you make other Velo API calls which require authorization but the Authorization header is missing or invalid then you will get a **401** HTTP status response. 

The version of the OpenAPI document: 2.19.116

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1-SNAPSHOT

=end

require 'date'

module VeloPayments
  class PayoutSummaryAuditV3
    attr_accessor :payout_id

    attr_accessor :payor_id

    attr_accessor :status

    attr_accessor :submitted_date_time

    attr_accessor :instructed_date_time

    attr_accessor :withdrawn_date_time

    attr_accessor :total_payments

    attr_accessor :total_incomplete_payments

    attr_accessor :total_failed_payments

    attr_accessor :source_account_summary

    attr_accessor :fx_summaries

    attr_accessor :payout_memo

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payout_id' => :'payoutId',
        :'payor_id' => :'payorId',
        :'status' => :'status',
        :'submitted_date_time' => :'submittedDateTime',
        :'instructed_date_time' => :'instructedDateTime',
        :'withdrawn_date_time' => :'withdrawnDateTime',
        :'total_payments' => :'totalPayments',
        :'total_incomplete_payments' => :'totalIncompletePayments',
        :'total_failed_payments' => :'totalFailedPayments',
        :'source_account_summary' => :'sourceAccountSummary',
        :'fx_summaries' => :'fxSummaries',
        :'payout_memo' => :'payoutMemo'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payout_id' => :'String',
        :'payor_id' => :'String',
        :'status' => :'PayoutStatusV3',
        :'submitted_date_time' => :'String',
        :'instructed_date_time' => :'String',
        :'withdrawn_date_time' => :'String',
        :'total_payments' => :'Integer',
        :'total_incomplete_payments' => :'Integer',
        :'total_failed_payments' => :'Integer',
        :'source_account_summary' => :'Array<SourceAccountSummaryV3>',
        :'fx_summaries' => :'Array<FxSummaryV3>',
        :'payout_memo' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PayoutSummaryAuditV3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PayoutSummaryAuditV3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payout_id')
        self.payout_id = attributes[:'payout_id']
      end

      if attributes.key?(:'payor_id')
        self.payor_id = attributes[:'payor_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'submitted_date_time')
        self.submitted_date_time = attributes[:'submitted_date_time']
      end

      if attributes.key?(:'instructed_date_time')
        self.instructed_date_time = attributes[:'instructed_date_time']
      end

      if attributes.key?(:'withdrawn_date_time')
        self.withdrawn_date_time = attributes[:'withdrawn_date_time']
      end

      if attributes.key?(:'total_payments')
        self.total_payments = attributes[:'total_payments']
      end

      if attributes.key?(:'total_incomplete_payments')
        self.total_incomplete_payments = attributes[:'total_incomplete_payments']
      end

      if attributes.key?(:'total_failed_payments')
        self.total_failed_payments = attributes[:'total_failed_payments']
      end

      if attributes.key?(:'source_account_summary')
        if (value = attributes[:'source_account_summary']).is_a?(Array)
          self.source_account_summary = value
        end
      end

      if attributes.key?(:'fx_summaries')
        if (value = attributes[:'fx_summaries']).is_a?(Array)
          self.fx_summaries = value
        end
      end

      if attributes.key?(:'payout_memo')
        self.payout_memo = attributes[:'payout_memo']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @payout_id.nil?
        invalid_properties.push('invalid value for "payout_id", payout_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @submitted_date_time.nil?
        invalid_properties.push('invalid value for "submitted_date_time", submitted_date_time cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payout_id.nil?
      return false if @status.nil?
      return false if @submitted_date_time.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payout_id == o.payout_id &&
          payor_id == o.payor_id &&
          status == o.status &&
          submitted_date_time == o.submitted_date_time &&
          instructed_date_time == o.instructed_date_time &&
          withdrawn_date_time == o.withdrawn_date_time &&
          total_payments == o.total_payments &&
          total_incomplete_payments == o.total_incomplete_payments &&
          total_failed_payments == o.total_failed_payments &&
          source_account_summary == o.source_account_summary &&
          fx_summaries == o.fx_summaries &&
          payout_memo == o.payout_memo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payout_id, payor_id, status, submitted_date_time, instructed_date_time, withdrawn_date_time, total_payments, total_incomplete_payments, total_failed_payments, source_account_summary, fx_summaries, payout_memo].hash
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
