=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OpenPipette
  class GetNotesResponse200DataInner
    # The ID of the note
    attr_accessor :id

    # Whether the note is active or deleted
    attr_accessor :active_flag

    # The creation date and time of the note
    attr_accessor :add_time

    # The content of the note in HTML format. Subject to sanitization on the back-end.
    attr_accessor :content

    attr_accessor :deal

    # The ID of the lead the note is attached to
    attr_accessor :lead_id

    # The ID of the deal the note is attached to
    attr_accessor :deal_id

    # The ID of the user who last updated the note
    attr_accessor :last_update_user_id

    # The ID of the organization the note is attached to
    attr_accessor :org_id

    attr_accessor :organization

    attr_accessor :person

    # The ID of the person the note is attached to
    attr_accessor :person_id

    # If true, the results are filtered by note to deal pinning state
    attr_accessor :pinned_to_deal_flag

    # If true, the results are filtered by note to organization pinning state
    attr_accessor :pinned_to_organization_flag

    # If true, the results are filtered by note to person pinning state
    attr_accessor :pinned_to_person_flag

    # The last updated date and time of the note
    attr_accessor :update_time

    attr_accessor :user

    # The ID of the note creator
    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'active_flag' => :'active_flag',
        :'add_time' => :'add_time',
        :'content' => :'content',
        :'deal' => :'deal',
        :'lead_id' => :'lead_id',
        :'deal_id' => :'deal_id',
        :'last_update_user_id' => :'last_update_user_id',
        :'org_id' => :'org_id',
        :'organization' => :'organization',
        :'person' => :'person',
        :'person_id' => :'person_id',
        :'pinned_to_deal_flag' => :'pinned_to_deal_flag',
        :'pinned_to_organization_flag' => :'pinned_to_organization_flag',
        :'pinned_to_person_flag' => :'pinned_to_person_flag',
        :'update_time' => :'update_time',
        :'user' => :'user',
        :'user_id' => :'user_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'active_flag' => :'Boolean',
        :'add_time' => :'String',
        :'content' => :'String',
        :'deal' => :'GetNotesResponse200DataInnerDeal',
        :'lead_id' => :'String',
        :'deal_id' => :'Integer',
        :'last_update_user_id' => :'Integer',
        :'org_id' => :'Integer',
        :'organization' => :'GetNotesResponse200DataInnerOrganization',
        :'person' => :'GetNotesResponse200DataInnerPerson',
        :'person_id' => :'Integer',
        :'pinned_to_deal_flag' => :'Boolean',
        :'pinned_to_organization_flag' => :'Boolean',
        :'pinned_to_person_flag' => :'Boolean',
        :'update_time' => :'String',
        :'user' => :'GetNotesResponse200DataInnerUser',
        :'user_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::GetNotesResponse200DataInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::GetNotesResponse200DataInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'active_flag')
        self.active_flag = attributes[:'active_flag']
      end

      if attributes.key?(:'add_time')
        self.add_time = attributes[:'add_time']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'deal')
        self.deal = attributes[:'deal']
      end

      if attributes.key?(:'lead_id')
        self.lead_id = attributes[:'lead_id']
      end

      if attributes.key?(:'deal_id')
        self.deal_id = attributes[:'deal_id']
      end

      if attributes.key?(:'last_update_user_id')
        self.last_update_user_id = attributes[:'last_update_user_id']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'person')
        self.person = attributes[:'person']
      end

      if attributes.key?(:'person_id')
        self.person_id = attributes[:'person_id']
      end

      if attributes.key?(:'pinned_to_deal_flag')
        self.pinned_to_deal_flag = attributes[:'pinned_to_deal_flag']
      end

      if attributes.key?(:'pinned_to_organization_flag')
        self.pinned_to_organization_flag = attributes[:'pinned_to_organization_flag']
      end

      if attributes.key?(:'pinned_to_person_flag')
        self.pinned_to_person_flag = attributes[:'pinned_to_person_flag']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
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
          id == o.id &&
          active_flag == o.active_flag &&
          add_time == o.add_time &&
          content == o.content &&
          deal == o.deal &&
          lead_id == o.lead_id &&
          deal_id == o.deal_id &&
          last_update_user_id == o.last_update_user_id &&
          org_id == o.org_id &&
          organization == o.organization &&
          person == o.person &&
          person_id == o.person_id &&
          pinned_to_deal_flag == o.pinned_to_deal_flag &&
          pinned_to_organization_flag == o.pinned_to_organization_flag &&
          pinned_to_person_flag == o.pinned_to_person_flag &&
          update_time == o.update_time &&
          user == o.user &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, active_flag, add_time, content, deal, lead_id, deal_id, last_update_user_id, org_id, organization, person, person_id, pinned_to_deal_flag, pinned_to_organization_flag, pinned_to_person_flag, update_time, user, user_id].hash
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
        klass = OpenPipette.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
