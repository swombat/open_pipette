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
  class GetRecentsResponse200DataInnerAnyOf9Data
    # The ID of the product
    attr_accessor :id

    # The name of the product
    attr_accessor :name

    # The product code
    attr_accessor :code

    # The description of the product
    attr_accessor :description

    # The unit in which this product is sold
    attr_accessor :unit

    # The tax percentage
    attr_accessor :tax

    # The category of the product
    attr_accessor :category

    # Whether this product will be made active or not
    attr_accessor :active_flag

    # Whether this product can be selected in deals or not
    attr_accessor :selectable

    # The first letter of the product name
    attr_accessor :first_char

    # The visibility of the product. If omitted, the visibility will be set to the default visibility setting of this item type for the authorized user.
    attr_accessor :visible_to

    # The ID of the user who will be marked as the owner of this product. When omitted, authorized user ID will be used.
    attr_accessor :owner_id

    # The count of files
    attr_accessor :files_count

    # The date and time when the product was added to the deal
    attr_accessor :add_time

    # The date and time when the product was updated to the deal
    attr_accessor :update_time

    # Array of objects, each containing: `currency` (string), `price` (number), `cost` (number, optional), `overhead_cost` (number, optional). Note that there can only be one price per product per currency. When `prices` is omitted altogether, a default price of 0 and a default currency based on the company's currency will be assigned.
    attr_accessor :prices

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'code' => :'code',
        :'description' => :'description',
        :'unit' => :'unit',
        :'tax' => :'tax',
        :'category' => :'category',
        :'active_flag' => :'active_flag',
        :'selectable' => :'selectable',
        :'first_char' => :'first_char',
        :'visible_to' => :'visible_to',
        :'owner_id' => :'owner_id',
        :'files_count' => :'files_count',
        :'add_time' => :'add_time',
        :'update_time' => :'update_time',
        :'prices' => :'prices'
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
        :'name' => :'String',
        :'code' => :'String',
        :'description' => :'String',
        :'unit' => :'String',
        :'tax' => :'Float',
        :'category' => :'String',
        :'active_flag' => :'Boolean',
        :'selectable' => :'Boolean',
        :'first_char' => :'String',
        :'visible_to' => :'Integer',
        :'owner_id' => :'Integer',
        :'files_count' => :'Integer',
        :'add_time' => :'String',
        :'update_time' => :'String',
        :'prices' => :'Array<Object>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::GetRecentsResponse200DataInnerAnyOf9Data` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::GetRecentsResponse200DataInnerAnyOf9Data`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      else
        self.tax = 0
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'active_flag')
        self.active_flag = attributes[:'active_flag']
      end

      if attributes.key?(:'selectable')
        self.selectable = attributes[:'selectable']
      end

      if attributes.key?(:'first_char')
        self.first_char = attributes[:'first_char']
      end

      if attributes.key?(:'visible_to')
        self.visible_to = attributes[:'visible_to']
      end

      if attributes.key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.key?(:'files_count')
        self.files_count = attributes[:'files_count']
      end

      if attributes.key?(:'add_time')
        self.add_time = attributes[:'add_time']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'prices')
        if (value = attributes[:'prices']).is_a?(Array)
          self.prices = value
        end
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
          name == o.name &&
          code == o.code &&
          description == o.description &&
          unit == o.unit &&
          tax == o.tax &&
          category == o.category &&
          active_flag == o.active_flag &&
          selectable == o.selectable &&
          first_char == o.first_char &&
          visible_to == o.visible_to &&
          owner_id == o.owner_id &&
          files_count == o.files_count &&
          add_time == o.add_time &&
          update_time == o.update_time &&
          prices == o.prices
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, code, description, unit, tax, category, active_flag, selectable, first_char, visible_to, owner_id, files_count, add_time, update_time, prices].hash
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
