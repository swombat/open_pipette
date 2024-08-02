# OpenPipette::NoteFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_note_fields**](NoteFieldsApi.md#get_note_fields) | **GET** /noteFields | Get all note fields |


## get_note_fields

> <GetNoteFieldsResponse200> get_note_fields

Get all note fields

Returns data about all note fields.

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

api_instance = OpenPipette::NoteFieldsApi.new

begin
  # Get all note fields
  result = api_instance.get_note_fields
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling NoteFieldsApi->get_note_fields: #{e}"
end
```

#### Using the get_note_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNoteFieldsResponse200>, Integer, Hash)> get_note_fields_with_http_info

```ruby
begin
  # Get all note fields
  data, status_code, headers = api_instance.get_note_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNoteFieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling NoteFieldsApi->get_note_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNoteFieldsResponse200**](GetNoteFieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

