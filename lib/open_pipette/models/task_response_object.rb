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
  class TaskResponseObject
    # The ID of the task, generated when the task was created
    attr_accessor :id

    # The title of the task
    attr_accessor :title

    # The ID of the project this task is associated with
    attr_accessor :project_id

    # The description of the task
    attr_accessor :description

    # The ID of a parent task. Can not be ID of a task which is already a subtask.
    attr_accessor :parent_task_id

    # The ID of the user who will be the assignee of the task
    attr_accessor :assignee_id

    attr_accessor :done

    # The due date of the task. Format: YYYY-MM-DD.
    attr_accessor :due_date

    # The creator of a task
    attr_accessor :creator_id

    # The creation date and time of the task in UTC. Format: YYYY-MM-DD HH:MM:SS.
    attr_accessor :add_time

    # The update date and time of the task in UTC. Format: YYYY-MM-DD HH:MM:SS.
    attr_accessor :update_time

    # The marked as done date and time of the task in UTC. Format: YYYY-MM-DD HH:MM:SS.
    attr_accessor :marked_as_done_time

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
        :'id' => :'id',
        :'title' => :'title',
        :'project_id' => :'project_id',
        :'description' => :'description',
        :'parent_task_id' => :'parent_task_id',
        :'assignee_id' => :'assignee_id',
        :'done' => :'done',
        :'due_date' => :'due_date',
        :'creator_id' => :'creator_id',
        :'add_time' => :'add_time',
        :'update_time' => :'update_time',
        :'marked_as_done_time' => :'marked_as_done_time'
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
        :'title' => :'String',
        :'project_id' => :'Float',
        :'description' => :'String',
        :'parent_task_id' => :'Float',
        :'assignee_id' => :'Float',
        :'done' => :'Float',
        :'due_date' => :'Date',
        :'creator_id' => :'Float',
        :'add_time' => :'String',
        :'update_time' => :'String',
        :'marked_as_done_time' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::TaskResponseObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::TaskResponseObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'parent_task_id')
        self.parent_task_id = attributes[:'parent_task_id']
      end

      if attributes.key?(:'assignee_id')
        self.assignee_id = attributes[:'assignee_id']
      end

      if attributes.key?(:'done')
        self.done = attributes[:'done']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'add_time')
        self.add_time = attributes[:'add_time']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'marked_as_done_time')
        self.marked_as_done_time = attributes[:'marked_as_done_time']
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
      done_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless done_validator.valid?(@done)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] done Object to be assigned
    def done=(done)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(done)
        fail ArgumentError, "invalid value for \"done\", must be one of #{validator.allowable_values}."
      end
      @done = done
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          project_id == o.project_id &&
          description == o.description &&
          parent_task_id == o.parent_task_id &&
          assignee_id == o.assignee_id &&
          done == o.done &&
          due_date == o.due_date &&
          creator_id == o.creator_id &&
          add_time == o.add_time &&
          update_time == o.update_time &&
          marked_as_done_time == o.marked_as_done_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, project_id, description, parent_task_id, assignee_id, done, due_date, creator_id, add_time, update_time, marked_as_done_time].hash
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
