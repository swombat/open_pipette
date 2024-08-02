# OpenPipette::FilesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_file**](FilesApi.md#add_file) | **POST** /files | Add file |
| [**add_file_and_link_it**](FilesApi.md#add_file_and_link_it) | **POST** /files/remote | Create a remote file and link it to an item |
| [**delete_file**](FilesApi.md#delete_file) | **DELETE** /files/{id} | Delete a file |
| [**download_file**](FilesApi.md#download_file) | **GET** /files/{id}/download | Download one file |
| [**get_file**](FilesApi.md#get_file) | **GET** /files/{id} | Get one file |
| [**get_files**](FilesApi.md#get_files) | **GET** /files | Get all files |
| [**link_file_to_item**](FilesApi.md#link_file_to_item) | **POST** /files/remoteLink | Link a remote file to an item |
| [**update_file**](FilesApi.md#update_file) | **PUT** /files/{id} | Update file details |


## add_file

> <AddFileResponse200> add_file(file, opts)

Add file

Lets you upload a file and associate it with a deal, person, organization, activity, product or lead. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-file\" target=\"_blank\" rel=\"noopener noreferrer\">adding a file</a>.

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

api_instance = OpenPipette::FilesApi.new
file = File.new('/path/to/some/file') # File | A single file, supplied in the multipart/form-data encoding and contained within the given boundaries
opts = {
  deal_id: 56, # Integer | The ID of the deal to associate file(s) with
  person_id: 56, # Integer | The ID of the person to associate file(s) with
  org_id: 56, # Integer | The ID of the organization to associate file(s) with
  product_id: 56, # Integer | The ID of the product to associate file(s) with
  activity_id: 56, # Integer | The ID of the activity to associate file(s) with
  lead_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the lead to associate file(s) with
}

begin
  # Add file
  result = api_instance.add_file(file, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->add_file: #{e}"
end
```

#### Using the add_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddFileResponse200>, Integer, Hash)> add_file_with_http_info(file, opts)

```ruby
begin
  # Add file
  data, status_code, headers = api_instance.add_file_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddFileResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->add_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | A single file, supplied in the multipart/form-data encoding and contained within the given boundaries |  |
| **deal_id** | **Integer** | The ID of the deal to associate file(s) with | [optional] |
| **person_id** | **Integer** | The ID of the person to associate file(s) with | [optional] |
| **org_id** | **Integer** | The ID of the organization to associate file(s) with | [optional] |
| **product_id** | **Integer** | The ID of the product to associate file(s) with | [optional] |
| **activity_id** | **Integer** | The ID of the activity to associate file(s) with | [optional] |
| **lead_id** | **String** | The ID of the lead to associate file(s) with | [optional] |

### Return type

[**AddFileResponse200**](AddFileResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## add_file_and_link_it

> <AddFileAndLinkItResponse200> add_file_and_link_it(file_type, title, item_type, item_id, remote_location)

Create a remote file and link it to an item

Creates a new empty file in the remote location (`googledrive`) that will be linked to the item you supply. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-remote-file\" target=\"_blank\" rel=\"noopener noreferrer\">adding a remote file</a>.

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

api_instance = OpenPipette::FilesApi.new
file_type = 'gdoc' # String | The file type
title = 'title_example' # String | The title of the file
item_type = 'deal' # String | The item type
item_id = 56 # Integer | The ID of the item to associate the file with
remote_location = 'googledrive' # String | The location type to send the file to. Only `googledrive` is supported at the moment.

begin
  # Create a remote file and link it to an item
  result = api_instance.add_file_and_link_it(file_type, title, item_type, item_id, remote_location)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->add_file_and_link_it: #{e}"
end
```

#### Using the add_file_and_link_it_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddFileAndLinkItResponse200>, Integer, Hash)> add_file_and_link_it_with_http_info(file_type, title, item_type, item_id, remote_location)

```ruby
begin
  # Create a remote file and link it to an item
  data, status_code, headers = api_instance.add_file_and_link_it_with_http_info(file_type, title, item_type, item_id, remote_location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddFileAndLinkItResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->add_file_and_link_it_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_type** | **String** | The file type |  |
| **title** | **String** | The title of the file |  |
| **item_type** | **String** | The item type |  |
| **item_id** | **Integer** | The ID of the item to associate the file with |  |
| **remote_location** | **String** | The location type to send the file to. Only &#x60;googledrive&#x60; is supported at the moment. |  |

### Return type

[**AddFileAndLinkItResponse200**](AddFileAndLinkItResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## delete_file

> <DeleteFileResponse200> delete_file(id)

Delete a file

Marks a file as deleted. After 30 days, the file will be permanently deleted.

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

api_instance = OpenPipette::FilesApi.new
id = 56 # Integer | The ID of the file

begin
  # Delete a file
  result = api_instance.delete_file(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->delete_file: #{e}"
end
```

#### Using the delete_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFileResponse200>, Integer, Hash)> delete_file_with_http_info(id)

```ruby
begin
  # Delete a file
  data, status_code, headers = api_instance.delete_file_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFileResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->delete_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the file |  |

### Return type

[**DeleteFileResponse200**](DeleteFileResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_file

> String download_file(id)

Download one file

Initializes a file download.

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

api_instance = OpenPipette::FilesApi.new
id = 56 # Integer | The ID of the file

begin
  # Download one file
  result = api_instance.download_file(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->download_file: #{e}"
end
```

#### Using the download_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> download_file_with_http_info(id)

```ruby
begin
  # Download one file
  data, status_code, headers = api_instance.download_file_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->download_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the file |  |

### Return type

**String**

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_file

> <GetFileResponse200> get_file(id)

Get one file

Returns data about a specific file.

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

api_instance = OpenPipette::FilesApi.new
id = 56 # Integer | The ID of the file

begin
  # Get one file
  result = api_instance.get_file(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->get_file: #{e}"
end
```

#### Using the get_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFileResponse200>, Integer, Hash)> get_file_with_http_info(id)

```ruby
begin
  # Get one file
  data, status_code, headers = api_instance.get_file_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFileResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->get_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the file |  |

### Return type

[**GetFileResponse200**](GetFileResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files

> <GetFilesResponse200> get_files(opts)

Get all files

Returns data about all files.

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

api_instance = OpenPipette::FilesApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys). Supported fields: `id`, `user_id`, `deal_id`, `person_id`, `org_id`, `product_id`, `add_time`, `update_time`, `file_name`, `file_type`, `file_size`, `comment`.
}

begin
  # Get all files
  result = api_instance.get_files(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->get_files: #{e}"
end
```

#### Using the get_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFilesResponse200>, Integer, Hash)> get_files_with_http_info(opts)

```ruby
begin
  # Get all files
  data, status_code, headers = api_instance.get_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFilesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->get_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). Supported fields: &#x60;id&#x60;, &#x60;user_id&#x60;, &#x60;deal_id&#x60;, &#x60;person_id&#x60;, &#x60;org_id&#x60;, &#x60;product_id&#x60;, &#x60;add_time&#x60;, &#x60;update_time&#x60;, &#x60;file_name&#x60;, &#x60;file_type&#x60;, &#x60;file_size&#x60;, &#x60;comment&#x60;. | [optional] |

### Return type

[**GetFilesResponse200**](GetFilesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_file_to_item

> <LinkFileToItemResponse200> link_file_to_item(item_type, item_id, remote_id, remote_location)

Link a remote file to an item

Links an existing remote file (`googledrive`) to the item you supply. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-remote-file\" target=\"_blank\" rel=\"noopener noreferrer\">adding a remote file</a>.

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

api_instance = OpenPipette::FilesApi.new
item_type = 'deal' # String | The item type
item_id = 56 # Integer | The ID of the item to associate the file with
remote_id = 'remote_id_example' # String | The remote item ID
remote_location = 'googledrive' # String | The location type to send the file to. Only `googledrive` is supported at the moment.

begin
  # Link a remote file to an item
  result = api_instance.link_file_to_item(item_type, item_id, remote_id, remote_location)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->link_file_to_item: #{e}"
end
```

#### Using the link_file_to_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkFileToItemResponse200>, Integer, Hash)> link_file_to_item_with_http_info(item_type, item_id, remote_id, remote_location)

```ruby
begin
  # Link a remote file to an item
  data, status_code, headers = api_instance.link_file_to_item_with_http_info(item_type, item_id, remote_id, remote_location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkFileToItemResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->link_file_to_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_type** | **String** | The item type |  |
| **item_id** | **Integer** | The ID of the item to associate the file with |  |
| **remote_id** | **String** | The remote item ID |  |
| **remote_location** | **String** | The location type to send the file to. Only &#x60;googledrive&#x60; is supported at the moment. |  |

### Return type

[**LinkFileToItemResponse200**](LinkFileToItemResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## update_file

> <UpdateFileResponse200> update_file(id, opts)

Update file details

Updates the properties of a file.

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

api_instance = OpenPipette::FilesApi.new
id = 56 # Integer | The ID of the file
opts = {
  name: 'name_example', # String | The visible name of the file
  description: 'description_example' # String | The description of the file
}

begin
  # Update file details
  result = api_instance.update_file(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->update_file: #{e}"
end
```

#### Using the update_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateFileResponse200>, Integer, Hash)> update_file_with_http_info(id, opts)

```ruby
begin
  # Update file details
  data, status_code, headers = api_instance.update_file_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateFileResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FilesApi->update_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the file |  |
| **name** | **String** | The visible name of the file | [optional] |
| **description** | **String** | The description of the file | [optional] |

### Return type

[**UpdateFileResponse200**](UpdateFileResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

