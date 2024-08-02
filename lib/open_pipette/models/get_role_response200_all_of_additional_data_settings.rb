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
  # The settings for the role
  class GetRoleResponse200AllOfAdditionalDataSettings
    # The default visibility level of the deals for the role
    attr_accessor :deal_default_visibility

    # The default visibility level of the leads for the role
    attr_accessor :lead_default_visibility

    # The default visibility level of the organizations for the role
    attr_accessor :org_default_visibility

    # The default visibility level of the people for the role
    attr_accessor :person_default_visibility

    # The default visibility level of the products for the role
    attr_accessor :product_default_visibility

    # The access level of the deals for the role (only for default role)
    attr_accessor :deal_access_level

    # The access level of the organizations for the role (only for default role)
    attr_accessor :org_access_level

    # The access level of the people for the role (only for default role)
    attr_accessor :person_access_level

    # The access level of the products for the role (only for default role)
    attr_accessor :product_access_level

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'deal_default_visibility' => :'deal_default_visibility',
        :'lead_default_visibility' => :'lead_default_visibility',
        :'org_default_visibility' => :'org_default_visibility',
        :'person_default_visibility' => :'person_default_visibility',
        :'product_default_visibility' => :'product_default_visibility',
        :'deal_access_level' => :'deal_access_level',
        :'org_access_level' => :'org_access_level',
        :'person_access_level' => :'person_access_level',
        :'product_access_level' => :'product_access_level'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'deal_default_visibility' => :'Float',
        :'lead_default_visibility' => :'Float',
        :'org_default_visibility' => :'Float',
        :'person_default_visibility' => :'Float',
        :'product_default_visibility' => :'Float',
        :'deal_access_level' => :'Float',
        :'org_access_level' => :'Float',
        :'person_access_level' => :'Float',
        :'product_access_level' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::GetRoleResponse200AllOfAdditionalDataSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::GetRoleResponse200AllOfAdditionalDataSettings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'deal_default_visibility')
        self.deal_default_visibility = attributes[:'deal_default_visibility']
      end

      if attributes.key?(:'lead_default_visibility')
        self.lead_default_visibility = attributes[:'lead_default_visibility']
      end

      if attributes.key?(:'org_default_visibility')
        self.org_default_visibility = attributes[:'org_default_visibility']
      end

      if attributes.key?(:'person_default_visibility')
        self.person_default_visibility = attributes[:'person_default_visibility']
      end

      if attributes.key?(:'product_default_visibility')
        self.product_default_visibility = attributes[:'product_default_visibility']
      end

      if attributes.key?(:'deal_access_level')
        self.deal_access_level = attributes[:'deal_access_level']
      end

      if attributes.key?(:'org_access_level')
        self.org_access_level = attributes[:'org_access_level']
      end

      if attributes.key?(:'person_access_level')
        self.person_access_level = attributes[:'person_access_level']
      end

      if attributes.key?(:'product_access_level')
        self.product_access_level = attributes[:'product_access_level']
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
          deal_default_visibility == o.deal_default_visibility &&
          lead_default_visibility == o.lead_default_visibility &&
          org_default_visibility == o.org_default_visibility &&
          person_default_visibility == o.person_default_visibility &&
          product_default_visibility == o.product_default_visibility &&
          deal_access_level == o.deal_access_level &&
          org_access_level == o.org_access_level &&
          person_access_level == o.person_access_level &&
          product_access_level == o.product_access_level
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [deal_default_visibility, lead_default_visibility, org_default_visibility, person_default_visibility, product_default_visibility, deal_access_level, org_access_level, person_access_level, product_access_level].hash
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
