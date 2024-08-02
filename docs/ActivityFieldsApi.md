# OpenPipette::ActivityFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_activity_fields**](ActivityFieldsApi.md#get_activity_fields) | **GET** /activityFields | Get all activity fields |


## get_activity_fields

> <FieldsResponse200> get_activity_fields

Get all activity fields

Returns all activity fields.

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

api_instance = OpenPipette::ActivityFieldsApi.new

begin
  # Get all activity fields
  result = api_instance.get_activity_fields
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityFieldsApi->get_activity_fields: #{e}"
end
```

#### Using the get_activity_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldsResponse200>, Integer, Hash)> get_activity_fields_with_http_info

```ruby
begin
  # Get all activity fields
  data, status_code, headers = api_instance.get_activity_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityFieldsApi->get_activity_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FieldsResponse200**](FieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

