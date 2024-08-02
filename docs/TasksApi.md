# OpenPipette::TasksApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_task**](TasksApi.md#add_task) | **POST** /tasks | Add a task |
| [**delete_task**](TasksApi.md#delete_task) | **DELETE** /tasks/{id} | Delete a task |
| [**get_task**](TasksApi.md#get_task) | **GET** /tasks/{id} | Get details of a task |
| [**get_tasks**](TasksApi.md#get_tasks) | **GET** /tasks | Get all tasks |
| [**update_task**](TasksApi.md#update_task) | **PUT** /tasks/{id} | Update a task |


## add_task

> <AddTaskResponse201> add_task(opts)

Add a task

Adds a new task.

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

api_instance = OpenPipette::TasksApi.new
opts = {
  add_task_request: OpenPipette::AddTaskRequest.new({title: 'title_example', project_id: 3.56}) # AddTaskRequest | 
}

begin
  # Add a task
  result = api_instance.add_task(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->add_task: #{e}"
end
```

#### Using the add_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddTaskResponse201>, Integer, Hash)> add_task_with_http_info(opts)

```ruby
begin
  # Add a task
  data, status_code, headers = api_instance.add_task_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddTaskResponse201>
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->add_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_task_request** | [**AddTaskRequest**](AddTaskRequest.md) |  | [optional] |

### Return type

[**AddTaskResponse201**](AddTaskResponse201.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_task

> <DeleteTaskResponse200> delete_task(id)

Delete a task

Marks a task as deleted. If the task has subtasks then those will also be deleted.

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

api_instance = OpenPipette::TasksApi.new
id = 56 # Integer | The ID of the task

begin
  # Delete a task
  result = api_instance.delete_task(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->delete_task: #{e}"
end
```

#### Using the delete_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTaskResponse200>, Integer, Hash)> delete_task_with_http_info(id)

```ruby
begin
  # Delete a task
  data, status_code, headers = api_instance.delete_task_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTaskResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->delete_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the task |  |

### Return type

[**DeleteTaskResponse200**](DeleteTaskResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task

> <GetTaskResponse200> get_task(id)

Get details of a task

Returns the details of a specific task.

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

api_instance = OpenPipette::TasksApi.new
id = 56 # Integer | The ID of the task

begin
  # Get details of a task
  result = api_instance.get_task(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->get_task: #{e}"
end
```

#### Using the get_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaskResponse200>, Integer, Hash)> get_task_with_http_info(id)

```ruby
begin
  # Get details of a task
  data, status_code, headers = api_instance.get_task_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaskResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->get_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the task |  |

### Return type

[**GetTaskResponse200**](GetTaskResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tasks

> <GetTasksResponse200> get_tasks(opts)

Get all tasks

Returns all tasks. This is a cursor-paginated endpoint. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>.

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

api_instance = OpenPipette::TasksApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 500, # Integer | For pagination, the limit of entries to be returned. If not provided, up to 500 items will be returned.
  assignee_id: 56, # Integer | If supplied, only tasks that are assigned to this user are returned
  project_id: 56, # Integer | If supplied, only tasks that are assigned to this project are returned
  parent_task_id: 56, # Integer | If `null` is supplied then only parent tasks are returned. If integer is supplied then only subtasks of a specific task are returned. By default all tasks are returned.
  done: 0 # Float | Whether the task is done or not. `0` = Not done, `1` = Done. If not omitted then returns both done and not done tasks.
}

begin
  # Get all tasks
  result = api_instance.get_tasks(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->get_tasks: #{e}"
end
```

#### Using the get_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTasksResponse200>, Integer, Hash)> get_tasks_with_http_info(opts)

```ruby
begin
  # Get all tasks
  data, status_code, headers = api_instance.get_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTasksResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->get_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, up to 500 items will be returned. | [optional] |
| **assignee_id** | **Integer** | If supplied, only tasks that are assigned to this user are returned | [optional] |
| **project_id** | **Integer** | If supplied, only tasks that are assigned to this project are returned | [optional] |
| **parent_task_id** | **Integer** | If &#x60;null&#x60; is supplied then only parent tasks are returned. If integer is supplied then only subtasks of a specific task are returned. By default all tasks are returned. | [optional] |
| **done** | **Float** | Whether the task is done or not. &#x60;0&#x60; &#x3D; Not done, &#x60;1&#x60; &#x3D; Done. If not omitted then returns both done and not done tasks. | [optional] |

### Return type

[**GetTasksResponse200**](GetTasksResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task

> <UpdateTaskResponse200> update_task(id, opts)

Update a task

Updates a task.

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

api_instance = OpenPipette::TasksApi.new
id = 56 # Integer | The ID of the task
opts = {
  update_project_request1: OpenPipette::UpdateProjectRequest1.new # UpdateProjectRequest1 | 
}

begin
  # Update a task
  result = api_instance.update_task(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->update_task: #{e}"
end
```

#### Using the update_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateTaskResponse200>, Integer, Hash)> update_task_with_http_info(id, opts)

```ruby
begin
  # Update a task
  data, status_code, headers = api_instance.update_task_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateTaskResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling TasksApi->update_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the task |  |
| **update_project_request1** | [**UpdateProjectRequest1**](UpdateProjectRequest1.md) |  | [optional] |

### Return type

[**UpdateTaskResponse200**](UpdateTaskResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

