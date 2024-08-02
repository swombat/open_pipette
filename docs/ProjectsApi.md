# OpenPipette::ProjectsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_project**](ProjectsApi.md#add_project) | **POST** /projects | Add a project |
| [**archive_project**](ProjectsApi.md#archive_project) | **POST** /projects/{id}/archive | Archive a project |
| [**delete_project**](ProjectsApi.md#delete_project) | **DELETE** /projects/{id} | Delete a project |
| [**get_project**](ProjectsApi.md#get_project) | **GET** /projects/{id} | Get details of a project |
| [**get_project_activities**](ProjectsApi.md#get_project_activities) | **GET** /projects/{id}/activities | Returns project activities |
| [**get_project_groups**](ProjectsApi.md#get_project_groups) | **GET** /projects/{id}/groups | Returns project groups |
| [**get_project_plan**](ProjectsApi.md#get_project_plan) | **GET** /projects/{id}/plan | Returns project plan |
| [**get_project_tasks**](ProjectsApi.md#get_project_tasks) | **GET** /projects/{id}/tasks | Returns project tasks |
| [**get_projects**](ProjectsApi.md#get_projects) | **GET** /projects | Get all projects |
| [**get_projects_boards**](ProjectsApi.md#get_projects_boards) | **GET** /projects/boards | Get all project boards |
| [**get_projects_phases**](ProjectsApi.md#get_projects_phases) | **GET** /projects/phases | Get project phases |
| [**put_project_plan_activity**](ProjectsApi.md#put_project_plan_activity) | **PUT** /projects/{id}/plan/activities/{activityId} | Update activity in project plan |
| [**put_project_plan_task**](ProjectsApi.md#put_project_plan_task) | **PUT** /projects/{id}/plan/tasks/{taskId} | Update task in project plan |
| [**update_project**](ProjectsApi.md#update_project) | **PUT** /projects/{id} | Update a project |


## add_project

> <AddProjectResponse201> add_project(opts)

Add a project

Adds a new project. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys.

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

api_instance = OpenPipette::ProjectsApi.new
opts = {
  add_project_request: OpenPipette::AddProjectRequest.new({title: 'title_example', board_id: 3.56, phase_id: 3.56}) # AddProjectRequest | 
}

begin
  # Add a project
  result = api_instance.add_project(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->add_project: #{e}"
end
```

#### Using the add_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddProjectResponse201>, Integer, Hash)> add_project_with_http_info(opts)

```ruby
begin
  # Add a project
  data, status_code, headers = api_instance.add_project_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddProjectResponse201>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->add_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_project_request** | [**AddProjectRequest**](AddProjectRequest.md) |  | [optional] |

### Return type

[**AddProjectResponse201**](AddProjectResponse201.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## archive_project

> <UpdateProjectResponse200> archive_project(id)

Archive a project

Archives a project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Archive a project
  result = api_instance.archive_project(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->archive_project: #{e}"
end
```

#### Using the archive_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProjectResponse200>, Integer, Hash)> archive_project_with_http_info(id)

```ruby
begin
  # Archive a project
  data, status_code, headers = api_instance.archive_project_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProjectResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->archive_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**UpdateProjectResponse200**](UpdateProjectResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_project

> <DeleteProjectResponse200> delete_project(id)

Delete a project

Marks a project as deleted.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Delete a project
  result = api_instance.delete_project(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->delete_project: #{e}"
end
```

#### Using the delete_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProjectResponse200>, Integer, Hash)> delete_project_with_http_info(id)

```ruby
begin
  # Delete a project
  data, status_code, headers = api_instance.delete_project_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProjectResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->delete_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**DeleteProjectResponse200**](DeleteProjectResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project

> <GetProjectResponse200> get_project(id)

Get details of a project

Returns the details of a specific project. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the `key` value of project fields.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Get details of a project
  result = api_instance.get_project(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project: #{e}"
end
```

#### Using the get_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectResponse200>, Integer, Hash)> get_project_with_http_info(id)

```ruby
begin
  # Get details of a project
  data, status_code, headers = api_instance.get_project_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**GetProjectResponse200**](GetProjectResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_activities

> <GetActivitiesCollectionResponse200> get_project_activities(id)

Returns project activities

Returns activities linked to a specific project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Returns project activities
  result = api_instance.get_project_activities(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_activities: #{e}"
end
```

#### Using the get_project_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivitiesCollectionResponse200>, Integer, Hash)> get_project_activities_with_http_info(id)

```ruby
begin
  # Returns project activities
  data, status_code, headers = api_instance.get_project_activities_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivitiesCollectionResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**GetActivitiesCollectionResponse200**](GetActivitiesCollectionResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_groups

> <GetProjectGroupsResponse200> get_project_groups(id)

Returns project groups

Returns all active groups under a specific project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Returns project groups
  result = api_instance.get_project_groups(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_groups: #{e}"
end
```

#### Using the get_project_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectGroupsResponse200>, Integer, Hash)> get_project_groups_with_http_info(id)

```ruby
begin
  # Returns project groups
  data, status_code, headers = api_instance.get_project_groups_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectGroupsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**GetProjectGroupsResponse200**](GetProjectGroupsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_plan

> <GetProjectPlanResponse200> get_project_plan(id)

Returns project plan

Returns information about items in a project plan. Items consists of tasks and activities and are linked to specific project phase and group.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Returns project plan
  result = api_instance.get_project_plan(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_plan: #{e}"
end
```

#### Using the get_project_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectPlanResponse200>, Integer, Hash)> get_project_plan_with_http_info(id)

```ruby
begin
  # Returns project plan
  data, status_code, headers = api_instance.get_project_plan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectPlanResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**GetProjectPlanResponse200**](GetProjectPlanResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_tasks

> <GetTasksResponse200> get_project_tasks(id)

Returns project tasks

Returns tasks linked to a specific project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project

begin
  # Returns project tasks
  result = api_instance.get_project_tasks(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_tasks: #{e}"
end
```

#### Using the get_project_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTasksResponse200>, Integer, Hash)> get_project_tasks_with_http_info(id)

```ruby
begin
  # Returns project tasks
  data, status_code, headers = api_instance.get_project_tasks_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTasksResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_project_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |

### Return type

[**GetTasksResponse200**](GetTasksResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects

> <GetProjectsResponse200> get_projects(opts)

Get all projects

Returns all projects. This is a cursor-paginated endpoint. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>.

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

api_instance = OpenPipette::ProjectsApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned.
  filter_id: 56, # Integer | The ID of the filter to use
  status: 'open,completed', # String | If supplied, includes only projects with the specified statuses. Possible values are `open`, `completed`, `canceled` and `deleted`. By default `deleted` projects are not returned.
  phase_id: 56, # Integer | If supplied, only projects in specified phase are returned
  include_archived: true # Boolean | If supplied with `true` then archived projects are also included in the response. By default only not archived projects are returned.
}

begin
  # Get all projects
  result = api_instance.get_projects(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_projects: #{e}"
end
```

#### Using the get_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectsResponse200>, Integer, Hash)> get_projects_with_http_info(opts)

```ruby
begin
  # Get all projects
  data, status_code, headers = api_instance.get_projects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use | [optional] |
| **status** | **String** | If supplied, includes only projects with the specified statuses. Possible values are &#x60;open&#x60;, &#x60;completed&#x60;, &#x60;canceled&#x60; and &#x60;deleted&#x60;. By default &#x60;deleted&#x60; projects are not returned. | [optional] |
| **phase_id** | **Integer** | If supplied, only projects in specified phase are returned | [optional] |
| **include_archived** | **Boolean** | If supplied with &#x60;true&#x60; then archived projects are also included in the response. By default only not archived projects are returned. | [optional] |

### Return type

[**GetProjectsResponse200**](GetProjectsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects_boards

> <GetProjectBoardsResponse200> get_projects_boards

Get all project boards

Returns all projects boards that are not deleted.

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

api_instance = OpenPipette::ProjectsApi.new

begin
  # Get all project boards
  result = api_instance.get_projects_boards
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_boards: #{e}"
end
```

#### Using the get_projects_boards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectBoardsResponse200>, Integer, Hash)> get_projects_boards_with_http_info

```ruby
begin
  # Get all project boards
  data, status_code, headers = api_instance.get_projects_boards_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectBoardsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_boards_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetProjectBoardsResponse200**](GetProjectBoardsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects_phases

> <GetProjectPhasesResponse200> get_projects_phases(board_id)

Get project phases

Returns all active project phases under a specific board.

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

api_instance = OpenPipette::ProjectsApi.new
board_id = 1 # Integer | ID of the board for which phases are requested

begin
  # Get project phases
  result = api_instance.get_projects_phases(board_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_phases: #{e}"
end
```

#### Using the get_projects_phases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProjectPhasesResponse200>, Integer, Hash)> get_projects_phases_with_http_info(board_id)

```ruby
begin
  # Get project phases
  data, status_code, headers = api_instance.get_projects_phases_with_http_info(board_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProjectPhasesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->get_projects_phases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **board_id** | **Integer** | ID of the board for which phases are requested |  |

### Return type

[**GetProjectPhasesResponse200**](GetProjectPhasesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_project_plan_activity

> <UpdatedActivityPlanItem200> put_project_plan_activity(id, activity_id, opts)

Update activity in project plan

Updates an activity phase or group in a project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project
activity_id = 56 # Integer | The ID of the activity
opts = {
  project_put_plan_item_body_object: OpenPipette::ProjectPutPlanItemBodyObject.new # ProjectPutPlanItemBodyObject | 
}

begin
  # Update activity in project plan
  result = api_instance.put_project_plan_activity(id, activity_id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->put_project_plan_activity: #{e}"
end
```

#### Using the put_project_plan_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatedActivityPlanItem200>, Integer, Hash)> put_project_plan_activity_with_http_info(id, activity_id, opts)

```ruby
begin
  # Update activity in project plan
  data, status_code, headers = api_instance.put_project_plan_activity_with_http_info(id, activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatedActivityPlanItem200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->put_project_plan_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |
| **activity_id** | **Integer** | The ID of the activity |  |
| **project_put_plan_item_body_object** | [**ProjectPutPlanItemBodyObject**](ProjectPutPlanItemBodyObject.md) |  | [optional] |

### Return type

[**UpdatedActivityPlanItem200**](UpdatedActivityPlanItem200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_project_plan_task

> <UpdatedTaskPlanItem200> put_project_plan_task(id, task_id, opts)

Update task in project plan

Updates a task phase or group in a project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project
task_id = 56 # Integer | The ID of the task
opts = {
  project_put_plan_item_body_object: OpenPipette::ProjectPutPlanItemBodyObject.new # ProjectPutPlanItemBodyObject | 
}

begin
  # Update task in project plan
  result = api_instance.put_project_plan_task(id, task_id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->put_project_plan_task: #{e}"
end
```

#### Using the put_project_plan_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatedTaskPlanItem200>, Integer, Hash)> put_project_plan_task_with_http_info(id, task_id, opts)

```ruby
begin
  # Update task in project plan
  data, status_code, headers = api_instance.put_project_plan_task_with_http_info(id, task_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatedTaskPlanItem200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->put_project_plan_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |
| **task_id** | **Integer** | The ID of the task |  |
| **project_put_plan_item_body_object** | [**ProjectPutPlanItemBodyObject**](ProjectPutPlanItemBodyObject.md) |  | [optional] |

### Return type

[**UpdatedTaskPlanItem200**](UpdatedTaskPlanItem200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_project

> <UpdateProjectResponse200> update_project(id, opts)

Update a project

Updates a project.

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

api_instance = OpenPipette::ProjectsApi.new
id = 56 # Integer | The ID of the project
opts = {
  update_project_request: OpenPipette::UpdateProjectRequest.new # UpdateProjectRequest | 
}

begin
  # Update a project
  result = api_instance.update_project(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->update_project: #{e}"
end
```

#### Using the update_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProjectResponse200>, Integer, Hash)> update_project_with_http_info(id, opts)

```ruby
begin
  # Update a project
  data, status_code, headers = api_instance.update_project_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProjectResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProjectsApi->update_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project |  |
| **update_project_request** | [**UpdateProjectRequest**](UpdateProjectRequest.md) |  | [optional] |

### Return type

[**UpdateProjectResponse200**](UpdateProjectResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

