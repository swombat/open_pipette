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
  # The mail thread object
  class BaseMailThread1
    # ID of the mail thread
    attr_accessor :id

    # The connection account ID
    attr_accessor :account_id

    # ID of the user whom mail message will be assigned to
    attr_accessor :user_id

    # The subject
    attr_accessor :subject

    # A snippet
    attr_accessor :snippet

    attr_accessor :read_flag

    # Mail tracking status
    attr_accessor :mail_tracking_status

    attr_accessor :has_attachments_flag

    attr_accessor :has_inline_attachments_flag

    attr_accessor :has_real_attachments_flag

    attr_accessor :deleted_flag

    attr_accessor :synced_flag

    attr_accessor :smart_bcc_flag

    attr_accessor :mail_link_tracking_enabled_flag

    attr_accessor :parties

    # Parties of the drafted mail thread
    attr_accessor :drafts_parties

    # Folders in which messages from thread are being stored
    attr_accessor :folders

    # Version
    attr_accessor :version

    # A snippet from a draft
    attr_accessor :snippet_draft

    # A snippet from a message sent
    attr_accessor :snippet_sent

    # An amount of messages
    attr_accessor :message_count

    attr_accessor :has_draft_flag

    attr_accessor :has_sent_flag

    attr_accessor :archived_flag

    attr_accessor :shared_flag

    attr_accessor :external_deleted_flag

    attr_accessor :first_message_to_me_flag

    # Last message timestamp
    attr_accessor :last_message_timestamp

    # The time when the mail thread has had the first message received or created
    attr_accessor :first_message_timestamp

    # The last time when the mail thread has had a message sent
    attr_accessor :last_message_sent_timestamp

    # The last time when the mail thread has had a message received
    attr_accessor :last_message_received_timestamp

    # The time when the mail thread was inserted to database
    attr_accessor :add_time

    # The time when the mail thread was updated in database received
    attr_accessor :update_time

    # The ID of the deal
    attr_accessor :deal_id

    # Status of the deal
    attr_accessor :deal_status

    # The ID of the lead
    attr_accessor :lead_id

    attr_accessor :all_messages_sent_flag

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
        :'account_id' => :'account_id',
        :'user_id' => :'user_id',
        :'subject' => :'subject',
        :'snippet' => :'snippet',
        :'read_flag' => :'read_flag',
        :'mail_tracking_status' => :'mail_tracking_status',
        :'has_attachments_flag' => :'has_attachments_flag',
        :'has_inline_attachments_flag' => :'has_inline_attachments_flag',
        :'has_real_attachments_flag' => :'has_real_attachments_flag',
        :'deleted_flag' => :'deleted_flag',
        :'synced_flag' => :'synced_flag',
        :'smart_bcc_flag' => :'smart_bcc_flag',
        :'mail_link_tracking_enabled_flag' => :'mail_link_tracking_enabled_flag',
        :'parties' => :'parties',
        :'drafts_parties' => :'drafts_parties',
        :'folders' => :'folders',
        :'version' => :'version',
        :'snippet_draft' => :'snippet_draft',
        :'snippet_sent' => :'snippet_sent',
        :'message_count' => :'message_count',
        :'has_draft_flag' => :'has_draft_flag',
        :'has_sent_flag' => :'has_sent_flag',
        :'archived_flag' => :'archived_flag',
        :'shared_flag' => :'shared_flag',
        :'external_deleted_flag' => :'external_deleted_flag',
        :'first_message_to_me_flag' => :'first_message_to_me_flag',
        :'last_message_timestamp' => :'last_message_timestamp',
        :'first_message_timestamp' => :'first_message_timestamp',
        :'last_message_sent_timestamp' => :'last_message_sent_timestamp',
        :'last_message_received_timestamp' => :'last_message_received_timestamp',
        :'add_time' => :'add_time',
        :'update_time' => :'update_time',
        :'deal_id' => :'deal_id',
        :'deal_status' => :'deal_status',
        :'lead_id' => :'lead_id',
        :'all_messages_sent_flag' => :'all_messages_sent_flag'
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
        :'account_id' => :'String',
        :'user_id' => :'Integer',
        :'subject' => :'String',
        :'snippet' => :'String',
        :'read_flag' => :'Float',
        :'mail_tracking_status' => :'String',
        :'has_attachments_flag' => :'Float',
        :'has_inline_attachments_flag' => :'Float',
        :'has_real_attachments_flag' => :'Float',
        :'deleted_flag' => :'Float',
        :'synced_flag' => :'Float',
        :'smart_bcc_flag' => :'Float',
        :'mail_link_tracking_enabled_flag' => :'Float',
        :'parties' => :'BaseMailThreadAllOfParties',
        :'drafts_parties' => :'Array<Object>',
        :'folders' => :'Array<String>',
        :'version' => :'Float',
        :'snippet_draft' => :'String',
        :'snippet_sent' => :'String',
        :'message_count' => :'Integer',
        :'has_draft_flag' => :'Float',
        :'has_sent_flag' => :'Float',
        :'archived_flag' => :'Float',
        :'shared_flag' => :'Float',
        :'external_deleted_flag' => :'Float',
        :'first_message_to_me_flag' => :'Float',
        :'last_message_timestamp' => :'Time',
        :'first_message_timestamp' => :'Time',
        :'last_message_sent_timestamp' => :'Time',
        :'last_message_received_timestamp' => :'Time',
        :'add_time' => :'Time',
        :'update_time' => :'Time',
        :'deal_id' => :'Integer',
        :'deal_status' => :'String',
        :'lead_id' => :'String',
        :'all_messages_sent_flag' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'mail_tracking_status',
        :'snippet_draft',
        :'last_message_sent_timestamp',
        :'deal_id',
        :'deal_status',
        :'lead_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::BaseMailThread1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::BaseMailThread1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'snippet')
        self.snippet = attributes[:'snippet']
      end

      if attributes.key?(:'read_flag')
        self.read_flag = attributes[:'read_flag']
      else
        self.read_flag = READ_FLAG::N0
      end

      if attributes.key?(:'mail_tracking_status')
        self.mail_tracking_status = attributes[:'mail_tracking_status']
      end

      if attributes.key?(:'has_attachments_flag')
        self.has_attachments_flag = attributes[:'has_attachments_flag']
      else
        self.has_attachments_flag = HAS_ATTACHMENTS_FLAG::N0
      end

      if attributes.key?(:'has_inline_attachments_flag')
        self.has_inline_attachments_flag = attributes[:'has_inline_attachments_flag']
      else
        self.has_inline_attachments_flag = HAS_INLINE_ATTACHMENTS_FLAG::N0
      end

      if attributes.key?(:'has_real_attachments_flag')
        self.has_real_attachments_flag = attributes[:'has_real_attachments_flag']
      else
        self.has_real_attachments_flag = HAS_REAL_ATTACHMENTS_FLAG::N0
      end

      if attributes.key?(:'deleted_flag')
        self.deleted_flag = attributes[:'deleted_flag']
      else
        self.deleted_flag = DELETED_FLAG::N0
      end

      if attributes.key?(:'synced_flag')
        self.synced_flag = attributes[:'synced_flag']
      else
        self.synced_flag = SYNCED_FLAG::N0
      end

      if attributes.key?(:'smart_bcc_flag')
        self.smart_bcc_flag = attributes[:'smart_bcc_flag']
      else
        self.smart_bcc_flag = SMART_BCC_FLAG::N0
      end

      if attributes.key?(:'mail_link_tracking_enabled_flag')
        self.mail_link_tracking_enabled_flag = attributes[:'mail_link_tracking_enabled_flag']
      else
        self.mail_link_tracking_enabled_flag = MAIL_LINK_TRACKING_ENABLED_FLAG::N0
      end

      if attributes.key?(:'parties')
        self.parties = attributes[:'parties']
      end

      if attributes.key?(:'drafts_parties')
        if (value = attributes[:'drafts_parties']).is_a?(Array)
          self.drafts_parties = value
        end
      end

      if attributes.key?(:'folders')
        if (value = attributes[:'folders']).is_a?(Array)
          self.folders = value
        end
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'snippet_draft')
        self.snippet_draft = attributes[:'snippet_draft']
      end

      if attributes.key?(:'snippet_sent')
        self.snippet_sent = attributes[:'snippet_sent']
      end

      if attributes.key?(:'message_count')
        self.message_count = attributes[:'message_count']
      end

      if attributes.key?(:'has_draft_flag')
        self.has_draft_flag = attributes[:'has_draft_flag']
      else
        self.has_draft_flag = HAS_DRAFT_FLAG::N0
      end

      if attributes.key?(:'has_sent_flag')
        self.has_sent_flag = attributes[:'has_sent_flag']
      else
        self.has_sent_flag = HAS_SENT_FLAG::N0
      end

      if attributes.key?(:'archived_flag')
        self.archived_flag = attributes[:'archived_flag']
      else
        self.archived_flag = ARCHIVED_FLAG::N0
      end

      if attributes.key?(:'shared_flag')
        self.shared_flag = attributes[:'shared_flag']
      else
        self.shared_flag = SHARED_FLAG::N0
      end

      if attributes.key?(:'external_deleted_flag')
        self.external_deleted_flag = attributes[:'external_deleted_flag']
      else
        self.external_deleted_flag = EXTERNAL_DELETED_FLAG::N0
      end

      if attributes.key?(:'first_message_to_me_flag')
        self.first_message_to_me_flag = attributes[:'first_message_to_me_flag']
      else
        self.first_message_to_me_flag = FIRST_MESSAGE_TO_ME_FLAG::N0
      end

      if attributes.key?(:'last_message_timestamp')
        self.last_message_timestamp = attributes[:'last_message_timestamp']
      end

      if attributes.key?(:'first_message_timestamp')
        self.first_message_timestamp = attributes[:'first_message_timestamp']
      end

      if attributes.key?(:'last_message_sent_timestamp')
        self.last_message_sent_timestamp = attributes[:'last_message_sent_timestamp']
      end

      if attributes.key?(:'last_message_received_timestamp')
        self.last_message_received_timestamp = attributes[:'last_message_received_timestamp']
      end

      if attributes.key?(:'add_time')
        self.add_time = attributes[:'add_time']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'deal_id')
        self.deal_id = attributes[:'deal_id']
      end

      if attributes.key?(:'deal_status')
        self.deal_status = attributes[:'deal_status']
      end

      if attributes.key?(:'lead_id')
        self.lead_id = attributes[:'lead_id']
      end

      if attributes.key?(:'all_messages_sent_flag')
        self.all_messages_sent_flag = attributes[:'all_messages_sent_flag']
      else
        self.all_messages_sent_flag = ALL_MESSAGES_SENT_FLAG::N0
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
      read_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless read_flag_validator.valid?(@read_flag)
      has_attachments_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless has_attachments_flag_validator.valid?(@has_attachments_flag)
      has_inline_attachments_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless has_inline_attachments_flag_validator.valid?(@has_inline_attachments_flag)
      has_real_attachments_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless has_real_attachments_flag_validator.valid?(@has_real_attachments_flag)
      deleted_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless deleted_flag_validator.valid?(@deleted_flag)
      synced_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless synced_flag_validator.valid?(@synced_flag)
      smart_bcc_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless smart_bcc_flag_validator.valid?(@smart_bcc_flag)
      mail_link_tracking_enabled_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless mail_link_tracking_enabled_flag_validator.valid?(@mail_link_tracking_enabled_flag)
      has_draft_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless has_draft_flag_validator.valid?(@has_draft_flag)
      has_sent_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless has_sent_flag_validator.valid?(@has_sent_flag)
      archived_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless archived_flag_validator.valid?(@archived_flag)
      shared_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless shared_flag_validator.valid?(@shared_flag)
      external_deleted_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless external_deleted_flag_validator.valid?(@external_deleted_flag)
      first_message_to_me_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless first_message_to_me_flag_validator.valid?(@first_message_to_me_flag)
      all_messages_sent_flag_validator = EnumAttributeValidator.new('Float', [0, 1])
      return false unless all_messages_sent_flag_validator.valid?(@all_messages_sent_flag)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] read_flag Object to be assigned
    def read_flag=(read_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(read_flag)
        fail ArgumentError, "invalid value for \"read_flag\", must be one of #{validator.allowable_values}."
      end
      @read_flag = read_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_attachments_flag Object to be assigned
    def has_attachments_flag=(has_attachments_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(has_attachments_flag)
        fail ArgumentError, "invalid value for \"has_attachments_flag\", must be one of #{validator.allowable_values}."
      end
      @has_attachments_flag = has_attachments_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_inline_attachments_flag Object to be assigned
    def has_inline_attachments_flag=(has_inline_attachments_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(has_inline_attachments_flag)
        fail ArgumentError, "invalid value for \"has_inline_attachments_flag\", must be one of #{validator.allowable_values}."
      end
      @has_inline_attachments_flag = has_inline_attachments_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_real_attachments_flag Object to be assigned
    def has_real_attachments_flag=(has_real_attachments_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(has_real_attachments_flag)
        fail ArgumentError, "invalid value for \"has_real_attachments_flag\", must be one of #{validator.allowable_values}."
      end
      @has_real_attachments_flag = has_real_attachments_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted_flag Object to be assigned
    def deleted_flag=(deleted_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(deleted_flag)
        fail ArgumentError, "invalid value for \"deleted_flag\", must be one of #{validator.allowable_values}."
      end
      @deleted_flag = deleted_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] synced_flag Object to be assigned
    def synced_flag=(synced_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(synced_flag)
        fail ArgumentError, "invalid value for \"synced_flag\", must be one of #{validator.allowable_values}."
      end
      @synced_flag = synced_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] smart_bcc_flag Object to be assigned
    def smart_bcc_flag=(smart_bcc_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(smart_bcc_flag)
        fail ArgumentError, "invalid value for \"smart_bcc_flag\", must be one of #{validator.allowable_values}."
      end
      @smart_bcc_flag = smart_bcc_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mail_link_tracking_enabled_flag Object to be assigned
    def mail_link_tracking_enabled_flag=(mail_link_tracking_enabled_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(mail_link_tracking_enabled_flag)
        fail ArgumentError, "invalid value for \"mail_link_tracking_enabled_flag\", must be one of #{validator.allowable_values}."
      end
      @mail_link_tracking_enabled_flag = mail_link_tracking_enabled_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_draft_flag Object to be assigned
    def has_draft_flag=(has_draft_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(has_draft_flag)
        fail ArgumentError, "invalid value for \"has_draft_flag\", must be one of #{validator.allowable_values}."
      end
      @has_draft_flag = has_draft_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_sent_flag Object to be assigned
    def has_sent_flag=(has_sent_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(has_sent_flag)
        fail ArgumentError, "invalid value for \"has_sent_flag\", must be one of #{validator.allowable_values}."
      end
      @has_sent_flag = has_sent_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] archived_flag Object to be assigned
    def archived_flag=(archived_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(archived_flag)
        fail ArgumentError, "invalid value for \"archived_flag\", must be one of #{validator.allowable_values}."
      end
      @archived_flag = archived_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shared_flag Object to be assigned
    def shared_flag=(shared_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(shared_flag)
        fail ArgumentError, "invalid value for \"shared_flag\", must be one of #{validator.allowable_values}."
      end
      @shared_flag = shared_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_deleted_flag Object to be assigned
    def external_deleted_flag=(external_deleted_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(external_deleted_flag)
        fail ArgumentError, "invalid value for \"external_deleted_flag\", must be one of #{validator.allowable_values}."
      end
      @external_deleted_flag = external_deleted_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_message_to_me_flag Object to be assigned
    def first_message_to_me_flag=(first_message_to_me_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(first_message_to_me_flag)
        fail ArgumentError, "invalid value for \"first_message_to_me_flag\", must be one of #{validator.allowable_values}."
      end
      @first_message_to_me_flag = first_message_to_me_flag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] all_messages_sent_flag Object to be assigned
    def all_messages_sent_flag=(all_messages_sent_flag)
      validator = EnumAttributeValidator.new('Float', [0, 1])
      unless validator.valid?(all_messages_sent_flag)
        fail ArgumentError, "invalid value for \"all_messages_sent_flag\", must be one of #{validator.allowable_values}."
      end
      @all_messages_sent_flag = all_messages_sent_flag
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          account_id == o.account_id &&
          user_id == o.user_id &&
          subject == o.subject &&
          snippet == o.snippet &&
          read_flag == o.read_flag &&
          mail_tracking_status == o.mail_tracking_status &&
          has_attachments_flag == o.has_attachments_flag &&
          has_inline_attachments_flag == o.has_inline_attachments_flag &&
          has_real_attachments_flag == o.has_real_attachments_flag &&
          deleted_flag == o.deleted_flag &&
          synced_flag == o.synced_flag &&
          smart_bcc_flag == o.smart_bcc_flag &&
          mail_link_tracking_enabled_flag == o.mail_link_tracking_enabled_flag &&
          parties == o.parties &&
          drafts_parties == o.drafts_parties &&
          folders == o.folders &&
          version == o.version &&
          snippet_draft == o.snippet_draft &&
          snippet_sent == o.snippet_sent &&
          message_count == o.message_count &&
          has_draft_flag == o.has_draft_flag &&
          has_sent_flag == o.has_sent_flag &&
          archived_flag == o.archived_flag &&
          shared_flag == o.shared_flag &&
          external_deleted_flag == o.external_deleted_flag &&
          first_message_to_me_flag == o.first_message_to_me_flag &&
          last_message_timestamp == o.last_message_timestamp &&
          first_message_timestamp == o.first_message_timestamp &&
          last_message_sent_timestamp == o.last_message_sent_timestamp &&
          last_message_received_timestamp == o.last_message_received_timestamp &&
          add_time == o.add_time &&
          update_time == o.update_time &&
          deal_id == o.deal_id &&
          deal_status == o.deal_status &&
          lead_id == o.lead_id &&
          all_messages_sent_flag == o.all_messages_sent_flag
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_id, user_id, subject, snippet, read_flag, mail_tracking_status, has_attachments_flag, has_inline_attachments_flag, has_real_attachments_flag, deleted_flag, synced_flag, smart_bcc_flag, mail_link_tracking_enabled_flag, parties, drafts_parties, folders, version, snippet_draft, snippet_sent, message_count, has_draft_flag, has_sent_flag, archived_flag, shared_flag, external_deleted_flag, first_message_to_me_flag, last_message_timestamp, first_message_timestamp, last_message_sent_timestamp, last_message_received_timestamp, add_time, update_time, deal_id, deal_status, lead_id, all_messages_sent_flag].hash
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
