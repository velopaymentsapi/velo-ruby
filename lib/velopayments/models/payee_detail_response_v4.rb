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
  class PayeeDetailResponseV4
    attr_accessor :payee_id

    attr_accessor :payor_refs

    # A list of the Payee's payment channels in their preferred order
    attr_accessor :payment_channels

    attr_accessor :email

    # Payee onboarded status. One of the following values: CREATED, INVITED, REGISTERED, ONBOARDED
    attr_accessor :onboarded_status

    # Current watchlist status. One of the following values: NONE, PENDING, REVIEW, PASSED, FAILED
    attr_accessor :watchlist_status

    attr_accessor :watchlist_override_expires_at_timestamp

    attr_accessor :watchlist_override_comment

    # An IETF BCP 47 language code which has been configured for use within this Velo environment.<BR> See the /v1/supportedLanguages endpoint to list the available codes for an environment. 
    attr_accessor :language

    attr_accessor :created

    attr_accessor :country

    attr_accessor :display_name

    # Type of Payee. One of the following values: Individual, Company
    attr_accessor :payee_type

    attr_accessor :disabled

    attr_accessor :disabled_comment

    attr_accessor :disabled_updated_timestamp

    attr_accessor :address

    attr_accessor :individual

    attr_accessor :company

    attr_accessor :cellphone_number

    # The id of the payor if the payee is managed
    attr_accessor :managed_by_payor_id

    attr_accessor :watchlist_status_updated_timestamp

    attr_accessor :grace_period_end_date

    attr_accessor :enhanced_kyc_completed

    attr_accessor :kyc_completed_timestamp

    attr_accessor :pause_payment

    attr_accessor :pause_payment_timestamp

    attr_accessor :marketing_opt_in_decision

    attr_accessor :marketing_opt_in_timestamp

    # The timestamp when the payee last accepted T&Cs
    attr_accessor :accept_terms_and_conditions_timestamp

    attr_accessor :challenge

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payee_id' => :'payeeId',
        :'payor_refs' => :'payorRefs',
        :'payment_channels' => :'paymentChannels',
        :'email' => :'email',
        :'onboarded_status' => :'onboardedStatus',
        :'watchlist_status' => :'watchlistStatus',
        :'watchlist_override_expires_at_timestamp' => :'watchlistOverrideExpiresAtTimestamp',
        :'watchlist_override_comment' => :'watchlistOverrideComment',
        :'language' => :'language',
        :'created' => :'created',
        :'country' => :'country',
        :'display_name' => :'displayName',
        :'payee_type' => :'payeeType',
        :'disabled' => :'disabled',
        :'disabled_comment' => :'disabledComment',
        :'disabled_updated_timestamp' => :'disabledUpdatedTimestamp',
        :'address' => :'address',
        :'individual' => :'individual',
        :'company' => :'company',
        :'cellphone_number' => :'cellphoneNumber',
        :'managed_by_payor_id' => :'managedByPayorId',
        :'watchlist_status_updated_timestamp' => :'watchlistStatusUpdatedTimestamp',
        :'grace_period_end_date' => :'gracePeriodEndDate',
        :'enhanced_kyc_completed' => :'enhancedKycCompleted',
        :'kyc_completed_timestamp' => :'kycCompletedTimestamp',
        :'pause_payment' => :'pausePayment',
        :'pause_payment_timestamp' => :'pausePaymentTimestamp',
        :'marketing_opt_in_decision' => :'marketingOptInDecision',
        :'marketing_opt_in_timestamp' => :'marketingOptInTimestamp',
        :'accept_terms_and_conditions_timestamp' => :'acceptTermsAndConditionsTimestamp',
        :'challenge' => :'challenge'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payee_id' => :'String',
        :'payor_refs' => :'Array<PayeePayorRefV4>',
        :'payment_channels' => :'Array<PaymentChannelSummaryV4>',
        :'email' => :'String',
        :'onboarded_status' => :'String',
        :'watchlist_status' => :'String',
        :'watchlist_override_expires_at_timestamp' => :'Time',
        :'watchlist_override_comment' => :'String',
        :'language' => :'String',
        :'created' => :'Time',
        :'country' => :'String',
        :'display_name' => :'String',
        :'payee_type' => :'String',
        :'disabled' => :'Boolean',
        :'disabled_comment' => :'String',
        :'disabled_updated_timestamp' => :'Time',
        :'address' => :'PayeeAddressV4',
        :'individual' => :'IndividualV4',
        :'company' => :'CompanyV4',
        :'cellphone_number' => :'String',
        :'managed_by_payor_id' => :'String',
        :'watchlist_status_updated_timestamp' => :'String',
        :'grace_period_end_date' => :'Date',
        :'enhanced_kyc_completed' => :'Boolean',
        :'kyc_completed_timestamp' => :'String',
        :'pause_payment' => :'Boolean',
        :'pause_payment_timestamp' => :'String',
        :'marketing_opt_in_decision' => :'Boolean',
        :'marketing_opt_in_timestamp' => :'String',
        :'accept_terms_and_conditions_timestamp' => :'Time',
        :'challenge' => :'ChallengeV4'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'payor_refs',
        :'payment_channels',
        :'email',
        :'watchlist_override_expires_at_timestamp',
        :'company',
        :'watchlist_status_updated_timestamp',
        :'grace_period_end_date',
        :'kyc_completed_timestamp',
        :'pause_payment_timestamp',
        :'marketing_opt_in_timestamp',
        :'accept_terms_and_conditions_timestamp',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeloPayments::PayeeDetailResponseV4` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeloPayments::PayeeDetailResponseV4`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.key?(:'payor_refs')
        if (value = attributes[:'payor_refs']).is_a?(Array)
          self.payor_refs = value
        end
      end

      if attributes.key?(:'payment_channels')
        if (value = attributes[:'payment_channels']).is_a?(Array)
          self.payment_channels = value
        end
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'onboarded_status')
        self.onboarded_status = attributes[:'onboarded_status']
      end

      if attributes.key?(:'watchlist_status')
        self.watchlist_status = attributes[:'watchlist_status']
      end

      if attributes.key?(:'watchlist_override_expires_at_timestamp')
        self.watchlist_override_expires_at_timestamp = attributes[:'watchlist_override_expires_at_timestamp']
      end

      if attributes.key?(:'watchlist_override_comment')
        self.watchlist_override_comment = attributes[:'watchlist_override_comment']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'payee_type')
        self.payee_type = attributes[:'payee_type']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.key?(:'disabled_comment')
        self.disabled_comment = attributes[:'disabled_comment']
      end

      if attributes.key?(:'disabled_updated_timestamp')
        self.disabled_updated_timestamp = attributes[:'disabled_updated_timestamp']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'individual')
        self.individual = attributes[:'individual']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'cellphone_number')
        self.cellphone_number = attributes[:'cellphone_number']
      end

      if attributes.key?(:'managed_by_payor_id')
        self.managed_by_payor_id = attributes[:'managed_by_payor_id']
      end

      if attributes.key?(:'watchlist_status_updated_timestamp')
        self.watchlist_status_updated_timestamp = attributes[:'watchlist_status_updated_timestamp']
      end

      if attributes.key?(:'grace_period_end_date')
        self.grace_period_end_date = attributes[:'grace_period_end_date']
      end

      if attributes.key?(:'enhanced_kyc_completed')
        self.enhanced_kyc_completed = attributes[:'enhanced_kyc_completed']
      end

      if attributes.key?(:'kyc_completed_timestamp')
        self.kyc_completed_timestamp = attributes[:'kyc_completed_timestamp']
      end

      if attributes.key?(:'pause_payment')
        self.pause_payment = attributes[:'pause_payment']
      end

      if attributes.key?(:'pause_payment_timestamp')
        self.pause_payment_timestamp = attributes[:'pause_payment_timestamp']
      end

      if attributes.key?(:'marketing_opt_in_decision')
        self.marketing_opt_in_decision = attributes[:'marketing_opt_in_decision']
      end

      if attributes.key?(:'marketing_opt_in_timestamp')
        self.marketing_opt_in_timestamp = attributes[:'marketing_opt_in_timestamp']
      end

      if attributes.key?(:'accept_terms_and_conditions_timestamp')
        self.accept_terms_and_conditions_timestamp = attributes[:'accept_terms_and_conditions_timestamp']
      end

      if attributes.key?(:'challenge')
        self.challenge = attributes[:'challenge']
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
          payee_id == o.payee_id &&
          payor_refs == o.payor_refs &&
          payment_channels == o.payment_channels &&
          email == o.email &&
          onboarded_status == o.onboarded_status &&
          watchlist_status == o.watchlist_status &&
          watchlist_override_expires_at_timestamp == o.watchlist_override_expires_at_timestamp &&
          watchlist_override_comment == o.watchlist_override_comment &&
          language == o.language &&
          created == o.created &&
          country == o.country &&
          display_name == o.display_name &&
          payee_type == o.payee_type &&
          disabled == o.disabled &&
          disabled_comment == o.disabled_comment &&
          disabled_updated_timestamp == o.disabled_updated_timestamp &&
          address == o.address &&
          individual == o.individual &&
          company == o.company &&
          cellphone_number == o.cellphone_number &&
          managed_by_payor_id == o.managed_by_payor_id &&
          watchlist_status_updated_timestamp == o.watchlist_status_updated_timestamp &&
          grace_period_end_date == o.grace_period_end_date &&
          enhanced_kyc_completed == o.enhanced_kyc_completed &&
          kyc_completed_timestamp == o.kyc_completed_timestamp &&
          pause_payment == o.pause_payment &&
          pause_payment_timestamp == o.pause_payment_timestamp &&
          marketing_opt_in_decision == o.marketing_opt_in_decision &&
          marketing_opt_in_timestamp == o.marketing_opt_in_timestamp &&
          accept_terms_and_conditions_timestamp == o.accept_terms_and_conditions_timestamp &&
          challenge == o.challenge
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payee_id, payor_refs, payment_channels, email, onboarded_status, watchlist_status, watchlist_override_expires_at_timestamp, watchlist_override_comment, language, created, country, display_name, payee_type, disabled, disabled_comment, disabled_updated_timestamp, address, individual, company, cellphone_number, managed_by_payor_id, watchlist_status_updated_timestamp, grace_period_end_date, enhanced_kyc_completed, kyc_completed_timestamp, pause_payment, pause_payment_timestamp, marketing_opt_in_decision, marketing_opt_in_timestamp, accept_terms_and_conditions_timestamp, challenge].hash
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
