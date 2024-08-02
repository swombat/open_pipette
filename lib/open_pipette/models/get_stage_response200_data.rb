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
  # The stage object
  class GetStageResponse200Data
    # The ID of the stage
    attr_accessor :id

    # Defines the order of the stage
    attr_accessor :order_nr

    # The name of the stage
    attr_accessor :name

    # Whether the stage is active or deleted
    attr_accessor :active_flag

    # The success probability percentage of the deal. Used/shown when the deal weighted values are used.
    attr_accessor :deal_probability

    # The ID of the pipeline to add the stage to
    attr_accessor :pipeline_id

    # Whether deals in this stage can become rotten
    attr_accessor :rotten_flag

    # The number of days the deals not updated in this stage would become rotten. Applies only if the `rotten_flag` is set.
    attr_accessor :rotten_days

    # The stage creation time. Format: YYYY-MM-DD HH:MM:SS.
    attr_accessor :add_time

    # The stage update time. Format: YYYY-MM-DD HH:MM:SS.
    attr_accessor :update_time

    attr_accessor :deals_summary

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'order_nr' => :'order_nr',
        :'name' => :'name',
        :'active_flag' => :'active_flag',
        :'deal_probability' => :'deal_probability',
        :'pipeline_id' => :'pipeline_id',
        :'rotten_flag' => :'rotten_flag',
        :'rotten_days' => :'rotten_days',
        :'add_time' => :'add_time',
        :'update_time' => :'update_time',
        :'deals_summary' => :'deals_summary'
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
        :'order_nr' => :'Integer',
        :'name' => :'String',
        :'active_flag' => :'Boolean',
        :'deal_probability' => :'Integer',
        :'pipeline_id' => :'Integer',
        :'rotten_flag' => :'Boolean',
        :'rotten_days' => :'Integer',
        :'add_time' => :'String',
        :'update_time' => :'String',
        :'deals_summary' => :'PipelineDetailsAllOfDealsSummary'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::GetStageResponse200Data` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::GetStageResponse200Data`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'order_nr')
        self.order_nr = attributes[:'order_nr']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'active_flag')
        self.active_flag = attributes[:'active_flag']
      end

      if attributes.key?(:'deal_probability')
        self.deal_probability = attributes[:'deal_probability']
      end

      if attributes.key?(:'pipeline_id')
        self.pipeline_id = attributes[:'pipeline_id']
      end

      if attributes.key?(:'rotten_flag')
        self.rotten_flag = attributes[:'rotten_flag']
      end

      if attributes.key?(:'rotten_days')
        self.rotten_days = attributes[:'rotten_days']
      end

      if attributes.key?(:'add_time')
        self.add_time = attributes[:'add_time']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'deals_summary')
        self.deals_summary = attributes[:'deals_summary']
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
          order_nr == o.order_nr &&
          name == o.name &&
          active_flag == o.active_flag &&
          deal_probability == o.deal_probability &&
          pipeline_id == o.pipeline_id &&
          rotten_flag == o.rotten_flag &&
          rotten_days == o.rotten_days &&
          add_time == o.add_time &&
          update_time == o.update_time &&
          deals_summary == o.deals_summary
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, order_nr, name, active_flag, deal_probability, pipeline_id, rotten_flag, rotten_days, add_time, update_time, deals_summary].hash
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
