# OpenPipette::ActivityTypesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_activity_type**](ActivityTypesApi.md#add_activity_type) | **POST** /activityTypes | Add new activity type |
| [**delete_activity_type**](ActivityTypesApi.md#delete_activity_type) | **DELETE** /activityTypes/{id} | Delete an activity type |
| [**delete_activity_types**](ActivityTypesApi.md#delete_activity_types) | **DELETE** /activityTypes | Delete multiple activity types in bulk |
| [**get_activity_types**](ActivityTypesApi.md#get_activity_types) | **GET** /activityTypes | Get all activity types |
| [**update_activity_type**](ActivityTypesApi.md#update_activity_type) | **PUT** /activityTypes/{id} | Update an activity type |


## add_activity_type

> <CreateUpdateDeleteActivityTypeResponse200> add_activity_type(opts)

Add new activity type

Adds a new activity type.

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

api_instance = OpenPipette::ActivityTypesApi.new
opts = {
  add_activity_type_request: OpenPipette::AddActivityTypeRequest.new({name: 'call', icon_key: 'task'}) # AddActivityTypeRequest | 
}

begin
  # Add new activity type
  result = api_instance.add_activity_type(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->add_activity_type: #{e}"
end
```

#### Using the add_activity_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUpdateDeleteActivityTypeResponse200>, Integer, Hash)> add_activity_type_with_http_info(opts)

```ruby
begin
  # Add new activity type
  data, status_code, headers = api_instance.add_activity_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUpdateDeleteActivityTypeResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->add_activity_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_activity_type_request** | [**AddActivityTypeRequest**](AddActivityTypeRequest.md) |  | [optional] |

### Return type

[**CreateUpdateDeleteActivityTypeResponse200**](CreateUpdateDeleteActivityTypeResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_activity_type

> <CreateUpdateDeleteActivityTypeResponse200> delete_activity_type(id)

Delete an activity type

Marks an activity type as deleted.

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

api_instance = OpenPipette::ActivityTypesApi.new
id = 56 # Integer | The ID of the activity type

begin
  # Delete an activity type
  result = api_instance.delete_activity_type(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->delete_activity_type: #{e}"
end
```

#### Using the delete_activity_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUpdateDeleteActivityTypeResponse200>, Integer, Hash)> delete_activity_type_with_http_info(id)

```ruby
begin
  # Delete an activity type
  data, status_code, headers = api_instance.delete_activity_type_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUpdateDeleteActivityTypeResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->delete_activity_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the activity type |  |

### Return type

[**CreateUpdateDeleteActivityTypeResponse200**](CreateUpdateDeleteActivityTypeResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_activity_types

> <DeleteActivityTypesResponse200> delete_activity_types(ids)

Delete multiple activity types in bulk

Marks multiple activity types as deleted.

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

api_instance = OpenPipette::ActivityTypesApi.new
ids = 'ids_example' # String | The comma-separated activity type IDs

begin
  # Delete multiple activity types in bulk
  result = api_instance.delete_activity_types(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->delete_activity_types: #{e}"
end
```

#### Using the delete_activity_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteActivityTypesResponse200>, Integer, Hash)> delete_activity_types_with_http_info(ids)

```ruby
begin
  # Delete multiple activity types in bulk
  data, status_code, headers = api_instance.delete_activity_types_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteActivityTypesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->delete_activity_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated activity type IDs |  |

### Return type

[**DeleteActivityTypesResponse200**](DeleteActivityTypesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_activity_types

> <GetActivityTypesResponse200> get_activity_types

Get all activity types

Returns all activity types.

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

api_instance = OpenPipette::ActivityTypesApi.new

begin
  # Get all activity types
  result = api_instance.get_activity_types
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->get_activity_types: #{e}"
end
```

#### Using the get_activity_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivityTypesResponse200>, Integer, Hash)> get_activity_types_with_http_info

```ruby
begin
  # Get all activity types
  data, status_code, headers = api_instance.get_activity_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivityTypesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->get_activity_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetActivityTypesResponse200**](GetActivityTypesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_activity_type

> <CreateUpdateDeleteActivityTypeResponse200> update_activity_type(id, opts)

Update an activity type

Updates an activity type.

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

api_instance = OpenPipette::ActivityTypesApi.new
id = 56 # Integer | The ID of the activity type
opts = {
  update_activity_type_request: OpenPipette::UpdateActivityTypeRequest.new # UpdateActivityTypeRequest | 
}

begin
  # Update an activity type
  result = api_instance.update_activity_type(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->update_activity_type: #{e}"
end
```

#### Using the update_activity_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUpdateDeleteActivityTypeResponse200>, Integer, Hash)> update_activity_type_with_http_info(id, opts)

```ruby
begin
  # Update an activity type
  data, status_code, headers = api_instance.update_activity_type_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUpdateDeleteActivityTypeResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivityTypesApi->update_activity_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the activity type |  |
| **update_activity_type_request** | [**UpdateActivityTypeRequest**](UpdateActivityTypeRequest.md) |  | [optional] |

### Return type

[**CreateUpdateDeleteActivityTypeResponse200**](CreateUpdateDeleteActivityTypeResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

