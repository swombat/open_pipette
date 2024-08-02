# OpenPipette::ActivitiesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_activity**](ActivitiesApi.md#add_activity) | **POST** /activities | Add an activity |
| [**delete_activities**](ActivitiesApi.md#delete_activities) | **DELETE** /activities | Delete multiple activities in bulk |
| [**delete_activity**](ActivitiesApi.md#delete_activity) | **DELETE** /activities/{id} | Delete an activity |
| [**get_activities**](ActivitiesApi.md#get_activities) | **GET** /activities | Get all activities assigned to a particular user |
| [**get_activities_collection**](ActivitiesApi.md#get_activities_collection) | **GET** /activities/collection | Get all activities (BETA) |
| [**get_activity**](ActivitiesApi.md#get_activity) | **GET** /activities/{id} | Get details of an activity |
| [**update_activity**](ActivitiesApi.md#update_activity) | **PUT** /activities/{id} | Update an activity |


## add_activity

> <AddActivityResponse200> add_activity(opts)

Add an activity

Adds a new activity. Includes `more_activities_scheduled_in_context` property in response's `additional_data` which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data). For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-an-activity\" target=\"_blank\" rel=\"noopener noreferrer\">adding an activity</a>. <br /> <br /> ***Starting from 30.09.2024, activity attendees will receive updates only if the activity owner has an active calendar sync***

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

api_instance = OpenPipette::ActivitiesApi.new
opts = {
  add_activity_request: OpenPipette::AddActivityRequest.new # AddActivityRequest | 
}

begin
  # Add an activity
  result = api_instance.add_activity(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->add_activity: #{e}"
end
```

#### Using the add_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddActivityResponse200>, Integer, Hash)> add_activity_with_http_info(opts)

```ruby
begin
  # Add an activity
  data, status_code, headers = api_instance.add_activity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddActivityResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->add_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_activity_request** | [**AddActivityRequest**](AddActivityRequest.md) |  | [optional] |

### Return type

[**AddActivityResponse200**](AddActivityResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_activities

> <DeleteActivitiesResponse200> delete_activities(ids)

Delete multiple activities in bulk

Marks multiple activities as deleted. After 30 days, the activities will be permanently deleted.

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

api_instance = OpenPipette::ActivitiesApi.new
ids = 'ids_example' # String | The comma-separated IDs of activities that will be deleted

begin
  # Delete multiple activities in bulk
  result = api_instance.delete_activities(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->delete_activities: #{e}"
end
```

#### Using the delete_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteActivitiesResponse200>, Integer, Hash)> delete_activities_with_http_info(ids)

```ruby
begin
  # Delete multiple activities in bulk
  data, status_code, headers = api_instance.delete_activities_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteActivitiesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->delete_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated IDs of activities that will be deleted |  |

### Return type

[**DeleteActivitiesResponse200**](DeleteActivitiesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_activity

> <DeleteActivityResponse200> delete_activity(id)

Delete an activity

Marks an activity as deleted. After 30 days, the activity will be permanently deleted.

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

api_instance = OpenPipette::ActivitiesApi.new
id = 56 # Integer | The ID of the activity

begin
  # Delete an activity
  result = api_instance.delete_activity(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->delete_activity: #{e}"
end
```

#### Using the delete_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteActivityResponse200>, Integer, Hash)> delete_activity_with_http_info(id)

```ruby
begin
  # Delete an activity
  data, status_code, headers = api_instance.delete_activity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteActivityResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->delete_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the activity |  |

### Return type

[**DeleteActivityResponse200**](DeleteActivityResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_activities

> <GetActivitiesResponse200> get_activities(opts)

Get all activities assigned to a particular user

Returns all activities assigned to a particular user.

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

api_instance = OpenPipette::ActivitiesApi.new
opts = {
  user_id: 56, # Integer | The ID of the user whose activities will be fetched. If omitted, the user associated with the API token will be used. If 0, activities for all company users will be fetched based on the permission sets.
  filter_id: 56, # Integer | The ID of the filter to use (will narrow down results if used together with `user_id` parameter)
  type: 'type_example', # String | The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the `key_string` parameter of ActivityTypes.
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned.
  start: 0, # Integer | For pagination, the position that represents the first result for the page
  start_date: Date.parse('2013-10-20'), # Date | Use the activity due date where you wish to begin fetching activities from. Insert due date in YYYY-MM-DD format.
  end_date: Date.parse('2013-10-20'), # Date | Use the activity due date where you wish to stop fetching activities from. Insert due date in YYYY-MM-DD format.
  done: 0 # Float | Whether the activity is done or not. 0 = Not done, 1 = Done. If omitted returns both done and not done activities.
}

begin
  # Get all activities assigned to a particular user
  result = api_instance.get_activities(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->get_activities: #{e}"
end
```

#### Using the get_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivitiesResponse200>, Integer, Hash)> get_activities_with_http_info(opts)

```ruby
begin
  # Get all activities assigned to a particular user
  data, status_code, headers = api_instance.get_activities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivitiesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->get_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the user whose activities will be fetched. If omitted, the user associated with the API token will be used. If 0, activities for all company users will be fetched based on the permission sets. | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use (will narrow down results if used together with &#x60;user_id&#x60; parameter) | [optional] |
| **type** | **String** | The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes. | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. | [optional] |
| **start** | **Integer** | For pagination, the position that represents the first result for the page | [optional] |
| **start_date** | **Date** | Use the activity due date where you wish to begin fetching activities from. Insert due date in YYYY-MM-DD format. | [optional] |
| **end_date** | **Date** | Use the activity due date where you wish to stop fetching activities from. Insert due date in YYYY-MM-DD format. | [optional] |
| **done** | **Float** | Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted returns both done and not done activities. | [optional] |

### Return type

[**GetActivitiesResponse200**](GetActivitiesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_activities_collection

> <GetActivitiesCollectionResponse200> get_activities_collection(opts)

Get all activities (BETA)

Returns all activities. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions <a href=\"https://support.pipedrive.com/en/article/global-user-management\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.

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

api_instance = OpenPipette::ActivitiesApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
  since: 'since_example', # String | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  _until: '_until_example', # String | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  user_id: 56, # Integer | The ID of the user whose activities will be fetched. If omitted, all activities are returned.
  done: true, # Boolean | Whether the activity is done or not. `false` = Not done, `true` = Done. If omitted, returns both done and not done activities.
  type: 'type_example' # String | The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the `key_string` parameter of ActivityTypes.
}

begin
  # Get all activities (BETA)
  result = api_instance.get_activities_collection(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->get_activities_collection: #{e}"
end
```

#### Using the get_activities_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivitiesCollectionResponse200>, Integer, Hash)> get_activities_collection_with_http_info(opts)

```ruby
begin
  # Get all activities (BETA)
  data, status_code, headers = api_instance.get_activities_collection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivitiesCollectionResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->get_activities_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed. | [optional] |
| **since** | **String** | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **_until** | **String** | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **user_id** | **Integer** | The ID of the user whose activities will be fetched. If omitted, all activities are returned. | [optional] |
| **done** | **Boolean** | Whether the activity is done or not. &#x60;false&#x60; &#x3D; Not done, &#x60;true&#x60; &#x3D; Done. If omitted, returns both done and not done activities. | [optional] |
| **type** | **String** | The type of the activity, can be one type or multiple types separated by a comma. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes. | [optional] |

### Return type

[**GetActivitiesCollectionResponse200**](GetActivitiesCollectionResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_activity

> <GetActivityResponse200> get_activity(id)

Get details of an activity

Returns the details of a specific activity.

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

api_instance = OpenPipette::ActivitiesApi.new
id = 56 # Integer | The ID of the activity

begin
  # Get details of an activity
  result = api_instance.get_activity(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->get_activity: #{e}"
end
```

#### Using the get_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivityResponse200>, Integer, Hash)> get_activity_with_http_info(id)

```ruby
begin
  # Get details of an activity
  data, status_code, headers = api_instance.get_activity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivityResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->get_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the activity |  |

### Return type

[**GetActivityResponse200**](GetActivityResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_activity

> <UpdateActivityResponse200> update_activity(id, opts)

Update an activity

Updates an activity. Includes `more_activities_scheduled_in_context` property in response's `additional_data` which indicates whether there are more undone activities scheduled with the same deal, person or organization (depending on the supplied data). <br /> <br /> ***Starting from 30.09.2024, activity attendees will receive updates only if the activity owner has an active calendar sync***

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

api_instance = OpenPipette::ActivitiesApi.new
id = 56 # Integer | The ID of the activity
opts = {
  update_activity_request: OpenPipette::UpdateActivityRequest.new # UpdateActivityRequest | 
}

begin
  # Update an activity
  result = api_instance.update_activity(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->update_activity: #{e}"
end
```

#### Using the update_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateActivityResponse200>, Integer, Hash)> update_activity_with_http_info(id, opts)

```ruby
begin
  # Update an activity
  data, status_code, headers = api_instance.update_activity_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateActivityResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ActivitiesApi->update_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the activity |  |
| **update_activity_request** | [**UpdateActivityRequest**](UpdateActivityRequest.md) |  | [optional] |

### Return type

[**UpdateActivityResponse200**](UpdateActivityResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

