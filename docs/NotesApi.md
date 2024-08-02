# OpenPipette::NotesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_note**](NotesApi.md#add_note) | **POST** /notes | Add a note |
| [**add_note_comment**](NotesApi.md#add_note_comment) | **POST** /notes/{id}/comments | Add a comment to a note |
| [**delete_comment**](NotesApi.md#delete_comment) | **DELETE** /notes/{id}/comments/{commentId} | Delete a comment related to a note |
| [**delete_note**](NotesApi.md#delete_note) | **DELETE** /notes/{id} | Delete a note |
| [**get_comment**](NotesApi.md#get_comment) | **GET** /notes/{id}/comments/{commentId} | Get one comment |
| [**get_note**](NotesApi.md#get_note) | **GET** /notes/{id} | Get one note |
| [**get_note_comments**](NotesApi.md#get_note_comments) | **GET** /notes/{id}/comments | Get all comments for a note |
| [**get_notes**](NotesApi.md#get_notes) | **GET** /notes | Get all notes |
| [**update_comment_for_note**](NotesApi.md#update_comment_for_note) | **PUT** /notes/{id}/comments/{commentId} | Update a comment related to a note |
| [**update_note**](NotesApi.md#update_note) | **PUT** /notes/{id} | Update a note |


## add_note

> <OneNoteResponse200> add_note(opts)

Add a note

Adds a new note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
opts = {
  add_note_request: OpenPipette::AddNoteRequest.new({content: 'content_example'}) # AddNoteRequest | 
}

begin
  # Add a note
  result = api_instance.add_note(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->add_note: #{e}"
end
```

#### Using the add_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneNoteResponse200>, Integer, Hash)> add_note_with_http_info(opts)

```ruby
begin
  # Add a note
  data, status_code, headers = api_instance.add_note_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneNoteResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->add_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_note_request** | [**AddNoteRequest**](AddNoteRequest.md) |  | [optional] |

### Return type

[**OneNoteResponse200**](OneNoteResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_note_comment

> <OneCommentResponse200> add_note_comment(id, opts)

Add a comment to a note

Adds a new comment to a note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note
opts = {
  comment_post_put_object: OpenPipette::CommentPostPutObject.new({content: 'content_example'}) # CommentPostPutObject | 
}

begin
  # Add a comment to a note
  result = api_instance.add_note_comment(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->add_note_comment: #{e}"
end
```

#### Using the add_note_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneCommentResponse200>, Integer, Hash)> add_note_comment_with_http_info(id, opts)

```ruby
begin
  # Add a comment to a note
  data, status_code, headers = api_instance.add_note_comment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneCommentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->add_note_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |
| **comment_post_put_object** | [**CommentPostPutObject**](CommentPostPutObject.md) |  | [optional] |

### Return type

[**OneCommentResponse200**](OneCommentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_comment

> <DeleteCommentResponse200> delete_comment(id, comment_id)

Delete a comment related to a note

Deletes a comment.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note
comment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the comment

begin
  # Delete a comment related to a note
  result = api_instance.delete_comment(id, comment_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->delete_comment: #{e}"
end
```

#### Using the delete_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommentResponse200>, Integer, Hash)> delete_comment_with_http_info(id, comment_id)

```ruby
begin
  # Delete a comment related to a note
  data, status_code, headers = api_instance.delete_comment_with_http_info(id, comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->delete_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |
| **comment_id** | **String** | The ID of the comment |  |

### Return type

[**DeleteCommentResponse200**](DeleteCommentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_note

> <DeleteNoteResponse200> delete_note(id)

Delete a note

Deletes a specific note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note

begin
  # Delete a note
  result = api_instance.delete_note(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->delete_note: #{e}"
end
```

#### Using the delete_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteNoteResponse200>, Integer, Hash)> delete_note_with_http_info(id)

```ruby
begin
  # Delete a note
  data, status_code, headers = api_instance.delete_note_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteNoteResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->delete_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |

### Return type

[**DeleteNoteResponse200**](DeleteNoteResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_comment

> <OneCommentResponse200> get_comment(id, comment_id)

Get one comment

Returns the details of a comment.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note
comment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the comment

begin
  # Get one comment
  result = api_instance.get_comment(id, comment_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_comment: #{e}"
end
```

#### Using the get_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneCommentResponse200>, Integer, Hash)> get_comment_with_http_info(id, comment_id)

```ruby
begin
  # Get one comment
  data, status_code, headers = api_instance.get_comment_with_http_info(id, comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneCommentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |
| **comment_id** | **String** | The ID of the comment |  |

### Return type

[**OneCommentResponse200**](OneCommentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_note

> <OneNoteResponse200> get_note(id)

Get one note

Returns details about a specific note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note

begin
  # Get one note
  result = api_instance.get_note(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_note: #{e}"
end
```

#### Using the get_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneNoteResponse200>, Integer, Hash)> get_note_with_http_info(id)

```ruby
begin
  # Get one note
  data, status_code, headers = api_instance.get_note_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneNoteResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |

### Return type

[**OneNoteResponse200**](OneNoteResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_note_comments

> <GetCommentsResponse200> get_note_comments(id, opts)

Get all comments for a note

Returns all comments associated with a note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all comments for a note
  result = api_instance.get_note_comments(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_note_comments: #{e}"
end
```

#### Using the get_note_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCommentsResponse200>, Integer, Hash)> get_note_comments_with_http_info(id, opts)

```ruby
begin
  # Get all comments for a note
  data, status_code, headers = api_instance.get_note_comments_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCommentsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_note_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetCommentsResponse200**](GetCommentsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notes

> <GetNotesResponse200> get_notes(opts)

Get all notes

Returns all notes.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
opts = {
  user_id: 56, # Integer | The ID of the user whose notes to fetch. If omitted, notes by all users will be returned.
  lead_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The ID of the lead which notes to fetch. If omitted, notes about all leads will be returned.
  deal_id: 56, # Integer | The ID of the deal which notes to fetch. If omitted, notes about all deals will be returned.
  person_id: 56, # Integer | The ID of the person whose notes to fetch. If omitted, notes about all persons will be returned.
  org_id: 56, # Integer | The ID of the organization which notes to fetch. If omitted, notes about all organizations will be returned.
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example', # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys). Supported fields: `id`, `user_id`, `deal_id`, `person_id`, `org_id`, `content`, `add_time`, `update_time`.
  start_date: Date.parse('2013-10-20'), # Date | The date in format of YYYY-MM-DD from which notes to fetch
  end_date: Date.parse('2013-10-20'), # Date | The date in format of YYYY-MM-DD until which notes to fetch to
  pinned_to_lead_flag: 0, # Float | If set, the results are filtered by note to lead pinning state
  pinned_to_deal_flag: 0, # Float | If set, the results are filtered by note to deal pinning state
  pinned_to_organization_flag: 0, # Float | If set, the results are filtered by note to organization pinning state
  pinned_to_person_flag: 0 # Float | If set, the results are filtered by note to person pinning state
}

begin
  # Get all notes
  result = api_instance.get_notes(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_notes: #{e}"
end
```

#### Using the get_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotesResponse200>, Integer, Hash)> get_notes_with_http_info(opts)

```ruby
begin
  # Get all notes
  data, status_code, headers = api_instance.get_notes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->get_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the user whose notes to fetch. If omitted, notes by all users will be returned. | [optional] |
| **lead_id** | **String** | The ID of the lead which notes to fetch. If omitted, notes about all leads will be returned. | [optional] |
| **deal_id** | **Integer** | The ID of the deal which notes to fetch. If omitted, notes about all deals will be returned. | [optional] |
| **person_id** | **Integer** | The ID of the person whose notes to fetch. If omitted, notes about all persons will be returned. | [optional] |
| **org_id** | **Integer** | The ID of the organization which notes to fetch. If omitted, notes about all organizations will be returned. | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). Supported fields: &#x60;id&#x60;, &#x60;user_id&#x60;, &#x60;deal_id&#x60;, &#x60;person_id&#x60;, &#x60;org_id&#x60;, &#x60;content&#x60;, &#x60;add_time&#x60;, &#x60;update_time&#x60;. | [optional] |
| **start_date** | **Date** | The date in format of YYYY-MM-DD from which notes to fetch | [optional] |
| **end_date** | **Date** | The date in format of YYYY-MM-DD until which notes to fetch to | [optional] |
| **pinned_to_lead_flag** | **Float** | If set, the results are filtered by note to lead pinning state | [optional] |
| **pinned_to_deal_flag** | **Float** | If set, the results are filtered by note to deal pinning state | [optional] |
| **pinned_to_organization_flag** | **Float** | If set, the results are filtered by note to organization pinning state | [optional] |
| **pinned_to_person_flag** | **Float** | If set, the results are filtered by note to person pinning state | [optional] |

### Return type

[**GetNotesResponse200**](GetNotesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_comment_for_note

> <OneCommentResponse200> update_comment_for_note(id, comment_id, opts)

Update a comment related to a note

Updates a comment related to a note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note
comment_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the comment
opts = {
  comment_post_put_object: OpenPipette::CommentPostPutObject.new({content: 'content_example'}) # CommentPostPutObject | 
}

begin
  # Update a comment related to a note
  result = api_instance.update_comment_for_note(id, comment_id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->update_comment_for_note: #{e}"
end
```

#### Using the update_comment_for_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneCommentResponse200>, Integer, Hash)> update_comment_for_note_with_http_info(id, comment_id, opts)

```ruby
begin
  # Update a comment related to a note
  data, status_code, headers = api_instance.update_comment_for_note_with_http_info(id, comment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneCommentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->update_comment_for_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |
| **comment_id** | **String** | The ID of the comment |  |
| **comment_post_put_object** | [**CommentPostPutObject**](CommentPostPutObject.md) |  | [optional] |

### Return type

[**OneCommentResponse200**](OneCommentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_note

> <OneNoteResponse200> update_note(id, opts)

Update a note

Updates a note.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::NotesApi.new
id = 56 # Integer | The ID of the note
opts = {
  note_request: OpenPipette::NoteRequest.new # NoteRequest | 
}

begin
  # Update a note
  result = api_instance.update_note(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->update_note: #{e}"
end
```

#### Using the update_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneNoteResponse200>, Integer, Hash)> update_note_with_http_info(id, opts)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_note_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneNoteResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NotesApi->update_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note |  |
| **note_request** | [**NoteRequest**](NoteRequest.md) |  | [optional] |

### Return type

[**OneNoteResponse200**](OneNoteResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

