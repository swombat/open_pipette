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
  class DealNonStrictWithDetails
    # The ID of the deal
    attr_accessor :id

    attr_accessor :creator_user_id

    attr_accessor :user_id

    attr_accessor :person_id

    attr_accessor :org_id

    # The ID of the deal stage
    attr_accessor :stage_id

    # The title of the deal
    attr_accessor :title

    # The value of the deal
    attr_accessor :value

    # The currency associated with the deal
    attr_accessor :currency

    # The creation date and time of the deal
    attr_accessor :add_time

    # The last updated date and time of the deal
    attr_accessor :update_time

    # The last updated date and time of the deal stage
    attr_accessor :stage_change_time

    # Whether the deal is active or not
    attr_accessor :active

    # Whether the deal is deleted or not
    attr_accessor :deleted

    # The status of the deal
    attr_accessor :status

    # The success probability percentage of the deal
    attr_accessor :probability

    # The date of the next activity associated with the deal
    attr_accessor :next_activity_date

    # The time of the next activity associated with the deal
    attr_accessor :next_activity_time

    # The ID of the next activity associated with the deal
    attr_accessor :next_activity_id

    # The ID of the last activity associated with the deal
    attr_accessor :last_activity_id

    # The date of the last activity associated with the deal
    attr_accessor :last_activity_date

    # The reason for losing the deal
    attr_accessor :lost_reason

    # The visibility of the deal
    attr_accessor :visible_to

    # The date and time of closing the deal
    attr_accessor :close_time

    # The ID of the pipeline associated with the deal
    attr_accessor :pipeline_id

    # The date and time of changing the deal status as won
    attr_accessor :won_time

    # The date and time of the first time changing the deal status as won
    attr_accessor :first_won_time

    # The date and time of changing the deal status as lost
    attr_accessor :lost_time

    # The number of products associated with the deal
    attr_accessor :products_count

    # The number of files associated with the deal
    attr_accessor :files_count

    # The number of notes associated with the deal
    attr_accessor :notes_count

    # The number of followers associated with the deal
    attr_accessor :followers_count

    # The number of emails associated with the deal
    attr_accessor :email_messages_count

    # The number of activities associated with the deal
    attr_accessor :activities_count

    # The number of completed activities associated with the deal
    attr_accessor :done_activities_count

    # The number of incomplete activities associated with the deal
    attr_accessor :undone_activities_count

    # The number of participants associated with the deal
    attr_accessor :participants_count

    # The expected close date of the deal
    attr_accessor :expected_close_date

    # The date and time of the last incoming email associated with the deal
    attr_accessor :last_incoming_mail_time

    # The date and time of the last outgoing email associated with the deal
    attr_accessor :last_outgoing_mail_time

    # The label or multiple labels assigned to the deal
    attr_accessor :label

    # The order number of the deal stage associated with the deal
    attr_accessor :stage_order_nr

    # The name of the person associated with the deal
    attr_accessor :person_name

    # The name of the organization associated with the deal
    attr_accessor :org_name

    # The subject of the next activity associated with the deal
    attr_accessor :next_activity_subject

    # The type of the next activity associated with the deal
    attr_accessor :next_activity_type

    # The duration of the next activity associated with the deal
    attr_accessor :next_activity_duration

    # The note of the next activity associated with the deal
    attr_accessor :next_activity_note

    # The deal value formatted with selected currency. E.g. US$500
    attr_accessor :formatted_value

    # Probability times deal value. Probability can either be deal probability or if not set, then stage probability.
    attr_accessor :weighted_value

    # The weighted_value formatted with selected currency. E.g. US$500
    attr_accessor :formatted_weighted_value

    # The currency associated with the deal
    attr_accessor :weighted_value_currency

    # The date and time of changing the deal status as rotten
    attr_accessor :rotten_time

    # The name of the deal owner
    attr_accessor :owner_name

    # The BCC email of the deal
    attr_accessor :cc_email

    # If the organization that is associated with the deal is hidden or not
    attr_accessor :org_hidden

    # If the person that is associated with the deal is hidden or not
    attr_accessor :person_hidden

    # The way this Deal was created. `origin` field is set by Pipedrive when Deal is created and cannot be changed.
    attr_accessor :origin

    # The optional ID to further distinguish the origin of the deal - e.g. Which API integration created this Deal.
    attr_accessor :origin_id

    # The ID of your Marketing channel this Deal was created from. Recognized Marketing channels can be configured in your <a href=\"https://app.pipedrive.com/settings/fields\" target=\"_blank\" rel=\"noopener noreferrer\">Company settings</a>.
    attr_accessor :channel

    # The optional ID to further distinguish the Marketing channel.
    attr_accessor :channel_id

    # Only available in Advanced and above plans  The Annual Recurring Revenue of the deal  Null if there are no products attached to the deal
    attr_accessor :arr

    # Only available in Advanced and above plans  The Monthly Recurring Revenue of the deal  Null if there are no products attached to the deal
    attr_accessor :mrr

    # Only available in Advanced and above plans  The Annual Contract Value of the deal  Null if there are no products attached to the deal
    attr_accessor :acv

    # Only available in Advanced and above plans  The Currency for Annual Recurring Revenue of the deal  If the `arr` is null, this will also be null
    attr_accessor :arr_currency

    # Only available in Advanced and above plans  The Currency for Monthly Recurring Revenue of the deal  If the `mrr` is null, this will also be null
    attr_accessor :mrr_currency

    # Only available in Advanced and above plans  The Currency for Annual Contract Value of the deal  If the `acv` is null, this will also be null
    attr_accessor :acv_currency

    attr_accessor :average_time_to_won

    # The average of the deal stage progression
    attr_accessor :average_stage_progress

    attr_accessor :age

    attr_accessor :stay_in_pipeline_stages

    # The details of the last activity associated with the deal
    attr_accessor :last_activity

    # The details of the next activity associated with the deal
    attr_accessor :next_activity

    attr_accessor :attributes_hash

    attr_accessor :custom_fields

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'creator_user_id' => :'creator_user_id',
        :'user_id' => :'user_id',
        :'person_id' => :'person_id',
        :'org_id' => :'org_id',
        :'stage_id' => :'stage_id',
        :'title' => :'title',
        :'value' => :'value',
        :'currency' => :'currency',
        :'add_time' => :'add_time',
        :'update_time' => :'update_time',
        :'stage_change_time' => :'stage_change_time',
        :'active' => :'active',
        :'deleted' => :'deleted',
        :'status' => :'status',
        :'probability' => :'probability',
        :'next_activity_date' => :'next_activity_date',
        :'next_activity_time' => :'next_activity_time',
        :'next_activity_id' => :'next_activity_id',
        :'last_activity_id' => :'last_activity_id',
        :'last_activity_date' => :'last_activity_date',
        :'lost_reason' => :'lost_reason',
        :'visible_to' => :'visible_to',
        :'close_time' => :'close_time',
        :'pipeline_id' => :'pipeline_id',
        :'won_time' => :'won_time',
        :'first_won_time' => :'first_won_time',
        :'lost_time' => :'lost_time',
        :'products_count' => :'products_count',
        :'files_count' => :'files_count',
        :'notes_count' => :'notes_count',
        :'followers_count' => :'followers_count',
        :'email_messages_count' => :'email_messages_count',
        :'activities_count' => :'activities_count',
        :'done_activities_count' => :'done_activities_count',
        :'undone_activities_count' => :'undone_activities_count',
        :'participants_count' => :'participants_count',
        :'expected_close_date' => :'expected_close_date',
        :'last_incoming_mail_time' => :'last_incoming_mail_time',
        :'last_outgoing_mail_time' => :'last_outgoing_mail_time',
        :'label' => :'label',
        :'stage_order_nr' => :'stage_order_nr',
        :'person_name' => :'person_name',
        :'org_name' => :'org_name',
        :'next_activity_subject' => :'next_activity_subject',
        :'next_activity_type' => :'next_activity_type',
        :'next_activity_duration' => :'next_activity_duration',
        :'next_activity_note' => :'next_activity_note',
        :'formatted_value' => :'formatted_value',
        :'weighted_value' => :'weighted_value',
        :'formatted_weighted_value' => :'formatted_weighted_value',
        :'weighted_value_currency' => :'weighted_value_currency',
        :'rotten_time' => :'rotten_time',
        :'owner_name' => :'owner_name',
        :'cc_email' => :'cc_email',
        :'org_hidden' => :'org_hidden',
        :'person_hidden' => :'person_hidden',
        :'origin' => :'origin',
        :'origin_id' => :'origin_id',
        :'channel' => :'channel',
        :'channel_id' => :'channel_id',
        :'arr' => :'arr',
        :'mrr' => :'mrr',
        :'acv' => :'acv',
        :'arr_currency' => :'arr_currency',
        :'mrr_currency' => :'mrr_currency',
        :'acv_currency' => :'acv_currency',
        :'average_time_to_won' => :'average_time_to_won',
        :'average_stage_progress' => :'average_stage_progress',
        :'age' => :'age',
        :'stay_in_pipeline_stages' => :'stay_in_pipeline_stages',
        :'last_activity' => :'last_activity',
        :'next_activity' => :'next_activity'
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
        :'creator_user_id' => :'DealNonStrictAllOfCreatorUserId',
        :'user_id' => :'DealUserDataWithId',
        :'person_id' => :'DealPersonDataWithId',
        :'org_id' => :'DealOrganizationDataWithId',
        :'stage_id' => :'Integer',
        :'title' => :'String',
        :'value' => :'Float',
        :'currency' => :'String',
        :'add_time' => :'String',
        :'update_time' => :'String',
        :'stage_change_time' => :'String',
        :'active' => :'Boolean',
        :'deleted' => :'Boolean',
        :'status' => :'String',
        :'probability' => :'Float',
        :'next_activity_date' => :'String',
        :'next_activity_time' => :'String',
        :'next_activity_id' => :'Integer',
        :'last_activity_id' => :'Integer',
        :'last_activity_date' => :'String',
        :'lost_reason' => :'String',
        :'visible_to' => :'String',
        :'close_time' => :'String',
        :'pipeline_id' => :'Integer',
        :'won_time' => :'String',
        :'first_won_time' => :'String',
        :'lost_time' => :'String',
        :'products_count' => :'Integer',
        :'files_count' => :'Integer',
        :'notes_count' => :'Integer',
        :'followers_count' => :'Integer',
        :'email_messages_count' => :'Integer',
        :'activities_count' => :'Integer',
        :'done_activities_count' => :'Integer',
        :'undone_activities_count' => :'Integer',
        :'participants_count' => :'Integer',
        :'expected_close_date' => :'Date',
        :'last_incoming_mail_time' => :'String',
        :'last_outgoing_mail_time' => :'String',
        :'label' => :'String',
        :'stage_order_nr' => :'Integer',
        :'person_name' => :'String',
        :'org_name' => :'String',
        :'next_activity_subject' => :'String',
        :'next_activity_type' => :'String',
        :'next_activity_duration' => :'String',
        :'next_activity_note' => :'String',
        :'formatted_value' => :'String',
        :'weighted_value' => :'Float',
        :'formatted_weighted_value' => :'String',
        :'weighted_value_currency' => :'String',
        :'rotten_time' => :'String',
        :'owner_name' => :'String',
        :'cc_email' => :'String',
        :'org_hidden' => :'Boolean',
        :'person_hidden' => :'Boolean',
        :'origin' => :'String',
        :'origin_id' => :'String',
        :'channel' => :'Integer',
        :'channel_id' => :'String',
        :'arr' => :'Float',
        :'mrr' => :'Float',
        :'acv' => :'Float',
        :'arr_currency' => :'String',
        :'mrr_currency' => :'String',
        :'acv_currency' => :'String',
        :'average_time_to_won' => :'DealNonStrictWithDetailsAllOfAverageTimeToWon',
        :'average_stage_progress' => :'Float',
        :'age' => :'DealNonStrictWithDetailsAllOfAge',
        :'stay_in_pipeline_stages' => :'DealNonStrictWithDetailsAllOfStayInPipelineStages',
        :'last_activity' => :'Object',
        :'next_activity' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'probability',
        :'next_activity_id',
        :'last_activity_id',
        :'last_activity_date',
        :'lost_reason',
        :'close_time',
        :'rotten_time',
        :'origin_id',
        :'channel',
        :'channel_id',
        :'arr',
        :'mrr',
        :'acv',
        :'arr_currency',
        :'mrr_currency',
        :'acv_currency',
        :'last_activity',
        :'next_activity'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenPipette::DealNonStrictWithDetails` initialize method"
      end

      self.custom_fields = {}
      self.attributes_hash = attributes

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          # fail ArgumentError, "`#{k}` is not a valid attribute in `OpenPipette::DealNonStrictWithDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
          self.custom_fields[k] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'creator_user_id')
        self.creator_user_id = attributes[:'creator_user_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'person_id')
        self.person_id = attributes[:'person_id']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'stage_id')
        self.stage_id = attributes[:'stage_id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'add_time')
        self.add_time = attributes[:'add_time']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'stage_change_time')
        self.stage_change_time = attributes[:'stage_change_time']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'probability')
        self.probability = attributes[:'probability']
      end

      if attributes.key?(:'next_activity_date')
        self.next_activity_date = attributes[:'next_activity_date']
      end

      if attributes.key?(:'next_activity_time')
        self.next_activity_time = attributes[:'next_activity_time']
      end

      if attributes.key?(:'next_activity_id')
        self.next_activity_id = attributes[:'next_activity_id']
      end

      if attributes.key?(:'last_activity_id')
        self.last_activity_id = attributes[:'last_activity_id']
      end

      if attributes.key?(:'last_activity_date')
        self.last_activity_date = attributes[:'last_activity_date']
      end

      if attributes.key?(:'lost_reason')
        self.lost_reason = attributes[:'lost_reason']
      end

      if attributes.key?(:'visible_to')
        self.visible_to = attributes[:'visible_to']
      end

      if attributes.key?(:'close_time')
        self.close_time = attributes[:'close_time']
      end

      if attributes.key?(:'pipeline_id')
        self.pipeline_id = attributes[:'pipeline_id']
      end

      if attributes.key?(:'won_time')
        self.won_time = attributes[:'won_time']
      end

      if attributes.key?(:'first_won_time')
        self.first_won_time = attributes[:'first_won_time']
      end

      if attributes.key?(:'lost_time')
        self.lost_time = attributes[:'lost_time']
      end

      if attributes.key?(:'products_count')
        self.products_count = attributes[:'products_count']
      end

      if attributes.key?(:'files_count')
        self.files_count = attributes[:'files_count']
      end

      if attributes.key?(:'notes_count')
        self.notes_count = attributes[:'notes_count']
      end

      if attributes.key?(:'followers_count')
        self.followers_count = attributes[:'followers_count']
      end

      if attributes.key?(:'email_messages_count')
        self.email_messages_count = attributes[:'email_messages_count']
      end

      if attributes.key?(:'activities_count')
        self.activities_count = attributes[:'activities_count']
      end

      if attributes.key?(:'done_activities_count')
        self.done_activities_count = attributes[:'done_activities_count']
      end

      if attributes.key?(:'undone_activities_count')
        self.undone_activities_count = attributes[:'undone_activities_count']
      end

      if attributes.key?(:'participants_count')
        self.participants_count = attributes[:'participants_count']
      end

      if attributes.key?(:'expected_close_date')
        self.expected_close_date = attributes[:'expected_close_date']
      end

      if attributes.key?(:'last_incoming_mail_time')
        self.last_incoming_mail_time = attributes[:'last_incoming_mail_time']
      end

      if attributes.key?(:'last_outgoing_mail_time')
        self.last_outgoing_mail_time = attributes[:'last_outgoing_mail_time']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'stage_order_nr')
        self.stage_order_nr = attributes[:'stage_order_nr']
      end

      if attributes.key?(:'person_name')
        self.person_name = attributes[:'person_name']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'next_activity_subject')
        self.next_activity_subject = attributes[:'next_activity_subject']
      end

      if attributes.key?(:'next_activity_type')
        self.next_activity_type = attributes[:'next_activity_type']
      end

      if attributes.key?(:'next_activity_duration')
        self.next_activity_duration = attributes[:'next_activity_duration']
      end

      if attributes.key?(:'next_activity_note')
        self.next_activity_note = attributes[:'next_activity_note']
      end

      if attributes.key?(:'formatted_value')
        self.formatted_value = attributes[:'formatted_value']
      end

      if attributes.key?(:'weighted_value')
        self.weighted_value = attributes[:'weighted_value']
      end

      if attributes.key?(:'formatted_weighted_value')
        self.formatted_weighted_value = attributes[:'formatted_weighted_value']
      end

      if attributes.key?(:'weighted_value_currency')
        self.weighted_value_currency = attributes[:'weighted_value_currency']
      end

      if attributes.key?(:'rotten_time')
        self.rotten_time = attributes[:'rotten_time']
      end

      if attributes.key?(:'owner_name')
        self.owner_name = attributes[:'owner_name']
      end

      if attributes.key?(:'cc_email')
        self.cc_email = attributes[:'cc_email']
      end

      if attributes.key?(:'org_hidden')
        self.org_hidden = attributes[:'org_hidden']
      end

      if attributes.key?(:'person_hidden')
        self.person_hidden = attributes[:'person_hidden']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'origin_id')
        self.origin_id = attributes[:'origin_id']
      end

      if attributes.key?(:'channel')
        self.channel = attributes[:'channel']
      end

      if attributes.key?(:'channel_id')
        self.channel_id = attributes[:'channel_id']
      end

      if attributes.key?(:'arr')
        self.arr = attributes[:'arr']
      end

      if attributes.key?(:'mrr')
        self.mrr = attributes[:'mrr']
      end

      if attributes.key?(:'acv')
        self.acv = attributes[:'acv']
      end

      if attributes.key?(:'arr_currency')
        self.arr_currency = attributes[:'arr_currency']
      end

      if attributes.key?(:'mrr_currency')
        self.mrr_currency = attributes[:'mrr_currency']
      end

      if attributes.key?(:'acv_currency')
        self.acv_currency = attributes[:'acv_currency']
      end

      if attributes.key?(:'average_time_to_won')
        self.average_time_to_won = attributes[:'average_time_to_won']
      end

      if attributes.key?(:'average_stage_progress')
        self.average_stage_progress = attributes[:'average_stage_progress']
      end

      if attributes.key?(:'age')
        self.age = attributes[:'age']
      end

      if attributes.key?(:'stay_in_pipeline_stages')
        self.stay_in_pipeline_stages = attributes[:'stay_in_pipeline_stages']
      end

      if attributes.key?(:'last_activity')
        self.last_activity = attributes[:'last_activity']
      end

      if attributes.key?(:'next_activity')
        self.next_activity = attributes[:'next_activity']
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
          creator_user_id == o.creator_user_id &&
          user_id == o.user_id &&
          person_id == o.person_id &&
          org_id == o.org_id &&
          stage_id == o.stage_id &&
          title == o.title &&
          value == o.value &&
          currency == o.currency &&
          add_time == o.add_time &&
          update_time == o.update_time &&
          stage_change_time == o.stage_change_time &&
          active == o.active &&
          deleted == o.deleted &&
          status == o.status &&
          probability == o.probability &&
          next_activity_date == o.next_activity_date &&
          next_activity_time == o.next_activity_time &&
          next_activity_id == o.next_activity_id &&
          last_activity_id == o.last_activity_id &&
          last_activity_date == o.last_activity_date &&
          lost_reason == o.lost_reason &&
          visible_to == o.visible_to &&
          close_time == o.close_time &&
          pipeline_id == o.pipeline_id &&
          won_time == o.won_time &&
          first_won_time == o.first_won_time &&
          lost_time == o.lost_time &&
          products_count == o.products_count &&
          files_count == o.files_count &&
          notes_count == o.notes_count &&
          followers_count == o.followers_count &&
          email_messages_count == o.email_messages_count &&
          activities_count == o.activities_count &&
          done_activities_count == o.done_activities_count &&
          undone_activities_count == o.undone_activities_count &&
          participants_count == o.participants_count &&
          expected_close_date == o.expected_close_date &&
          last_incoming_mail_time == o.last_incoming_mail_time &&
          last_outgoing_mail_time == o.last_outgoing_mail_time &&
          label == o.label &&
          stage_order_nr == o.stage_order_nr &&
          person_name == o.person_name &&
          org_name == o.org_name &&
          next_activity_subject == o.next_activity_subject &&
          next_activity_type == o.next_activity_type &&
          next_activity_duration == o.next_activity_duration &&
          next_activity_note == o.next_activity_note &&
          formatted_value == o.formatted_value &&
          weighted_value == o.weighted_value &&
          formatted_weighted_value == o.formatted_weighted_value &&
          weighted_value_currency == o.weighted_value_currency &&
          rotten_time == o.rotten_time &&
          owner_name == o.owner_name &&
          cc_email == o.cc_email &&
          org_hidden == o.org_hidden &&
          person_hidden == o.person_hidden &&
          origin == o.origin &&
          origin_id == o.origin_id &&
          channel == o.channel &&
          channel_id == o.channel_id &&
          arr == o.arr &&
          mrr == o.mrr &&
          acv == o.acv &&
          arr_currency == o.arr_currency &&
          mrr_currency == o.mrr_currency &&
          acv_currency == o.acv_currency &&
          average_time_to_won == o.average_time_to_won &&
          average_stage_progress == o.average_stage_progress &&
          age == o.age &&
          stay_in_pipeline_stages == o.stay_in_pipeline_stages &&
          last_activity == o.last_activity &&
          next_activity == o.next_activity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, creator_user_id, user_id, person_id, org_id, stage_id, title, value, currency, add_time, update_time, stage_change_time, active, deleted, status, probability, next_activity_date, next_activity_time, next_activity_id, last_activity_id, last_activity_date, lost_reason, visible_to, close_time, pipeline_id, won_time, first_won_time, lost_time, products_count, files_count, notes_count, followers_count, email_messages_count, activities_count, done_activities_count, undone_activities_count, participants_count, expected_close_date, last_incoming_mail_time, last_outgoing_mail_time, label, stage_order_nr, person_name, org_name, next_activity_subject, next_activity_type, next_activity_duration, next_activity_note, formatted_value, weighted_value, formatted_weighted_value, weighted_value_currency, rotten_time, owner_name, cc_email, org_hidden, person_hidden, origin, origin_id, channel, channel_id, arr, mrr, acv, arr_currency, mrr_currency, acv_currency, average_time_to_won, average_stage_progress, age, stay_in_pipeline_stages, last_activity, next_activity].hash
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
      leftover_keys = attributes.keys - transformed_hash.keys
      transformed_hash.merge!(leftover_keys.map { |key| [key, attributes[key]] }.to_h)
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
      return attributes_hash if attributes_hash
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
