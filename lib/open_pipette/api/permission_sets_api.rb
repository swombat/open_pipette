=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class PermissionSetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get one permission set
    # Returns data about a specific permission set.
    # @param id [String] The ID of the permission set
    # @param [Hash] opts the optional parameters
    # @return [SinglePermissionSetResponse200]
    def get_permission_set(id, opts = {})
      data, _status_code, _headers = get_permission_set_with_http_info(id, opts)
      data
    end

    # Get one permission set
    # Returns data about a specific permission set.
    # @param id [String] The ID of the permission set
    # @param [Hash] opts the optional parameters
    # @return [Array<(SinglePermissionSetResponse200, Integer, Hash)>] SinglePermissionSetResponse200 data, response status code and response headers
    def get_permission_set_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionSetsApi.get_permission_set ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PermissionSetsApi.get_permission_set"
      end
      # resource path
      local_var_path = '/permissionSets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SinglePermissionSetResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"PermissionSetsApi.get_permission_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionSetsApi#get_permission_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List permission set assignments
    # Returns the list of assignments for a permission set.
    # @param id [String] The ID of the permission set
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit Items shown per page
    # @return [UserAssignmentsToPermissionSetResponse200]
    def get_permission_set_assignments(id, opts = {})
      data, _status_code, _headers = get_permission_set_assignments_with_http_info(id, opts)
      data
    end

    # List permission set assignments
    # Returns the list of assignments for a permission set.
    # @param id [String] The ID of the permission set
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit Items shown per page
    # @return [Array<(UserAssignmentsToPermissionSetResponse200, Integer, Hash)>] UserAssignmentsToPermissionSetResponse200 data, response status code and response headers
    def get_permission_set_assignments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionSetsApi.get_permission_set_assignments ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PermissionSetsApi.get_permission_set_assignments"
      end
      # resource path
      local_var_path = '/permissionSets/{id}/assignments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserAssignmentsToPermissionSetResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"PermissionSetsApi.get_permission_set_assignments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionSetsApi#get_permission_set_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all permission sets
    # Returns data about all permission sets.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app The app to filter the permission sets by
    # @return [GetPermissionSetsResponse200]
    def get_permission_sets(opts = {})
      data, _status_code, _headers = get_permission_sets_with_http_info(opts)
      data
    end

    # Get all permission sets
    # Returns data about all permission sets.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app The app to filter the permission sets by
    # @return [Array<(GetPermissionSetsResponse200, Integer, Hash)>] GetPermissionSetsResponse200 data, response status code and response headers
    def get_permission_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionSetsApi.get_permission_sets ...'
      end
      allowable_values = ["sales", "projects", "campaigns", "global", "account_settings"]
      if @api_client.config.client_side_validation && opts[:'app'] && !allowable_values.include?(opts[:'app'])
        fail ArgumentError, "invalid value for \"app\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/permissionSets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'app'] = opts[:'app'] if !opts[:'app'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetPermissionSetsResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"PermissionSetsApi.get_permission_sets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionSetsApi#get_permission_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
