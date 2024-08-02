# OpenPipette::ProductFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_product_field**](ProductFieldsApi.md#add_product_field) | **POST** /productFields | Add a new product field |
| [**delete_product_field**](ProductFieldsApi.md#delete_product_field) | **DELETE** /productFields/{id} | Delete a product field |
| [**delete_product_fields**](ProductFieldsApi.md#delete_product_fields) | **DELETE** /productFields | Delete multiple product fields in bulk |
| [**get_product_field**](ProductFieldsApi.md#get_product_field) | **GET** /productFields/{id} | Get one product field |
| [**get_product_fields**](ProductFieldsApi.md#get_product_fields) | **GET** /productFields | Get all product fields |
| [**update_product_field**](ProductFieldsApi.md#update_product_field) | **PUT** /productFields/{id} | Update a product field |


## add_product_field

> <GetProductFieldResponse200> add_product_field(opts)

Add a new product field

Adds a new product field. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-new-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">adding a new custom field</a>.

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

api_instance = OpenPipette::ProductFieldsApi.new
opts = {
  add_product_field_request: OpenPipette::AddProductFieldRequest.new({name: 'name_example', field_type: 'varchar'}) # AddProductFieldRequest | 
}

begin
  # Add a new product field
  result = api_instance.add_product_field(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->add_product_field: #{e}"
end
```

#### Using the add_product_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFieldResponse200>, Integer, Hash)> add_product_field_with_http_info(opts)

```ruby
begin
  # Add a new product field
  data, status_code, headers = api_instance.add_product_field_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->add_product_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_product_field_request** | [**AddProductFieldRequest**](AddProductFieldRequest.md) |  | [optional] |

### Return type

[**GetProductFieldResponse200**](GetProductFieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product_field

> <DeleteProductFieldResponse200> delete_product_field(id)

Delete a product field

Marks a product field as deleted. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/deleting-a-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">deleting a custom field</a>.

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

api_instance = OpenPipette::ProductFieldsApi.new
id = 56 # Integer | The ID of the product field

begin
  # Delete a product field
  result = api_instance.delete_product_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->delete_product_field: #{e}"
end
```

#### Using the delete_product_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductFieldResponse200>, Integer, Hash)> delete_product_field_with_http_info(id)

```ruby
begin
  # Delete a product field
  data, status_code, headers = api_instance.delete_product_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->delete_product_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product field |  |

### Return type

[**DeleteProductFieldResponse200**](DeleteProductFieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_product_fields

> <DeleteProductFieldsResponse200> delete_product_fields(ids)

Delete multiple product fields in bulk

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

api_instance = OpenPipette::ProductFieldsApi.new
ids = 'ids_example' # String | The comma-separated field IDs to delete

begin
  # Delete multiple product fields in bulk
  result = api_instance.delete_product_fields(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->delete_product_fields: #{e}"
end
```

#### Using the delete_product_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductFieldsResponse200>, Integer, Hash)> delete_product_fields_with_http_info(ids)

```ruby
begin
  # Delete multiple product fields in bulk
  data, status_code, headers = api_instance.delete_product_fields_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductFieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->delete_product_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated field IDs to delete |  |

### Return type

[**DeleteProductFieldsResponse200**](DeleteProductFieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_field

> <GetProductFieldResponse200> get_product_field(id)

Get one product field

Returns data about a specific product field.

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

api_instance = OpenPipette::ProductFieldsApi.new
id = 56 # Integer | The ID of the product field

begin
  # Get one product field
  result = api_instance.get_product_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->get_product_field: #{e}"
end
```

#### Using the get_product_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFieldResponse200>, Integer, Hash)> get_product_field_with_http_info(id)

```ruby
begin
  # Get one product field
  data, status_code, headers = api_instance.get_product_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->get_product_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product field |  |

### Return type

[**GetProductFieldResponse200**](GetProductFieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_fields

> <GetProductFieldsResponse200> get_product_fields(opts)

Get all product fields

Returns data about all product fields.

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

api_instance = OpenPipette::ProductFieldsApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all product fields
  result = api_instance.get_product_fields(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->get_product_fields: #{e}"
end
```

#### Using the get_product_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFieldsResponse200>, Integer, Hash)> get_product_fields_with_http_info(opts)

```ruby
begin
  # Get all product fields
  data, status_code, headers = api_instance.get_product_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->get_product_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetProductFieldsResponse200**](GetProductFieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product_field

> <GetProductFieldResponse200> update_product_field(id, opts)

Update a product field

Updates a product field. For more information, see the tutorial for <a href=\" https://pipedrive.readme.io/docs/updating-custom-field-value \" target=\"_blank\" rel=\"noopener noreferrer\">updating custom fields' values</a>.

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

api_instance = OpenPipette::ProductFieldsApi.new
id = 56 # Integer | The ID of the product field
opts = {
  update_product_field_response200: OpenPipette::UpdateProductFieldResponse200.new # UpdateProductFieldResponse200 | 
}

begin
  # Update a product field
  result = api_instance.update_product_field(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->update_product_field: #{e}"
end
```

#### Using the update_product_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFieldResponse200>, Integer, Hash)> update_product_field_with_http_info(id, opts)

```ruby
begin
  # Update a product field
  data, status_code, headers = api_instance.update_product_field_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductFieldsApi->update_product_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product field |  |
| **update_product_field_response200** | [**UpdateProductFieldResponse200**](UpdateProductFieldResponse200.md) |  | [optional] |

### Return type

[**GetProductFieldResponse200**](GetProductFieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

