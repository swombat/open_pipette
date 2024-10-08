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
  class UpdateActivityRequest
    # The due date of the activity. Format: YYYY-MM-DD
    attr_accessor :due_date

    # The due time of the activity in UTC. Format: HH:MM
    attr_accessor :due_time

    # The duration of the activity. Format: HH:MM
    attr_accessor :duration

    # The ID of the deal this activity is associated with
    attr_accessor :deal_id

    # The ID of the lead in the UUID format this activity is associated with
    attr_accessor :lead_id

    # The ID of the person this activity is associated with
    attr_accessor :person_id

    # The ID of the project this activity is associated with
    attr_accessor :project_id

    # The ID of the organization this activity is associated with
    attr_accessor :org_id

    # The address of the activity.
    attr_accessor :location

    # Additional details about the activity that is synced to your external calendar. Unlike the note added to the activity, the description is publicly visible to any guests added to the activity.
    attr_accessor :public_description

    # The note of the activity (HTML format)
    attr_accessor :note

    # The subject of the activity
    attr_accessor :subject

    # The type of the activity. This is in correlation with the `key_string` parameter of ActivityTypes.
    attr_accessor :type

    # The ID of the user whom the activity is assigned to
    attr_accessor :user_id

    # List of multiple persons (participants) this activity is associated with. It requires a structure as follows: `[{\"person_id\":1,\"primary_flag\":true}]`
    attr_accessor :participants

    # Set the activity as 'Busy' or 'Free'. If the flag is set to `true`, your customers will not be able to book that time slot through any Scheduler links. The flag can also be unset by never setting it or overriding it with `null`. When the value of the flag is unset (`null`), the flag defaults to 'Busy' if it has a time set, and 'Free' if it is an all-day event without specified time.
    attr_accessor :busy_flag

    # The attendees of the activity. This can be either your existing Pipedrive contacts or an external email address. It requires a structure as follows: `[{\"email_address\":\"mail@example.org\"}]` or `[{\"person_id\":1, \"email_address\":\"mail@example.org\"}]`
    attr_accessor :attendees

    attr_accessor :done

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
        :'due_date' => :'due_date',
        :'due_time' => :'due_time',
        :'duration' => :'duration',
        :'deal_id' => :'deal_id',
        :'lead_id' => :'lead_id',
        :'person_id' => :'person_id',
        :'project_id' => :'project_id',
        :'org_id' => :'org_id',
        :'location' => :'location',
        :'public_description' => :'public_description',
        :'note' => :'note',
        :'subject' => :'subject',
        :'type' => :'type',
        :'user_id' => :'user_id',
        :'participants' => :'participants',
        :'busy_flag' => :'busy_flag',
        :'attendees' => :'attendees',
        :'done' => :'done'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'due_date' => :'Date',
        :'due_time' => :'String',
        :'duration' => :'String',
        :'deal_id' => :'Integer',
        :'lead_id' => :'String',
        :'person_id' => :'Integer',
        :'project_id' => :'Integer',
        :'org_id' => :'Integer',
        :'location' => :'String',
        :'public_description' => :'String',
        :'note' => :'String',
        :'subject' => :'String',
        :'type' => :'String',
        :'user_id' => :'Integer',
        :'participants' => :'Array<Object>',
        :'busy_flag' => :'Boolean',
        :'attendees' => :'Array<Object>',
        :'done' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'lead_id',
        :'project_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::UpdateActivityRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::UpdateActivityRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'due_time')
        self.due_time = attributes[:'due_time']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'deal_id')
        self.deal_id = attributes[:'deal_id']
      end

      if attributes.key?(:'lead_id')
        self.lead_id = attributes[:'lead_id']
      end

      if attributes.key?(:'person_id')
        self.person_id = attributes[:'person_id']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'public_description')
        self.public_description = attributes[:'public_description']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'participants')
        if (value = attributes[:'participants']).is_a?(Array)
          self.participants = value
        end
      end

      if attributes.key?(:'busy_flag')
        self.busy_flag = attributes[:'busy_flag']
      end

      if attributes.key?(:'attendees')
        if (value = attributes[:'attendees']).is_a?(Array)
          self.attendees = value
        end
      end

      if attributes.key?(:'done')
        self.done = attributes[:'done']
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
          due_date == o.due_date &&
          due_time == o.due_time &&
          duration == o.duration &&
          deal_id == o.deal_id &&
          lead_id == o.lead_id &&
          person_id == o.person_id &&
          project_id == o.project_id &&
          org_id == o.org_id &&
          location == o.location &&
          public_description == o.public_description &&
          note == o.note &&
          subject == o.subject &&
          type == o.type &&
          user_id == o.user_id &&
          participants == o.participants &&
          busy_flag == o.busy_flag &&
          attendees == o.attendees &&
          done == o.done
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [due_date, due_time, duration, deal_id, lead_id, person_id, project_id, org_id, location, public_description, note, subject, type, user_id, participants, busy_flag, attendees, done].hash
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
