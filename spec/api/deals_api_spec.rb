=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenPipette::DealsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DealsApi' do
  before do
    # run before each test
    @api_instance = OpenPipette::DealsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DealsApi' do
    it 'should create an instance of DealsApi' do
      expect(@api_instance).to be_instance_of(OpenPipette::DealsApi)
    end
  end

  # unit tests for add_deal
  # Add a deal
  # Adds a new deal. All deals created through the Pipedrive API will have a &#x60;origin&#x60; set to &#x60;API&#x60;. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the dealFields and look for &#x60;key&#x60; values. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/creating-a-deal\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;adding a deal&lt;/a&gt;.
  # @param [Hash] opts the optional parameters
  # @option opts [AddDealRequest] :add_deal_request 
  # @return [DealResponse200]
  describe 'add_deal test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_deal_follower
  # Add a follower to a deal
  # Adds a follower to a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [AddDealFollowerRequest] :add_deal_follower_request 
  # @return [AddDealFollowerResponse200]
  describe 'add_deal_follower test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_deal_participant
  # Add a participant to a deal
  # Adds a participant to a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [AddDealParticipantRequest] :add_deal_participant_request 
  # @return [AddDealParticipantResponse200]
  describe 'add_deal_participant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_deal_product
  # Add a product to a deal
  # Adds a product to a deal, creating a new item called a deal-product.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [AddDealProductRequest] :add_deal_product_request 
  # @return [GetAddProductAttachementResponse200]
  describe 'add_deal_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_deal
  # Delete a deal
  # Marks a deal as deleted. After 30 days, the deal will be permanently deleted.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @return [DeleteDealResponse200]
  describe 'delete_deal test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_deal_follower
  # Delete a follower from a deal
  # Deletes a follower from a deal.
  # @param id The ID of the deal
  # @param follower_id The ID of the follower
  # @param [Hash] opts the optional parameters
  # @return [DeleteDealFollowerResponse200]
  describe 'delete_deal_follower test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_deal_participant
  # Delete a participant from a deal
  # Deletes a participant from a deal.
  # @param id The ID of the deal
  # @param deal_participant_id The ID of the participant of the deal
  # @param [Hash] opts the optional parameters
  # @return [DeleteDealParticipantResponse200]
  describe 'delete_deal_participant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_deal_product
  # Delete an attached product from a deal
  # Deletes a product attachment from a deal, using the &#x60;product_attachment_id&#x60;.
  # @param id The ID of the deal
  # @param product_attachment_id The product attachment ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteDealProductResponse200]
  describe 'delete_deal_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_deals
  # Delete multiple deals in bulk
  # Marks multiple deals as deleted. After 30 days, the deals will be permanently deleted.
  # @param ids The comma-separated IDs that will be deleted
  # @param [Hash] opts the optional parameters
  # @return [DeleteDealsResponse200]
  describe 'delete_deals test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for duplicate_deal
  # Duplicate deal
  # Duplicates a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @return [DuplicateDealResponse200]
  describe 'duplicate_deal test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal
  # Get details of a deal
  # Returns the details of a specific deal. Note that this also returns some additional fields which are not present when asking for all deals – such as deal age and stay in pipeline stages. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the &#x60;key&#x60; value of dealFields. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/getting-details-of-a-deal\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;getting details of a deal&lt;/a&gt;.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @return [GetDealResponse200]
  describe 'get_deal test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_activities
  # List activities associated with a deal
  # Lists activities associated with a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @option opts [Float] :done Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted, returns both Done and Not done activities.
  # @option opts [String] :exclude A comma-separated string of activity IDs to exclude from result
  # @return [GetDealActivitiesResponse200]
  describe 'get_deal_activities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_changelog
  # List updates about deal field values
  # Lists updates about field values of a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor For pagination, the marker (an opaque string value) representing the first item on the next page
  # @option opts [Integer] :limit Items shown per page
  # @return [GetChangelogResponse200]
  describe 'get_deal_changelog test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_files
  # List files attached to a deal
  # Lists files associated with a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @option opts [String] :sort The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). Supported fields: &#x60;id&#x60;, &#x60;user_id&#x60;, &#x60;deal_id&#x60;, &#x60;person_id&#x60;, &#x60;org_id&#x60;, &#x60;product_id&#x60;, &#x60;add_time&#x60;, &#x60;update_time&#x60;, &#x60;file_name&#x60;, &#x60;file_type&#x60;, &#x60;file_size&#x60;, &#x60;comment&#x60;.
  # @return [GetAssociatedFilesResponse200]
  describe 'get_deal_files test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_followers
  # List followers of a deal
  # Lists the followers of a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @return [GetAssociatedFollowersResponse200]
  describe 'get_deal_followers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_mail_messages
  # List mail messages associated with a deal
  # Lists mail messages associated with a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @return [GetAssociatedMailMessagesResponse200]
  describe 'get_deal_mail_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_participants
  # List participants of a deal
  # Lists the participants associated with a deal.&lt;br&gt;If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the &#x60;data.marketing_status&#x60; field.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @return [GetDealParticipantsResponse200]
  describe 'get_deal_participants test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_participants_changelog
  # List updates about participants of a deal
  # List updates about participants of a deal. This is a cursor-paginated endpoint. For more information, please refer to our documentation on &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/core-api-concepts-pagination\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;pagination&lt;/a&gt;.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Items shown per page
  # @option opts [String] :cursor For pagination, the marker (an opaque string value) representing the first item on the next page
  # @return [GetParticipantsChangelog200]
  describe 'get_deal_participants_changelog test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_persons
  # List all persons associated with a deal
  # Lists all persons associated with a deal, regardless of whether the person is the primary contact of the deal, or added as a participant.&lt;br&gt;If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the &#x60;data.marketing_status&#x60; field.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @return [ListPersonsResponse200]
  describe 'get_deal_persons test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_products
  # List products attached to a deal
  # Lists products attached to a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @option opts [Float] :include_product_data Whether to fetch product data along with each attached product (1) or not (0, default)
  # @return [ListProductsResponse200]
  describe 'get_deal_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_updates
  # List updates about a deal
  # Lists updates about a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @option opts [String] :all_changes Whether to show custom field updates or not. 1 &#x3D; Include custom field changes. If omitted returns changes without custom field updates.
  # @option opts [String] :items A comma-separated string for filtering out item specific updates. (Possible values - call, activity, plannedActivity, change, note, deal, file, dealChange, personChange, organizationChange, follower, dealFollower, personFollower, organizationFollower, participant, comment, mailMessage, mailMessageWithAttachment, invoice, document, marketing_campaign_stat, marketing_status_change).
  # @return [GetDealUpdatesResponse200]
  describe 'get_deal_updates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deal_users
  # List permitted users
  # Lists the users permitted to access a deal.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @return [ListPermittedUsersResponse200]
  describe 'get_deal_users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deals
  # Get all deals
  # Returns all deals. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/getting-all-deals\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;getting all deals&lt;/a&gt;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id If supplied, only deals matching the given user will be returned. However, &#x60;filter_id&#x60; and &#x60;owned_by_you&#x60; takes precedence over &#x60;user_id&#x60; when supplied.
  # @option opts [Integer] :filter_id The ID of the filter to use
  # @option opts [Integer] :stage_id If supplied, only deals within the given stage will be returned
  # @option opts [String] :status Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @option opts [String] :sort The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys).
  # @option opts [Float] :owned_by_you When supplied, only deals owned by you are returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;owned_by_you&#x60; when both are supplied.
  # @return [GetDealsResponse200]
  describe 'get_deals test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deals_collection
  # Get all deals (BETA)
  # Returns all deals. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/core-api-concepts-pagination\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;pagination&lt;/a&gt;. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/global-user-management\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor For pagination, the marker (an opaque string value) representing the first item on the next page
  # @option opts [Integer] :limit For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
  # @option opts [String] :since The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field.
  # @option opts [String] :_until The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field.
  # @option opts [Integer] :user_id If supplied, only deals matching the given user will be returned
  # @option opts [Integer] :stage_id If supplied, only deals within the given stage will be returned
  # @option opts [String] :status Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
  # @return [GetDealsCollectionResponse200]
  describe 'get_deals_collection test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deals_summary
  # Get deals summary
  # Returns a summary of all the deals.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status Only fetch deals with a specific status. open &#x3D; Open, won &#x3D; Won, lost &#x3D; Lost.
  # @option opts [Integer] :filter_id &lt;code&gt;user_id&lt;/code&gt; will not be considered. Only deals matching the given filter will be returned.
  # @option opts [Integer] :user_id Only deals matching the given user will be returned. &#x60;user_id&#x60; will not be considered if you use &#x60;filter_id&#x60;.
  # @option opts [Integer] :stage_id Only deals within the given stage will be returned
  # @return [GetDealsSummaryResponse200]
  describe 'get_deals_summary test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_deals_timeline
  # Get deals timeline
  # Returns open and won deals, grouped by a defined interval of time set in a date-type dealField (&#x60;field_key&#x60;) — e.g. when month is the chosen interval, and 3 months are asked starting from January 1st, 2012, deals are returned grouped into 3 groups — January, February and March — based on the value of the given &#x60;field_key&#x60;.
  # @param start_date The date when the first interval starts. Format: YYYY-MM-DD.
  # @param interval The type of the interval&lt;table&gt;&lt;tr&gt;&lt;th&gt;Value&lt;/th&gt;&lt;th&gt;Description&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;day&#x60;&lt;/td&gt;&lt;td&gt;Day&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;week&#x60;&lt;/td&gt;&lt;td&gt;A full week (7 days) starting from &#x60;start_date&#x60;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;month&#x60;&lt;/td&gt;&lt;td&gt;A full month (depending on the number of days in given month) starting from &#x60;start_date&#x60;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;quarter&#x60;&lt;/td&gt;&lt;td&gt;A full quarter (3 months) starting from &#x60;start_date&#x60;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;
  # @param amount The number of given intervals, starting from &#x60;start_date&#x60;, to fetch. E.g. 3 (months).
  # @param field_key The date field key which deals will be retrieved from
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id If supplied, only deals matching the given user will be returned
  # @option opts [Integer] :pipeline_id If supplied, only deals matching the given pipeline will be returned
  # @option opts [Integer] :filter_id If supplied, only deals matching the given filter will be returned
  # @option opts [Float] :exclude_deals Whether to exclude deals list (1) or not (0). Note that when deals are excluded, the timeline summary (counts and values) is still returned.
  # @option opts [String] :totals_convert_currency The 3-letter currency code of any of the supported currencies. When supplied, &#x60;totals_converted&#x60; is returned per each interval which contains the currency-converted total amounts in the given currency. You may also set this parameter to &#x60;default_currency&#x60; in which case the user&#39;s default currency is used.
  # @return [GetDealsTimelineResponse200]
  describe 'get_deals_timeline test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for merge_deals
  # Merge two deals
  # Merges a deal with another deal. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/merging-two-deals\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;merging two deals&lt;/a&gt;.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [MergeDealsRequest] :merge_deals_request 
  # @return [MergeDealsResponse200]
  describe 'merge_deals test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_deals
  # Search deals
  # Searches all deals by title, notes and/or custom fields. This endpoint is a wrapper of &lt;a href&#x3D;\&quot;https://developers.pipedrive.com/docs/api/v1/ItemSearch#searchItem\&quot;&gt;/v1/itemSearch&lt;/a&gt; with a narrower OAuth scope. Found deals can be filtered by the person ID and the organization ID.
  # @param term The search term to look for. Minimum 2 characters (or 1 if using &#x60;exact_match&#x60;). Please note that the search term has to be URL encoded.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: &#x60;address&#x60;, &#x60;varchar&#x60;, &#x60;text&#x60;, &#x60;varchar_auto&#x60;, &#x60;double&#x60;, &#x60;monetary&#x60; and &#x60;phone&#x60;. Read more about searching by custom fields &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;.
  # @option opts [Boolean] :exact_match When enabled, only full exact matches against the given term are returned. It is &lt;b&gt;not&lt;/b&gt; case sensitive.
  # @option opts [Integer] :person_id Will filter deals by the provided person ID. The upper limit of found deals associated with the person is 2000.
  # @option opts [Integer] :organization_id Will filter deals by the provided organization ID. The upper limit of found deals associated with the organization is 2000.
  # @option opts [String] :status Will filter deals by the provided specific status. open &#x3D; Open, won &#x3D; Won, lost &#x3D; Lost. The upper limit of found deals associated with the status is 2000.
  # @option opts [String] :include_fields Supports including optional fields in the results which are not provided by default
  # @option opts [Integer] :start Pagination start. Note that the pagination is based on main results and does not include related items when using &#x60;search_for_related_items&#x60; parameter.
  # @option opts [Integer] :limit Items shown per page
  # @return [SearchDealsResponse200]
  describe 'search_deals test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_deal
  # Update a deal
  # Updates the properties of a deal. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/updating-a-deal\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;updating a deal&lt;/a&gt;.
  # @param id The ID of the deal
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateDealRequest] :update_deal_request 
  # @return [DealResponse200]
  describe 'update_deal test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_deal_product
  # Update the product attached to a deal
  # Updates the details of the product that has been attached to a deal.
  # @param id The ID of the deal
  # @param product_attachment_id The ID of the deal-product (the ID of the product attached to the deal)
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateDealProductRequest] :update_deal_product_request 
  # @return [GetProductAttachementResponse200]
  describe 'update_deal_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
