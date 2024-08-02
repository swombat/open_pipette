# OpenPipette::PersonsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_person**](PersonsApi.md#add_person) | **POST** /persons | Add a person |
| [**add_person_follower**](PersonsApi.md#add_person_follower) | **POST** /persons/{id}/followers | Add a follower to a person |
| [**add_person_picture**](PersonsApi.md#add_person_picture) | **POST** /persons/{id}/picture | Add person picture |
| [**delete_person**](PersonsApi.md#delete_person) | **DELETE** /persons/{id} | Delete a person |
| [**delete_person_follower**](PersonsApi.md#delete_person_follower) | **DELETE** /persons/{id}/followers/{follower_id} | Delete a follower from a person |
| [**delete_person_picture**](PersonsApi.md#delete_person_picture) | **DELETE** /persons/{id}/picture | Delete person picture |
| [**delete_persons**](PersonsApi.md#delete_persons) | **DELETE** /persons | Delete multiple persons in bulk |
| [**get_person**](PersonsApi.md#get_person) | **GET** /persons/{id} | Get details of a person |
| [**get_person_activities**](PersonsApi.md#get_person_activities) | **GET** /persons/{id}/activities | List activities associated with a person |
| [**get_person_changelog**](PersonsApi.md#get_person_changelog) | **GET** /persons/{id}/changelog | List updates about person field values |
| [**get_person_deals**](PersonsApi.md#get_person_deals) | **GET** /persons/{id}/deals | List deals associated with a person |
| [**get_person_files**](PersonsApi.md#get_person_files) | **GET** /persons/{id}/files | List files attached to a person |
| [**get_person_followers**](PersonsApi.md#get_person_followers) | **GET** /persons/{id}/followers | List followers of a person |
| [**get_person_mail_messages**](PersonsApi.md#get_person_mail_messages) | **GET** /persons/{id}/mailMessages | List mail messages associated with a person |
| [**get_person_products**](PersonsApi.md#get_person_products) | **GET** /persons/{id}/products | List products associated with a person |
| [**get_person_updates**](PersonsApi.md#get_person_updates) | **GET** /persons/{id}/flow | List updates about a person |
| [**get_person_users**](PersonsApi.md#get_person_users) | **GET** /persons/{id}/permittedUsers | List permitted users |
| [**get_persons**](PersonsApi.md#get_persons) | **GET** /persons | Get all persons |
| [**get_persons_collection**](PersonsApi.md#get_persons_collection) | **GET** /persons/collection | Get all persons (BETA) |
| [**merge_persons**](PersonsApi.md#merge_persons) | **PUT** /persons/{id}/merge | Merge two persons |
| [**search_persons**](PersonsApi.md#search_persons) | **GET** /persons/search | Search persons |
| [**update_person**](PersonsApi.md#update_person) | **PUT** /persons/{id} | Update a person |


## add_person

> <AddPersonResponse200> add_person(opts)

Add a person

Adds a new person. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the personFields and look for `key` values.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also accept and return the `data.marketing_status` field.

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

api_instance = OpenPipette::PersonsApi.new
opts = {
  add_person_request: OpenPipette::AddPersonRequest.new({name: 'name_example'}) # AddPersonRequest | 
}

begin
  # Add a person
  result = api_instance.add_person(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->add_person: #{e}"
end
```

#### Using the add_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddPersonResponse200>, Integer, Hash)> add_person_with_http_info(opts)

```ruby
begin
  # Add a person
  data, status_code, headers = api_instance.add_person_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddPersonResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->add_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_person_request** | [**AddPersonRequest**](AddPersonRequest.md) |  | [optional] |

### Return type

[**AddPersonResponse200**](AddPersonResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_person_follower

> <AddPersonFollowerResponse200> add_person_follower(id, opts)

Add a follower to a person

Adds a follower to a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  add_person_follower_request: OpenPipette::AddPersonFollowerRequest.new({user_id: 37}) # AddPersonFollowerRequest | 
}

begin
  # Add a follower to a person
  result = api_instance.add_person_follower(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->add_person_follower: #{e}"
end
```

#### Using the add_person_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddPersonFollowerResponse200>, Integer, Hash)> add_person_follower_with_http_info(id, opts)

```ruby
begin
  # Add a follower to a person
  data, status_code, headers = api_instance.add_person_follower_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddPersonFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->add_person_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **add_person_follower_request** | [**AddPersonFollowerRequest**](AddPersonFollowerRequest.md) |  | [optional] |

### Return type

[**AddPersonFollowerResponse200**](AddPersonFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_person_picture

> <AddPersonPictureResponse200> add_person_picture(id, file, opts)

Add person picture

Adds a picture to a person. If a picture is already set, the old picture will be replaced. Added image (or the cropping parameters supplied with the request) should have an equal width and height and should be at least 128 pixels. GIF, JPG and PNG are accepted. All added images will be resized to 128 and 512 pixel wide squares.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
file = File.new('/path/to/some/file') # File | One image supplied in the multipart/form-data encoding
opts = {
  crop_x: 56, # Integer | X coordinate to where start cropping form (in pixels)
  crop_y: 56, # Integer | Y coordinate to where start cropping form (in pixels)
  crop_width: 56, # Integer | The width of the cropping area (in pixels)
  crop_height: 56 # Integer | The height of the cropping area (in pixels)
}

begin
  # Add person picture
  result = api_instance.add_person_picture(id, file, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->add_person_picture: #{e}"
end
```

#### Using the add_person_picture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddPersonPictureResponse200>, Integer, Hash)> add_person_picture_with_http_info(id, file, opts)

```ruby
begin
  # Add person picture
  data, status_code, headers = api_instance.add_person_picture_with_http_info(id, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddPersonPictureResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->add_person_picture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **file** | **File** | One image supplied in the multipart/form-data encoding |  |
| **crop_x** | **Integer** | X coordinate to where start cropping form (in pixels) | [optional] |
| **crop_y** | **Integer** | Y coordinate to where start cropping form (in pixels) | [optional] |
| **crop_width** | **Integer** | The width of the cropping area (in pixels) | [optional] |
| **crop_height** | **Integer** | The height of the cropping area (in pixels) | [optional] |

### Return type

[**AddPersonPictureResponse200**](AddPersonPictureResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## delete_person

> <DeletePersonResponse200> delete_person(id)

Delete a person

Marks a person as deleted. After 30 days, the person will be permanently deleted.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person

begin
  # Delete a person
  result = api_instance.delete_person(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_person: #{e}"
end
```

#### Using the delete_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePersonResponse200>, Integer, Hash)> delete_person_with_http_info(id)

```ruby
begin
  # Delete a person
  data, status_code, headers = api_instance.delete_person_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePersonResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |

### Return type

[**DeletePersonResponse200**](DeletePersonResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_person_follower

> <DeletePersonResponse200> delete_person_follower(id, follower_id)

Delete a follower from a person

Deletes a follower from a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
follower_id = 56 # Integer | The ID of the follower

begin
  # Delete a follower from a person
  result = api_instance.delete_person_follower(id, follower_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_person_follower: #{e}"
end
```

#### Using the delete_person_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePersonResponse200>, Integer, Hash)> delete_person_follower_with_http_info(id, follower_id)

```ruby
begin
  # Delete a follower from a person
  data, status_code, headers = api_instance.delete_person_follower_with_http_info(id, follower_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePersonResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_person_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **follower_id** | **Integer** | The ID of the follower |  |

### Return type

[**DeletePersonResponse200**](DeletePersonResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_person_picture

> <DeletePersonResponse200> delete_person_picture(id)

Delete person picture

Deletes a person’s picture.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person

begin
  # Delete person picture
  result = api_instance.delete_person_picture(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_person_picture: #{e}"
end
```

#### Using the delete_person_picture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePersonResponse200>, Integer, Hash)> delete_person_picture_with_http_info(id)

```ruby
begin
  # Delete person picture
  data, status_code, headers = api_instance.delete_person_picture_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePersonResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_person_picture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |

### Return type

[**DeletePersonResponse200**](DeletePersonResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_persons

> <DeletePersonsResponse200> delete_persons(ids)

Delete multiple persons in bulk

Marks multiple persons as deleted. After 30 days, the persons will be permanently deleted.

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

api_instance = OpenPipette::PersonsApi.new
ids = 'ids_example' # String | The comma-separated IDs that will be deleted

begin
  # Delete multiple persons in bulk
  result = api_instance.delete_persons(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_persons: #{e}"
end
```

#### Using the delete_persons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePersonsResponse200>, Integer, Hash)> delete_persons_with_http_info(ids)

```ruby
begin
  # Delete multiple persons in bulk
  data, status_code, headers = api_instance.delete_persons_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePersonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->delete_persons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated IDs that will be deleted |  |

### Return type

[**DeletePersonsResponse200**](DeletePersonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person

> <GetPersonResponse200> get_person(id)

Get details of a person

Returns the details of a person. Note that this also returns some additional fields which are not present when asking for all persons. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the `key` value of personFields.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the `data.marketing_status` field.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person

begin
  # Get details of a person
  result = api_instance.get_person(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person: #{e}"
end
```

#### Using the get_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPersonResponse200>, Integer, Hash)> get_person_with_http_info(id)

```ruby
begin
  # Get details of a person
  data, status_code, headers = api_instance.get_person_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPersonResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |

### Return type

[**GetPersonResponse200**](GetPersonResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_activities

> <GetAssociatedActivitiesResponse200> get_person_activities(id, opts)

List activities associated with a person

Lists activities associated with a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  done: 0, # Float | Whether the activity is done or not. 0 = Not done, 1 = Done. If omitted, returns both Done and Not done activities.
  exclude: 'exclude_example' # String | A comma-separated string of activity IDs to exclude from result
}

begin
  # List activities associated with a person
  result = api_instance.get_person_activities(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_activities: #{e}"
end
```

#### Using the get_person_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedActivitiesResponse200>, Integer, Hash)> get_person_activities_with_http_info(id, opts)

```ruby
begin
  # List activities associated with a person
  data, status_code, headers = api_instance.get_person_activities_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedActivitiesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **done** | **Float** | Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted, returns both Done and Not done activities. | [optional] |
| **exclude** | **String** | A comma-separated string of activity IDs to exclude from result | [optional] |

### Return type

[**GetAssociatedActivitiesResponse200**](GetAssociatedActivitiesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_changelog

> <GetChangelogResponse200> get_person_changelog(id, opts)

List updates about person field values

Lists updates about field values of a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 56 # Integer | Items shown per page
}

begin
  # List updates about person field values
  result = api_instance.get_person_changelog(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_changelog: #{e}"
end
```

#### Using the get_person_changelog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChangelogResponse200>, Integer, Hash)> get_person_changelog_with_http_info(id, opts)

```ruby
begin
  # List updates about person field values
  data, status_code, headers = api_instance.get_person_changelog_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChangelogResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_changelog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetChangelogResponse200**](GetChangelogResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_deals

> <GetAssociatedDealsResponse200> get_person_deals(id, opts)

List deals associated with a person

Lists deals associated with a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  status: 'open', # String | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys).
}

begin
  # List deals associated with a person
  result = api_instance.get_person_deals(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_deals: #{e}"
end
```

#### Using the get_person_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedDealsResponse200>, Integer, Hash)> get_person_deals_with_http_info(id, opts)

```ruby
begin
  # List deals associated with a person
  data, status_code, headers = api_instance.get_person_deals_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **status** | **String** | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included. | [optional][default to &#39;all_not_deleted&#39;] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). | [optional] |

### Return type

[**GetAssociatedDealsResponse200**](GetAssociatedDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_files

> <GetAssociatedFilesResponse200> get_person_files(id, opts)

List files attached to a person

Lists files associated with a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys). Supported fields: `id`, `user_id`, `deal_id`, `person_id`, `org_id`, `product_id`, `add_time`, `update_time`, `file_name`, `file_type`, `file_size`, `comment`.
}

begin
  # List files attached to a person
  result = api_instance.get_person_files(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_files: #{e}"
end
```

#### Using the get_person_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFilesResponse200>, Integer, Hash)> get_person_files_with_http_info(id, opts)

```ruby
begin
  # List files attached to a person
  data, status_code, headers = api_instance.get_person_files_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFilesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). Supported fields: &#x60;id&#x60;, &#x60;user_id&#x60;, &#x60;deal_id&#x60;, &#x60;person_id&#x60;, &#x60;org_id&#x60;, &#x60;product_id&#x60;, &#x60;add_time&#x60;, &#x60;update_time&#x60;, &#x60;file_name&#x60;, &#x60;file_type&#x60;, &#x60;file_size&#x60;, &#x60;comment&#x60;. | [optional] |

### Return type

[**GetAssociatedFilesResponse200**](GetAssociatedFilesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_followers

> <GetAssociatedFollowersResponse200> get_person_followers(id)

List followers of a person

Lists the followers of a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person

begin
  # List followers of a person
  result = api_instance.get_person_followers(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_followers: #{e}"
end
```

#### Using the get_person_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFollowersResponse200>, Integer, Hash)> get_person_followers_with_http_info(id)

```ruby
begin
  # List followers of a person
  data, status_code, headers = api_instance.get_person_followers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFollowersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |

### Return type

[**GetAssociatedFollowersResponse200**](GetAssociatedFollowersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_mail_messages

> <GetAssociatedMailMessagesResponse200> get_person_mail_messages(id, opts)

List mail messages associated with a person

Lists mail messages associated with a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List mail messages associated with a person
  result = api_instance.get_person_mail_messages(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_mail_messages: #{e}"
end
```

#### Using the get_person_mail_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedMailMessagesResponse200>, Integer, Hash)> get_person_mail_messages_with_http_info(id, opts)

```ruby
begin
  # List mail messages associated with a person
  data, status_code, headers = api_instance.get_person_mail_messages_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedMailMessagesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_mail_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetAssociatedMailMessagesResponse200**](GetAssociatedMailMessagesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_products

> <GetPersonProductsResponse200> get_person_products(id, opts)

List products associated with a person

Lists products associated with a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List products associated with a person
  result = api_instance.get_person_products(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_products: #{e}"
end
```

#### Using the get_person_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPersonProductsResponse200>, Integer, Hash)> get_person_products_with_http_info(id, opts)

```ruby
begin
  # List products associated with a person
  data, status_code, headers = api_instance.get_person_products_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPersonProductsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetPersonProductsResponse200**](GetPersonProductsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_updates

> <GetAssociatedPersonUpdatesResponse200> get_person_updates(id, opts)

List updates about a person

Lists updates about a person.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint's response will also include updates for the `marketing_status` field.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  all_changes: 'all_changes_example', # String | Whether to show custom field updates or not. 1 = Include custom field changes. If omitted returns changes without custom field updates.
  items: 'items_example' # String | A comma-separated string for filtering out item specific updates. (Possible values - call, activity, plannedActivity, change, note, deal, file, dealChange, personChange, organizationChange, follower, dealFollower, personFollower, organizationFollower, participant, comment, mailMessage, mailMessageWithAttachment, invoice, document, marketing_campaign_stat, marketing_status_change).
}

begin
  # List updates about a person
  result = api_instance.get_person_updates(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_updates: #{e}"
end
```

#### Using the get_person_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedPersonUpdatesResponse200>, Integer, Hash)> get_person_updates_with_http_info(id, opts)

```ruby
begin
  # List updates about a person
  data, status_code, headers = api_instance.get_person_updates_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedPersonUpdatesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_updates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **all_changes** | **String** | Whether to show custom field updates or not. 1 &#x3D; Include custom field changes. If omitted returns changes without custom field updates. | [optional] |
| **items** | **String** | A comma-separated string for filtering out item specific updates. (Possible values - call, activity, plannedActivity, change, note, deal, file, dealChange, personChange, organizationChange, follower, dealFollower, personFollower, organizationFollower, participant, comment, mailMessage, mailMessageWithAttachment, invoice, document, marketing_campaign_stat, marketing_status_change). | [optional] |

### Return type

[**GetAssociatedPersonUpdatesResponse200**](GetAssociatedPersonUpdatesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_users

> <ListPermittedUsersResponse2001> get_person_users(id)

List permitted users

List users permitted to access a person.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person

begin
  # List permitted users
  result = api_instance.get_person_users(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_users: #{e}"
end
```

#### Using the get_person_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPermittedUsersResponse2001>, Integer, Hash)> get_person_users_with_http_info(id)

```ruby
begin
  # List permitted users
  data, status_code, headers = api_instance.get_person_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPermittedUsersResponse2001>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_person_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |

### Return type

[**ListPermittedUsersResponse2001**](ListPermittedUsersResponse2001.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_persons

> <GetPersonsResponse200> get_persons(opts)

Get all persons

Returns all persons.

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

api_instance = OpenPipette::PersonsApi.new
opts = {
  user_id: 56, # Integer | If supplied, only persons owned by the given user will be returned. However, `filter_id` takes precedence over `user_id` when both are supplied.
  filter_id: 56, # Integer | The ID of the filter to use
  first_char: 'first_char_example', # String | If supplied, only persons whose name starts with the specified letter will be returned (case-insensitive)
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys).
}

begin
  # Get all persons
  result = api_instance.get_persons(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_persons: #{e}"
end
```

#### Using the get_persons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPersonsResponse200>, Integer, Hash)> get_persons_with_http_info(opts)

```ruby
begin
  # Get all persons
  data, status_code, headers = api_instance.get_persons_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPersonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_persons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | If supplied, only persons owned by the given user will be returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;user_id&#x60; when both are supplied. | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use | [optional] |
| **first_char** | **String** | If supplied, only persons whose name starts with the specified letter will be returned (case-insensitive) | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). | [optional] |

### Return type

[**GetPersonsResponse200**](GetPersonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_persons_collection

> <GetPersonsCollection200Response> get_persons_collection(opts)

Get all persons (BETA)

Returns all persons. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions <a href=\"https://support.pipedrive.com/en/article/global-user-management\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.

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

api_instance = OpenPipette::PersonsApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
  since: 'since_example', # String | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  _until: '_until_example', # String | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  owner_id: 56, # Integer | If supplied, only persons owned by the given user will be returned
  first_char: 'first_char_example' # String | If supplied, only persons whose name starts with the specified letter will be returned (case-insensitive)
}

begin
  # Get all persons (BETA)
  result = api_instance.get_persons_collection(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_persons_collection: #{e}"
end
```

#### Using the get_persons_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPersonsCollection200Response>, Integer, Hash)> get_persons_collection_with_http_info(opts)

```ruby
begin
  # Get all persons (BETA)
  data, status_code, headers = api_instance.get_persons_collection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPersonsCollection200Response>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->get_persons_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed. | [optional] |
| **since** | **String** | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **_until** | **String** | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **owner_id** | **Integer** | If supplied, only persons owned by the given user will be returned | [optional] |
| **first_char** | **String** | If supplied, only persons whose name starts with the specified letter will be returned (case-insensitive) | [optional] |

### Return type

[**GetPersonsCollection200Response**](GetPersonsCollection200Response.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_persons

> <MergePersonsResponse200> merge_persons(id, opts)

Merge two persons

Merges a person with another person. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/merging-two-persons\" target=\"_blank\" rel=\"noopener noreferrer\">merging two persons</a>.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  merge_persons_request: OpenPipette::MergePersonsRequest.new({merge_with_id: 37}) # MergePersonsRequest | 
}

begin
  # Merge two persons
  result = api_instance.merge_persons(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->merge_persons: #{e}"
end
```

#### Using the merge_persons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MergePersonsResponse200>, Integer, Hash)> merge_persons_with_http_info(id, opts)

```ruby
begin
  # Merge two persons
  data, status_code, headers = api_instance.merge_persons_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MergePersonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->merge_persons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **merge_persons_request** | [**MergePersonsRequest**](MergePersonsRequest.md) |  | [optional] |

### Return type

[**MergePersonsResponse200**](MergePersonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_persons

> <SearchPersonsResponse200> search_persons(term, opts)

Search persons

Searches all persons by name, email, phone, notes and/or custom fields. This endpoint is a wrapper of <a href=\"https://developers.pipedrive.com/docs/api/v1/ItemSearch#searchItem\">/v1/itemSearch</a> with a narrower OAuth scope. Found persons can be filtered by organization ID.

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

api_instance = OpenPipette::PersonsApi.new
term = 'term_example' # String | The search term to look for. Minimum 2 characters (or 1 if using `exact_match`). Please note that the search term has to be URL encoded.
opts = {
  fields: 'custom_fields', # String | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: `address`, `varchar`, `text`, `varchar_auto`, `double`, `monetary` and `phone`. Read more about searching by custom fields <a href=\"https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.
  exact_match: true, # Boolean | When enabled, only full exact matches against the given term are returned. It is <b>not</b> case sensitive.
  organization_id: 56, # Integer | Will filter persons by the provided organization ID. The upper limit of found persons associated with the organization is 2000.
  include_fields: 'person.picture', # String | Supports including optional fields in the results which are not provided by default
  start: 56, # Integer | Pagination start. Note that the pagination is based on main results and does not include related items when using `search_for_related_items` parameter.
  limit: 56 # Integer | Items shown per page
}

begin
  # Search persons
  result = api_instance.search_persons(term, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->search_persons: #{e}"
end
```

#### Using the search_persons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchPersonsResponse200>, Integer, Hash)> search_persons_with_http_info(term, opts)

```ruby
begin
  # Search persons
  data, status_code, headers = api_instance.search_persons_with_http_info(term, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchPersonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->search_persons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The search term to look for. Minimum 2 characters (or 1 if using &#x60;exact_match&#x60;). Please note that the search term has to be URL encoded. |  |
| **fields** | **String** | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: &#x60;address&#x60;, &#x60;varchar&#x60;, &#x60;text&#x60;, &#x60;varchar_auto&#x60;, &#x60;double&#x60;, &#x60;monetary&#x60; and &#x60;phone&#x60;. Read more about searching by custom fields &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;. | [optional] |
| **exact_match** | **Boolean** | When enabled, only full exact matches against the given term are returned. It is &lt;b&gt;not&lt;/b&gt; case sensitive. | [optional] |
| **organization_id** | **Integer** | Will filter persons by the provided organization ID. The upper limit of found persons associated with the organization is 2000. | [optional] |
| **include_fields** | **String** | Supports including optional fields in the results which are not provided by default | [optional] |
| **start** | **Integer** | Pagination start. Note that the pagination is based on main results and does not include related items when using &#x60;search_for_related_items&#x60; parameter. | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**SearchPersonsResponse200**](SearchPersonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_person

> <UpdatePersonResponse200> update_person(id, opts)

Update a person

Updates the properties of a person. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/updating-a-person\" target=\"_blank\" rel=\"noopener noreferrer\">updating a person</a>.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also accept and return the `data.marketing_status` field.

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

api_instance = OpenPipette::PersonsApi.new
id = 56 # Integer | The ID of the person
opts = {
  update_person_request: OpenPipette::UpdatePersonRequest.new # UpdatePersonRequest | 
}

begin
  # Update a person
  result = api_instance.update_person(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->update_person: #{e}"
end
```

#### Using the update_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePersonResponse200>, Integer, Hash)> update_person_with_http_info(id, opts)

```ruby
begin
  # Update a person
  data, status_code, headers = api_instance.update_person_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePersonResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonsApi->update_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person |  |
| **update_person_request** | [**UpdatePersonRequest**](UpdatePersonRequest.md) |  | [optional] |

### Return type

[**UpdatePersonResponse200**](UpdatePersonResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

