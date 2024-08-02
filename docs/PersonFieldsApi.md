# OpenPipette::PersonFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_person_field**](PersonFieldsApi.md#add_person_field) | **POST** /personFields | Add a new person field |
| [**delete_person_field**](PersonFieldsApi.md#delete_person_field) | **DELETE** /personFields/{id} | Delete a person field |
| [**delete_person_fields**](PersonFieldsApi.md#delete_person_fields) | **DELETE** /personFields | Delete multiple person fields in bulk |
| [**get_person_field**](PersonFieldsApi.md#get_person_field) | **GET** /personFields/{id} | Get one person field |
| [**get_person_fields**](PersonFieldsApi.md#get_person_fields) | **GET** /personFields | Get all person fields |
| [**update_person_field**](PersonFieldsApi.md#update_person_field) | **PUT** /personFields/{id} | Update a person field |


## add_person_field

> <FieldResponse200> add_person_field(opts)

Add a new person field

Adds a new person field. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-new-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">adding a new custom field</a>.

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

api_instance = OpenPipette::PersonFieldsApi.new
opts = {
  create_field_request: OpenPipette::CreateFieldRequest.new({name: 'name_example', field_type: 'address'}) # CreateFieldRequest | 
}

begin
  # Add a new person field
  result = api_instance.add_person_field(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->add_person_field: #{e}"
end
```

#### Using the add_person_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> add_person_field_with_http_info(opts)

```ruby
begin
  # Add a new person field
  data, status_code, headers = api_instance.add_person_field_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->add_person_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_field_request** | [**CreateFieldRequest**](CreateFieldRequest.md) |  | [optional] |

### Return type

[**FieldResponse200**](FieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_person_field

> <DeleteFieldResponse200> delete_person_field(id)

Delete a person field

Marks a field as deleted. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/deleting-a-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">deleting a custom field</a>.

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

api_instance = OpenPipette::PersonFieldsApi.new
id = 56 # Integer | The ID of the field

begin
  # Delete a person field
  result = api_instance.delete_person_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->delete_person_field: #{e}"
end
```

#### Using the delete_person_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFieldResponse200>, Integer, Hash)> delete_person_field_with_http_info(id)

```ruby
begin
  # Delete a person field
  data, status_code, headers = api_instance.delete_person_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->delete_person_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field |  |

### Return type

[**DeleteFieldResponse200**](DeleteFieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_person_fields

> <DeleteFieldsResponse200> delete_person_fields(ids)

Delete multiple person fields in bulk

Marks multiple fields as deleted.

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

api_instance = OpenPipette::PersonFieldsApi.new
ids = 'ids_example' # String | The comma-separated field IDs to delete

begin
  # Delete multiple person fields in bulk
  result = api_instance.delete_person_fields(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->delete_person_fields: #{e}"
end
```

#### Using the delete_person_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFieldsResponse200>, Integer, Hash)> delete_person_fields_with_http_info(ids)

```ruby
begin
  # Delete multiple person fields in bulk
  data, status_code, headers = api_instance.delete_person_fields_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->delete_person_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated field IDs to delete |  |

### Return type

[**DeleteFieldsResponse200**](DeleteFieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_field

> <FieldResponse200> get_person_field(id)

Get one person field

Returns data about a specific person field.

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

api_instance = OpenPipette::PersonFieldsApi.new
id = 56 # Integer | The ID of the field

begin
  # Get one person field
  result = api_instance.get_person_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->get_person_field: #{e}"
end
```

#### Using the get_person_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> get_person_field_with_http_info(id)

```ruby
begin
  # Get one person field
  data, status_code, headers = api_instance.get_person_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->get_person_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field |  |

### Return type

[**FieldResponse200**](FieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person_fields

> <FieldsResponse200> get_person_fields(opts)

Get all person fields

Returns data about all person fields.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the `data.marketing_status` field.

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

api_instance = OpenPipette::PersonFieldsApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all person fields
  result = api_instance.get_person_fields(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->get_person_fields: #{e}"
end
```

#### Using the get_person_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldsResponse200>, Integer, Hash)> get_person_fields_with_http_info(opts)

```ruby
begin
  # Get all person fields
  data, status_code, headers = api_instance.get_person_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->get_person_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**FieldsResponse200**](FieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_person_field

> <FieldResponse200> update_person_field(id, opts)

Update a person field

Updates a person field. For more information, see the tutorial for <a href=\" https://pipedrive.readme.io/docs/updating-custom-field-value \" target=\"_blank\" rel=\"noopener noreferrer\">updating custom fields' values</a>.

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

api_instance = OpenPipette::PersonFieldsApi.new
id = 56 # Integer | The ID of the field
opts = {
  update_field_request: OpenPipette::UpdateFieldRequest.new # UpdateFieldRequest | 
}

begin
  # Update a person field
  result = api_instance.update_person_field(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->update_person_field: #{e}"
end
```

#### Using the update_person_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> update_person_field_with_http_info(id, opts)

```ruby
begin
  # Update a person field
  data, status_code, headers = api_instance.update_person_field_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PersonFieldsApi->update_person_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field |  |
| **update_field_request** | [**UpdateFieldRequest**](UpdateFieldRequest.md) |  | [optional] |

### Return type

[**FieldResponse200**](FieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

