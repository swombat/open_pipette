# OpenPipette::ProjectTemplatesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_project_template**](ProjectTemplatesApi.md#get_project_template) | **GET** /projectTemplates/{id} | Get details of a template |
| [**get_project_templates**](ProjectTemplatesApi.md#get_project_templates) | **GET** /projectTemplates | Get all project templates |
| [**get_projects_board**](ProjectTemplatesApi.md#get_projects_board) | **GET** /projects/boards/{id} | Get details of a board |
| [**get_projects_phase**](ProjectTemplatesApi.md#get_projects_phase) | **GET** /projects/phases/{id} | Get details of a phase |


## get_project_template

> <GetProjectTemplateResponse200> get_project_template(id)

Get details of a template

Returns the details of a specific project template.

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

api_instance = OpenPipette::ProjectTemplatesApi.new
id = 56 # Integer | The ID of the project template

begin
  # Get details of a template
  result = api_instance.get_project_template(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_project_template: #{e}"
end
```

#### Using the get_project_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectTemplateResponse200>, Integer, Hash)> get_project_template_with_http_info(id)

```ruby
begin
  # Get details of a template
  data, status_code, headers = api_instance.get_project_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectTemplateResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_project_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project template |  |

### Return type

[**GetProjectTemplateResponse200**](GetProjectTemplateResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_templates

> <GetProjectTemplatesResponse200> get_project_templates(opts)

Get all project templates

Returns all not deleted project templates. This is a cursor-paginated endpoint. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>.

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

api_instance = OpenPipette::ProjectTemplatesApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 500 # Integer | For pagination, the limit of entries to be returned. If not provided, up to 500 items will be returned.
}

begin
  # Get all project templates
  result = api_instance.get_project_templates(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_project_templates: #{e}"
end
```

#### Using the get_project_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectTemplatesResponse200>, Integer, Hash)> get_project_templates_with_http_info(opts)

```ruby
begin
  # Get all project templates
  data, status_code, headers = api_instance.get_project_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectTemplatesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_project_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, up to 500 items will be returned. | [optional] |

### Return type

[**GetProjectTemplatesResponse200**](GetProjectTemplatesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects_board

> <GetProjectBoardResponse200> get_projects_board(id)

Get details of a board

Returns the details of a specific project board.

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

api_instance = OpenPipette::ProjectTemplatesApi.new
id = 56 # Integer | The ID of the project board

begin
  # Get details of a board
  result = api_instance.get_projects_board(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_projects_board: #{e}"
end
```

#### Using the get_projects_board_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectBoardResponse200>, Integer, Hash)> get_projects_board_with_http_info(id)

```ruby
begin
  # Get details of a board
  data, status_code, headers = api_instance.get_projects_board_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectBoardResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_projects_board_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project board |  |

### Return type

[**GetProjectBoardResponse200**](GetProjectBoardResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects_phase

> <GetProjectPhaseResponse200> get_projects_phase(id)

Get details of a phase

Returns the details of a specific project phase.

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

api_instance = OpenPipette::ProjectTemplatesApi.new
id = 56 # Integer | The ID of the project phase

begin
  # Get details of a phase
  result = api_instance.get_projects_phase(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_projects_phase: #{e}"
end
```

#### Using the get_projects_phase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectPhaseResponse200>, Integer, Hash)> get_projects_phase_with_http_info(id)

```ruby
begin
  # Get details of a phase
  data, status_code, headers = api_instance.get_projects_phase_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectPhaseResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectTemplatesApi->get_projects_phase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project phase |  |

### Return type

[**GetProjectPhaseResponse200**](GetProjectPhaseResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

