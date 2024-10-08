=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class CallLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a call log
    # Adds a new call log.
    # @param [Hash] opts the optional parameters
    # @option opts [AddCallLogRequest] :add_call_log_request 
    # @return [CallLogResponse200]
    def add_call_log(opts = {})
      data, _status_code, _headers = add_call_log_with_http_info(opts)
      data
    end

    # Add a call log
    # Adds a new call log.
    # @param [Hash] opts the optional parameters
    # @option opts [AddCallLogRequest] :add_call_log_request 
    # @return [Array<(CallLogResponse200, Integer, Hash)>] CallLogResponse200 data, response status code and response headers
    def add_call_log_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallLogsApi.add_call_log ...'
      end
      # resource path
      local_var_path = '/callLogs'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_call_log_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CallLogResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"CallLogsApi.add_call_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallLogsApi#add_call_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an audio file to the call log
    # Adds an audio recording to the call log. That audio can be played by those who have access to the call log object.
    # @param id [String] The ID received when you create the call log
    # @param file [File] Audio file supported by the HTML5 specification
    # @param [Hash] opts the optional parameters
    # @return [BaseResponse]
    def add_call_log_audio_file(id, file, opts = {})
      data, _status_code, _headers = add_call_log_audio_file_with_http_info(id, file, opts)
      data
    end

    # Attach an audio file to the call log
    # Adds an audio recording to the call log. That audio can be played by those who have access to the call log object.
    # @param id [String] The ID received when you create the call log
    # @param file [File] Audio file supported by the HTML5 specification
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseResponse, Integer, Hash)>] BaseResponse data, response status code and response headers
    def add_call_log_audio_file_with_http_info(id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallLogsApi.add_call_log_audio_file ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallLogsApi.add_call_log_audio_file"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling CallLogsApi.add_call_log_audio_file"
      end
      # resource path
      local_var_path = '/callLogs/{id}/recordings'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BaseResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"CallLogsApi.add_call_log_audio_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallLogsApi#add_call_log_audio_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a call log
    # Deletes a call log. If there is an audio recording attached to it, it will also be deleted. The related activity will not be removed by this request. If you want to remove the related activities, please use the endpoint which is specific for activities.
    # @param id [String] The ID received when you create the call log
    # @param [Hash] opts the optional parameters
    # @return [BaseResponse]
    def delete_call_log(id, opts = {})
      data, _status_code, _headers = delete_call_log_with_http_info(id, opts)
      data
    end

    # Delete a call log
    # Deletes a call log. If there is an audio recording attached to it, it will also be deleted. The related activity will not be removed by this request. If you want to remove the related activities, please use the endpoint which is specific for activities.
    # @param id [String] The ID received when you create the call log
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseResponse, Integer, Hash)>] BaseResponse data, response status code and response headers
    def delete_call_log_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallLogsApi.delete_call_log ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallLogsApi.delete_call_log"
      end
      # resource path
      local_var_path = '/callLogs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'BaseResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"CallLogsApi.delete_call_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallLogsApi#delete_call_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of a call log
    # Returns details of a specific call log.
    # @param id [String] The ID received when you create the call log
    # @param [Hash] opts the optional parameters
    # @return [CallLogResponse200]
    def get_call_log(id, opts = {})
      data, _status_code, _headers = get_call_log_with_http_info(id, opts)
      data
    end

    # Get details of a call log
    # Returns details of a specific call log.
    # @param id [String] The ID received when you create the call log
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallLogResponse200, Integer, Hash)>] CallLogResponse200 data, response status code and response headers
    def get_call_log_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallLogsApi.get_call_log ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallLogsApi.get_call_log"
      end
      # resource path
      local_var_path = '/callLogs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CallLogResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"CallLogsApi.get_call_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallLogsApi#get_call_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all call logs assigned to a particular user
    # Returns all call logs assigned to a particular user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit For pagination, the limit of entries to be returned. The upper limit is 50.
    # @return [CallLogsResponse]
    def get_user_call_logs(opts = {})
      data, _status_code, _headers = get_user_call_logs_with_http_info(opts)
      data
    end

    # Get all call logs assigned to a particular user
    # Returns all call logs assigned to a particular user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit For pagination, the limit of entries to be returned. The upper limit is 50.
    # @return [Array<(CallLogsResponse, Integer, Hash)>] CallLogsResponse data, response status code and response headers
    def get_user_call_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallLogsApi.get_user_call_logs ...'
      end
      # resource path
      local_var_path = '/callLogs'

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
      return_type = opts[:debug_return_type] || 'CallLogsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"CallLogsApi.get_user_call_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallLogsApi#get_user_call_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
