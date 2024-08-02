=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class NotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a note
    # Adds a new note.
    # @param [Hash] opts the optional parameters
    # @option opts [AddNoteRequest] :add_note_request 
    # @return [OneNoteResponse200]
    def add_note(opts = {})
      data, _status_code, _headers = add_note_with_http_info(opts)
      data
    end

    # Add a note
    # Adds a new note.
    # @param [Hash] opts the optional parameters
    # @option opts [AddNoteRequest] :add_note_request 
    # @return [Array<(OneNoteResponse200, Integer, Hash)>] OneNoteResponse200 data, response status code and response headers
    def add_note_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.add_note ...'
      end
      # resource path
      local_var_path = '/notes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_note_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OneNoteResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.add_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#add_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a comment to a note
    # Adds a new comment to a note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @option opts [CommentPostPutObject] :comment_post_put_object 
    # @return [OneCommentResponse200]
    def add_note_comment(id, opts = {})
      data, _status_code, _headers = add_note_comment_with_http_info(id, opts)
      data
    end

    # Add a comment to a note
    # Adds a new comment to a note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @option opts [CommentPostPutObject] :comment_post_put_object 
    # @return [Array<(OneCommentResponse200, Integer, Hash)>] OneCommentResponse200 data, response status code and response headers
    def add_note_comment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.add_note_comment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.add_note_comment"
      end
      # resource path
      local_var_path = '/notes/{id}/comments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'comment_post_put_object'])

      # return_type
      return_type = opts[:debug_return_type] || 'OneCommentResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.add_note_comment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#add_note_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a comment related to a note
    # Deletes a comment.
    # @param id [Integer] The ID of the note
    # @param comment_id [String] The ID of the comment
    # @param [Hash] opts the optional parameters
    # @return [DeleteCommentResponse200]
    def delete_comment(id, comment_id, opts = {})
      data, _status_code, _headers = delete_comment_with_http_info(id, comment_id, opts)
      data
    end

    # Delete a comment related to a note
    # Deletes a comment.
    # @param id [Integer] The ID of the note
    # @param comment_id [String] The ID of the comment
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCommentResponse200, Integer, Hash)>] DeleteCommentResponse200 data, response status code and response headers
    def delete_comment_with_http_info(id, comment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.delete_comment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.delete_comment"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling NotesApi.delete_comment"
      end
      # resource path
      local_var_path = '/notes/{id}/comments/{commentId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'commentId' + '}', CGI.escape(comment_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteCommentResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.delete_comment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a note
    # Deletes a specific note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @return [DeleteNoteResponse200]
    def delete_note(id, opts = {})
      data, _status_code, _headers = delete_note_with_http_info(id, opts)
      data
    end

    # Delete a note
    # Deletes a specific note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteNoteResponse200, Integer, Hash)>] DeleteNoteResponse200 data, response status code and response headers
    def delete_note_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.delete_note ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.delete_note"
      end
      # resource path
      local_var_path = '/notes/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteNoteResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.delete_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#delete_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one comment
    # Returns the details of a comment.
    # @param id [Integer] The ID of the note
    # @param comment_id [String] The ID of the comment
    # @param [Hash] opts the optional parameters
    # @return [OneCommentResponse200]
    def get_comment(id, comment_id, opts = {})
      data, _status_code, _headers = get_comment_with_http_info(id, comment_id, opts)
      data
    end

    # Get one comment
    # Returns the details of a comment.
    # @param id [Integer] The ID of the note
    # @param comment_id [String] The ID of the comment
    # @param [Hash] opts the optional parameters
    # @return [Array<(OneCommentResponse200, Integer, Hash)>] OneCommentResponse200 data, response status code and response headers
    def get_comment_with_http_info(id, comment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.get_comment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.get_comment"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling NotesApi.get_comment"
      end
      # resource path
      local_var_path = '/notes/{id}/comments/{commentId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'commentId' + '}', CGI.escape(comment_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OneCommentResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.get_comment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one note
    # Returns details about a specific note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @return [OneNoteResponse200]
    def get_note(id, opts = {})
      data, _status_code, _headers = get_note_with_http_info(id, opts)
      data
    end

    # Get one note
    # Returns details about a specific note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @return [Array<(OneNoteResponse200, Integer, Hash)>] OneNoteResponse200 data, response status code and response headers
    def get_note_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.get_note ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.get_note"
      end
      # resource path
      local_var_path = '/notes/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'OneNoteResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.get_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all comments for a note
    # Returns all comments associated with a note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit Items shown per page
    # @return [GetCommentsResponse200]
    def get_note_comments(id, opts = {})
      data, _status_code, _headers = get_note_comments_with_http_info(id, opts)
      data
    end

    # Get all comments for a note
    # Returns all comments associated with a note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit Items shown per page
    # @return [Array<(GetCommentsResponse200, Integer, Hash)>] GetCommentsResponse200 data, response status code and response headers
    def get_note_comments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.get_note_comments ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.get_note_comments"
      end
      # resource path
      local_var_path = '/notes/{id}/comments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCommentsResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.get_note_comments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_note_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all notes
    # Returns all notes.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The ID of the user whose notes to fetch. If omitted, notes by all users will be returned.
    # @option opts [String] :lead_id The ID of the lead which notes to fetch. If omitted, notes about all leads will be returned.
    # @option opts [Integer] :deal_id The ID of the deal which notes to fetch. If omitted, notes about all deals will be returned.
    # @option opts [Integer] :person_id The ID of the person whose notes to fetch. If omitted, notes about all persons will be returned.
    # @option opts [Integer] :org_id The ID of the organization which notes to fetch. If omitted, notes about all organizations will be returned.
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit Items shown per page
    # @option opts [String] :sort The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). Supported fields: &#x60;id&#x60;, &#x60;user_id&#x60;, &#x60;deal_id&#x60;, &#x60;person_id&#x60;, &#x60;org_id&#x60;, &#x60;content&#x60;, &#x60;add_time&#x60;, &#x60;update_time&#x60;.
    # @option opts [Date] :start_date The date in format of YYYY-MM-DD from which notes to fetch
    # @option opts [Date] :end_date The date in format of YYYY-MM-DD until which notes to fetch to
    # @option opts [Float] :pinned_to_lead_flag If set, the results are filtered by note to lead pinning state
    # @option opts [Float] :pinned_to_deal_flag If set, the results are filtered by note to deal pinning state
    # @option opts [Float] :pinned_to_organization_flag If set, the results are filtered by note to organization pinning state
    # @option opts [Float] :pinned_to_person_flag If set, the results are filtered by note to person pinning state
    # @return [GetNotesResponse200]
    def get_notes(opts = {})
      data, _status_code, _headers = get_notes_with_http_info(opts)
      data
    end

    # Get all notes
    # Returns all notes.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The ID of the user whose notes to fetch. If omitted, notes by all users will be returned.
    # @option opts [String] :lead_id The ID of the lead which notes to fetch. If omitted, notes about all leads will be returned.
    # @option opts [Integer] :deal_id The ID of the deal which notes to fetch. If omitted, notes about all deals will be returned.
    # @option opts [Integer] :person_id The ID of the person whose notes to fetch. If omitted, notes about all persons will be returned.
    # @option opts [Integer] :org_id The ID of the organization which notes to fetch. If omitted, notes about all organizations will be returned.
    # @option opts [Integer] :start Pagination start (default to 0)
    # @option opts [Integer] :limit Items shown per page
    # @option opts [String] :sort The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). Supported fields: &#x60;id&#x60;, &#x60;user_id&#x60;, &#x60;deal_id&#x60;, &#x60;person_id&#x60;, &#x60;org_id&#x60;, &#x60;content&#x60;, &#x60;add_time&#x60;, &#x60;update_time&#x60;.
    # @option opts [Date] :start_date The date in format of YYYY-MM-DD from which notes to fetch
    # @option opts [Date] :end_date The date in format of YYYY-MM-DD until which notes to fetch to
    # @option opts [Float] :pinned_to_lead_flag If set, the results are filtered by note to lead pinning state
    # @option opts [Float] :pinned_to_deal_flag If set, the results are filtered by note to deal pinning state
    # @option opts [Float] :pinned_to_organization_flag If set, the results are filtered by note to organization pinning state
    # @option opts [Float] :pinned_to_person_flag If set, the results are filtered by note to person pinning state
    # @return [Array<(GetNotesResponse200, Integer, Hash)>] GetNotesResponse200 data, response status code and response headers
    def get_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.get_notes ...'
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'pinned_to_lead_flag'] && !allowable_values.include?(opts[:'pinned_to_lead_flag'])
        fail ArgumentError, "invalid value for \"pinned_to_lead_flag\", must be one of #{allowable_values}"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'pinned_to_deal_flag'] && !allowable_values.include?(opts[:'pinned_to_deal_flag'])
        fail ArgumentError, "invalid value for \"pinned_to_deal_flag\", must be one of #{allowable_values}"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'pinned_to_organization_flag'] && !allowable_values.include?(opts[:'pinned_to_organization_flag'])
        fail ArgumentError, "invalid value for \"pinned_to_organization_flag\", must be one of #{allowable_values}"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'pinned_to_person_flag'] && !allowable_values.include?(opts[:'pinned_to_person_flag'])
        fail ArgumentError, "invalid value for \"pinned_to_person_flag\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/notes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'lead_id'] = opts[:'lead_id'] if !opts[:'lead_id'].nil?
      query_params[:'deal_id'] = opts[:'deal_id'] if !opts[:'deal_id'].nil?
      query_params[:'person_id'] = opts[:'person_id'] if !opts[:'person_id'].nil?
      query_params[:'org_id'] = opts[:'org_id'] if !opts[:'org_id'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'pinned_to_lead_flag'] = opts[:'pinned_to_lead_flag'] if !opts[:'pinned_to_lead_flag'].nil?
      query_params[:'pinned_to_deal_flag'] = opts[:'pinned_to_deal_flag'] if !opts[:'pinned_to_deal_flag'].nil?
      query_params[:'pinned_to_organization_flag'] = opts[:'pinned_to_organization_flag'] if !opts[:'pinned_to_organization_flag'].nil?
      query_params[:'pinned_to_person_flag'] = opts[:'pinned_to_person_flag'] if !opts[:'pinned_to_person_flag'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetNotesResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.get_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a comment related to a note
    # Updates a comment related to a note.
    # @param id [Integer] The ID of the note
    # @param comment_id [String] The ID of the comment
    # @param [Hash] opts the optional parameters
    # @option opts [CommentPostPutObject] :comment_post_put_object 
    # @return [OneCommentResponse200]
    def update_comment_for_note(id, comment_id, opts = {})
      data, _status_code, _headers = update_comment_for_note_with_http_info(id, comment_id, opts)
      data
    end

    # Update a comment related to a note
    # Updates a comment related to a note.
    # @param id [Integer] The ID of the note
    # @param comment_id [String] The ID of the comment
    # @param [Hash] opts the optional parameters
    # @option opts [CommentPostPutObject] :comment_post_put_object 
    # @return [Array<(OneCommentResponse200, Integer, Hash)>] OneCommentResponse200 data, response status code and response headers
    def update_comment_for_note_with_http_info(id, comment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.update_comment_for_note ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.update_comment_for_note"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling NotesApi.update_comment_for_note"
      end
      # resource path
      local_var_path = '/notes/{id}/comments/{commentId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'commentId' + '}', CGI.escape(comment_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'comment_post_put_object'])

      # return_type
      return_type = opts[:debug_return_type] || 'OneCommentResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.update_comment_for_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#update_comment_for_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @option opts [NoteRequest] :note_request 
    # @return [OneNoteResponse200]
    def update_note(id, opts = {})
      data, _status_code, _headers = update_note_with_http_info(id, opts)
      data
    end

    # Update a note
    # Updates a note.
    # @param id [Integer] The ID of the note
    # @param [Hash] opts the optional parameters
    # @option opts [NoteRequest] :note_request 
    # @return [Array<(OneNoteResponse200, Integer, Hash)>] OneNoteResponse200 data, response status code and response headers
    def update_note_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.update_note ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotesApi.update_note"
      end
      # resource path
      local_var_path = '/notes/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'note_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OneNoteResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NotesApi.update_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#update_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
