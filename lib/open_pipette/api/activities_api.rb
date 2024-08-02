=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class ActivitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an activity
    # Adds a new activity. Includes `more_activities_scheduled_in_context` property in response's `additional_data` which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data). For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-an-activity\" target=\"_blank\" rel=\"noopener noreferrer\">adding an activity</a>. <br /> <br /> ***Starting from 30.09.2024, activity attendees will receive updates only if the activity owner has an active calendar sync***
    # @param [Hash] opts the optional parameters
    # @option opts [AddActivityRequest] :add_activity_request 
    # @return [AddActivityResponse200]
    def add_activity(opts = {})
      data, _status_code, _headers = add_activity_with_http_info(opts)
      data
    end

    # Add an activity
    # Adds a new activity. Includes &#x60;more_activities_scheduled_in_context&#x60; property in response&#39;s &#x60;additional_data&#x60; which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data). For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/adding-an-activity\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;adding an activity&lt;/a&gt;. &lt;br /&gt; &lt;br /&gt; ***Starting from 30.09.2024, activity attendees will receive updates only if the activity owner has an active calendar sync***
    # @param [Hash] opts the optional parameters
    # @option opts [AddActivityRequest] :add_activity_request 
    # @return [Array<(AddActivityResponse200, Integer, Hash)>] AddActivityResponse200 data, response status code and response headers
    def add_activity_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.add_activity ...'
      end
      # resource path
      local_var_path = '/activities'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_activity_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'AddActivityResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.add_activity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#add_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete multiple activities in bulk
    # Marks multiple activities as deleted. After 30 days, the activities will be permanently deleted.
    # @param ids [String] The comma-separated IDs of activities that will be deleted
    # @param [Hash] opts the optional parameters
    # @return [DeleteActivitiesResponse200]
    def delete_activities(ids, opts = {})
      data, _status_code, _headers = delete_activities_with_http_info(ids, opts)
      data
    end

    # Delete multiple activities in bulk
    # Marks multiple activities as deleted. After 30 days, the activities will be permanently deleted.
    # @param ids [String] The comma-separated IDs of activities that will be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteActivitiesResponse200, Integer, Hash)>] DeleteActivitiesResponse200 data, response status code and response headers
    def delete_activities_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.delete_activities ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ActivitiesApi.delete_activities"
      end
      # resource path
      local_var_path = '/activities'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteActivitiesResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.delete_activities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#delete_activities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an activity
    # Marks an activity as deleted. After 30 days, the activity will be permanently deleted.
    # @param id [Integer] The ID of the activity
    # @param [Hash] opts the optional parameters
    # @return [DeleteActivityResponse200]
    def delete_activity(id, opts = {})
      data, _status_code, _headers = delete_activity_with_http_info(id, opts)
      data
    end

    # Delete an activity
    # Marks an activity as deleted. After 30 days, the activity will be permanently deleted.
    # @param id [Integer] The ID of the activity
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteActivityResponse200, Integer, Hash)>] DeleteActivityResponse200 data, response status code and response headers
    def delete_activity_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.delete_activity ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ActivitiesApi.delete_activity"
      end
      # resource path
      local_var_path = '/activities/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteActivityResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.delete_activity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#delete_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all activities assigned to a particular user
    # Returns all activities assigned to a particular user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The ID of the user whose activities will be fetched. If omitted, the user associated with the API token will be used. If 0, activities for all company users will be fetched based on the permission sets.
    # @option opts [Integer] :filter_id The ID of the filter to use (will narrow down results if used together with &#x60;user_id&#x60; parameter)
    # @option opts [String] :type The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes.
    # @option opts [Integer] :limit For pagination, the limit of entries to be returned. If not provided, 100 items will be returned.
    # @option opts [Integer] :start For pagination, the position that represents the first result for the page
    # @option opts [Date] :start_date Use the activity due date where you wish to begin fetching activities from. Insert due date in YYYY-MM-DD format.
    # @option opts [Date] :end_date Use the activity due date where you wish to stop fetching activities from. Insert due date in YYYY-MM-DD format.
    # @option opts [Float] :done Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted returns both done and not done activities.
    # @return [GetActivitiesResponse200]
    def get_activities(opts = {})
      data, _status_code, _headers = get_activities_with_http_info(opts)
      data
    end

    # Get all activities assigned to a particular user
    # Returns all activities assigned to a particular user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The ID of the user whose activities will be fetched. If omitted, the user associated with the API token will be used. If 0, activities for all company users will be fetched based on the permission sets.
    # @option opts [Integer] :filter_id The ID of the filter to use (will narrow down results if used together with &#x60;user_id&#x60; parameter)
    # @option opts [String] :type The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes.
    # @option opts [Integer] :limit For pagination, the limit of entries to be returned. If not provided, 100 items will be returned.
    # @option opts [Integer] :start For pagination, the position that represents the first result for the page
    # @option opts [Date] :start_date Use the activity due date where you wish to begin fetching activities from. Insert due date in YYYY-MM-DD format.
    # @option opts [Date] :end_date Use the activity due date where you wish to stop fetching activities from. Insert due date in YYYY-MM-DD format.
    # @option opts [Float] :done Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted returns both done and not done activities.
    # @return [Array<(GetActivitiesResponse200, Integer, Hash)>] GetActivitiesResponse200 data, response status code and response headers
    def get_activities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.get_activities ...'
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'done'] && !allowable_values.include?(opts[:'done'])
        fail ArgumentError, "invalid value for \"done\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/activities'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'filter_id'] = opts[:'filter_id'] if !opts[:'filter_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'done'] = opts[:'done'] if !opts[:'done'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetActivitiesResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.get_activities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#get_activities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all activities (BETA)
    # Returns all activities. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions <a href=\"https://support.pipedrive.com/en/article/global-user-management\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor For pagination, the marker (an opaque string value) representing the first item on the next page
    # @option opts [Integer] :limit For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
    # @option opts [String] :since The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field.
    # @option opts [String] :_until The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field.
    # @option opts [Integer] :user_id The ID of the user whose activities will be fetched. If omitted, all activities are returned.
    # @option opts [Boolean] :done Whether the activity is done or not. &#x60;false&#x60; &#x3D; Not done, &#x60;true&#x60; &#x3D; Done. If omitted, returns both done and not done activities.
    # @option opts [String] :type The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes.
    # @return [GetActivitiesCollectionResponse200]
    def get_activities_collection(opts = {})
      data, _status_code, _headers = get_activities_collection_with_http_info(opts)
      data
    end

    # Get all activities (BETA)
    # Returns all activities. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/core-api-concepts-pagination\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;pagination&lt;/a&gt;. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/global-user-management\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor For pagination, the marker (an opaque string value) representing the first item on the next page
    # @option opts [Integer] :limit For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
    # @option opts [String] :since The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field.
    # @option opts [String] :_until The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field.
    # @option opts [Integer] :user_id The ID of the user whose activities will be fetched. If omitted, all activities are returned.
    # @option opts [Boolean] :done Whether the activity is done or not. &#x60;false&#x60; &#x3D; Not done, &#x60;true&#x60; &#x3D; Done. If omitted, returns both done and not done activities.
    # @option opts [String] :type The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes.
    # @return [Array<(GetActivitiesCollectionResponse200, Integer, Hash)>] GetActivitiesCollectionResponse200 data, response status code and response headers
    def get_activities_collection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.get_activities_collection ...'
      end
      # resource path
      local_var_path = '/activities/collection'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'until'] = opts[:'_until'] if !opts[:'_until'].nil?
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'done'] = opts[:'done'] if !opts[:'done'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetActivitiesCollectionResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.get_activities_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#get_activities_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of an activity
    # Returns the details of a specific activity.
    # @param id [Integer] The ID of the activity
    # @param [Hash] opts the optional parameters
    # @return [GetActivityResponse200]
    def get_activity(id, opts = {})
      data, _status_code, _headers = get_activity_with_http_info(id, opts)
      data
    end

    # Get details of an activity
    # Returns the details of a specific activity.
    # @param id [Integer] The ID of the activity
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetActivityResponse200, Integer, Hash)>] GetActivityResponse200 data, response status code and response headers
    def get_activity_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.get_activity ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ActivitiesApi.get_activity"
      end
      # resource path
      local_var_path = '/activities/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetActivityResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.get_activity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#get_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an activity
    # Updates an activity. Includes `more_activities_scheduled_in_context` property in response's `additional_data` which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data). <br /> <br /> ***Starting from 30.09.2024, activity attendees will receive updates only if the activity owner has an active calendar sync***
    # @param id [Integer] The ID of the activity
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateActivityRequest] :update_activity_request 
    # @return [UpdateActivityResponse200]
    def update_activity(id, opts = {})
      data, _status_code, _headers = update_activity_with_http_info(id, opts)
      data
    end

    # Update an activity
    # Updates an activity. Includes &#x60;more_activities_scheduled_in_context&#x60; property in response&#39;s &#x60;additional_data&#x60; which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data). &lt;br /&gt; &lt;br /&gt; ***Starting from 30.09.2024, activity attendees will receive updates only if the activity owner has an active calendar sync***
    # @param id [Integer] The ID of the activity
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateActivityRequest] :update_activity_request 
    # @return [Array<(UpdateActivityResponse200, Integer, Hash)>] UpdateActivityResponse200 data, response status code and response headers
    def update_activity_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivitiesApi.update_activity ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ActivitiesApi.update_activity"
      end
      # resource path
      local_var_path = '/activities/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_activity_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateActivityResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"ActivitiesApi.update_activity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitiesApi#update_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
