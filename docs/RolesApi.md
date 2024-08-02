# OpenPipette::RolesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_or_update_role_setting**](RolesApi.md#add_or_update_role_setting) | **POST** /roles/{id}/settings | Add or update role setting |
| [**add_role**](RolesApi.md#add_role) | **POST** /roles | Add a role |
| [**add_role_assignment**](RolesApi.md#add_role_assignment) | **POST** /roles/{id}/assignments | Add role assignment |
| [**delete_role**](RolesApi.md#delete_role) | **DELETE** /roles/{id} | Delete a role |
| [**delete_role_assignment**](RolesApi.md#delete_role_assignment) | **DELETE** /roles/{id}/assignments | Delete a role assignment |
| [**get_role**](RolesApi.md#get_role) | **GET** /roles/{id} | Get one role |
| [**get_role_assignments**](RolesApi.md#get_role_assignments) | **GET** /roles/{id}/assignments | List role assignments |
| [**get_role_pipelines**](RolesApi.md#get_role_pipelines) | **GET** /roles/{id}/pipelines | List pipeline visibility for a role |
| [**get_role_settings**](RolesApi.md#get_role_settings) | **GET** /roles/{id}/settings | List role settings |
| [**get_roles**](RolesApi.md#get_roles) | **GET** /roles | Get all roles |
| [**update_role**](RolesApi.md#update_role) | **PUT** /roles/{id} | Update role details |
| [**update_role_pipelines**](RolesApi.md#update_role_pipelines) | **PUT** /roles/{id}/pipelines | Update pipeline visibility for a role |


## add_or_update_role_setting

> <AddOrUpdateRoleSettingResponse200> add_or_update_role_setting(id, opts)

Add or update role setting

Adds or updates the visibility setting for a role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  add_or_update_role_setting_request: OpenPipette::AddOrUpdateRoleSettingRequest.new({setting_key: 'deal_default_visibility', value: 1}) # AddOrUpdateRoleSettingRequest | 
}

begin
  # Add or update role setting
  result = api_instance.add_or_update_role_setting(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->add_or_update_role_setting: #{e}"
end
```

#### Using the add_or_update_role_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrUpdateRoleSettingResponse200>, Integer, Hash)> add_or_update_role_setting_with_http_info(id, opts)

```ruby
begin
  # Add or update role setting
  data, status_code, headers = api_instance.add_or_update_role_setting_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrUpdateRoleSettingResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->add_or_update_role_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **add_or_update_role_setting_request** | [**AddOrUpdateRoleSettingRequest**](AddOrUpdateRoleSettingRequest.md) |  | [optional] |

### Return type

[**AddOrUpdateRoleSettingResponse200**](AddOrUpdateRoleSettingResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_role

> <AddRoleResponse200> add_role(opts)

Add a role

Adds a new role.

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

api_instance = OpenPipette::RolesApi.new
opts = {
  add_role_request: OpenPipette::AddRoleRequest.new({name: 'name_example'}) # AddRoleRequest | 
}

begin
  # Add a role
  result = api_instance.add_role(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->add_role: #{e}"
end
```

#### Using the add_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddRoleResponse200>, Integer, Hash)> add_role_with_http_info(opts)

```ruby
begin
  # Add a role
  data, status_code, headers = api_instance.add_role_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddRoleResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->add_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_role_request** | [**AddRoleRequest**](AddRoleRequest.md) |  | [optional] |

### Return type

[**AddRoleResponse200**](AddRoleResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_role_assignment

> <AddRoleAssignmentResponse200> add_role_assignment(id, opts)

Add role assignment

Assigns a user to a role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  add_role_assignment_request: OpenPipette::AddRoleAssignmentRequest.new({user_id: 37}) # AddRoleAssignmentRequest | 
}

begin
  # Add role assignment
  result = api_instance.add_role_assignment(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->add_role_assignment: #{e}"
end
```

#### Using the add_role_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddRoleAssignmentResponse200>, Integer, Hash)> add_role_assignment_with_http_info(id, opts)

```ruby
begin
  # Add role assignment
  data, status_code, headers = api_instance.add_role_assignment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddRoleAssignmentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->add_role_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **add_role_assignment_request** | [**AddRoleAssignmentRequest**](AddRoleAssignmentRequest.md) |  | [optional] |

### Return type

[**AddRoleAssignmentResponse200**](AddRoleAssignmentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_role

> <DeleteRoleResponse200> delete_role(id)

Delete a role

Marks a role as deleted.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role

begin
  # Delete a role
  result = api_instance.delete_role(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->delete_role: #{e}"
end
```

#### Using the delete_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteRoleResponse200>, Integer, Hash)> delete_role_with_http_info(id)

```ruby
begin
  # Delete a role
  data, status_code, headers = api_instance.delete_role_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteRoleResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->delete_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |

### Return type

[**DeleteRoleResponse200**](DeleteRoleResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_role_assignment

> <DeleteRoleAssignmentResponse200> delete_role_assignment(id, opts)

Delete a role assignment

Removes the assigned user from a role and adds to the default role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  delete_role_assignment_request: OpenPipette::DeleteRoleAssignmentRequest.new({user_id: 37}) # DeleteRoleAssignmentRequest | 
}

begin
  # Delete a role assignment
  result = api_instance.delete_role_assignment(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->delete_role_assignment: #{e}"
end
```

#### Using the delete_role_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteRoleAssignmentResponse200>, Integer, Hash)> delete_role_assignment_with_http_info(id, opts)

```ruby
begin
  # Delete a role assignment
  data, status_code, headers = api_instance.delete_role_assignment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteRoleAssignmentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->delete_role_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **delete_role_assignment_request** | [**DeleteRoleAssignmentRequest**](DeleteRoleAssignmentRequest.md) |  | [optional] |

### Return type

[**DeleteRoleAssignmentResponse200**](DeleteRoleAssignmentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_role

> <GetRoleResponse200> get_role(id)

Get one role

Returns the details of a specific role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role

begin
  # Get one role
  result = api_instance.get_role(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role: #{e}"
end
```

#### Using the get_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRoleResponse200>, Integer, Hash)> get_role_with_http_info(id)

```ruby
begin
  # Get one role
  data, status_code, headers = api_instance.get_role_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRoleResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |

### Return type

[**GetRoleResponse200**](GetRoleResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role_assignments

> <GetUserRoleAssignmentsResponse200> get_role_assignments(id, opts)

List role assignments

Returns all users assigned to a role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List role assignments
  result = api_instance.get_role_assignments(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_assignments: #{e}"
end
```

#### Using the get_role_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserRoleAssignmentsResponse200>, Integer, Hash)> get_role_assignments_with_http_info(id, opts)

```ruby
begin
  # List role assignments
  data, status_code, headers = api_instance.get_role_assignments_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserRoleAssignmentsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetUserRoleAssignmentsResponse200**](GetUserRoleAssignmentsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role_pipelines

> <GetRolePipelines200> get_role_pipelines(id, opts)

List pipeline visibility for a role

Returns the list of either visible or hidden pipeline IDs for a specific role. For more information on pipeline visibility, please refer to the <a href=\"https://support.pipedrive.com/en/article/visibility-groups\" target=\"_blank\" rel=\"noopener noreferrer\">Visibility groups article</a>.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  visible: true # Boolean | Whether to return the visible or hidden pipelines for the role
}

begin
  # List pipeline visibility for a role
  result = api_instance.get_role_pipelines(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_pipelines: #{e}"
end
```

#### Using the get_role_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRolePipelines200>, Integer, Hash)> get_role_pipelines_with_http_info(id, opts)

```ruby
begin
  # List pipeline visibility for a role
  data, status_code, headers = api_instance.get_role_pipelines_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRolePipelines200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **visible** | **Boolean** | Whether to return the visible or hidden pipelines for the role | [optional][default to true] |

### Return type

[**GetRolePipelines200**](GetRolePipelines200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role_settings

> <GetRoleSettingsResponse200> get_role_settings(id)

List role settings

Returns the visibility settings of a specific role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role

begin
  # List role settings
  result = api_instance.get_role_settings(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_settings: #{e}"
end
```

#### Using the get_role_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRoleSettingsResponse200>, Integer, Hash)> get_role_settings_with_http_info(id)

```ruby
begin
  # List role settings
  data, status_code, headers = api_instance.get_role_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRoleSettingsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_role_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |

### Return type

[**GetRoleSettingsResponse200**](GetRoleSettingsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_roles

> <GetRolesResponse200> get_roles(opts)

Get all roles

Returns all the roles within the company.

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

api_instance = OpenPipette::RolesApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all roles
  result = api_instance.get_roles(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_roles: #{e}"
end
```

#### Using the get_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRolesResponse200>, Integer, Hash)> get_roles_with_http_info(opts)

```ruby
begin
  # Get all roles
  data, status_code, headers = api_instance.get_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRolesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->get_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetRolesResponse200**](GetRolesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_role

> <UpdateRoleResponse200> update_role(id, opts)

Update role details

Updates the parent role and/or the name of a specific role.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  base_role_request: OpenPipette::BaseRoleRequest.new # BaseRoleRequest | 
}

begin
  # Update role details
  result = api_instance.update_role(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->update_role: #{e}"
end
```

#### Using the update_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateRoleResponse200>, Integer, Hash)> update_role_with_http_info(id, opts)

```ruby
begin
  # Update role details
  data, status_code, headers = api_instance.update_role_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateRoleResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->update_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **base_role_request** | [**BaseRoleRequest**](BaseRoleRequest.md) |  | [optional] |

### Return type

[**UpdateRoleResponse200**](UpdateRoleResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_role_pipelines

> <GetRolePipelines200> update_role_pipelines(id, opts)

Update pipeline visibility for a role

Updates the specified pipelines to be visible and/or hidden for a specific role. For more information on pipeline visibility, please refer to the <a href=\"https://support.pipedrive.com/en/article/visibility-groups\" target=\"_blank\" rel=\"noopener noreferrer\">Visibility groups article</a>.

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

api_instance = OpenPipette::RolesApi.new
id = 56 # Integer | The ID of the role
opts = {
  put_role_pipelines_body: OpenPipette::PutRolePipelinesBody.new({visible_pipeline_ids: 3.56}) # PutRolePipelinesBody | 
}

begin
  # Update pipeline visibility for a role
  result = api_instance.update_role_pipelines(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->update_role_pipelines: #{e}"
end
```

#### Using the update_role_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRolePipelines200>, Integer, Hash)> update_role_pipelines_with_http_info(id, opts)

```ruby
begin
  # Update pipeline visibility for a role
  data, status_code, headers = api_instance.update_role_pipelines_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRolePipelines200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RolesApi->update_role_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the role |  |
| **put_role_pipelines_body** | [**PutRolePipelinesBody**](PutRolePipelinesBody.md) |  | [optional] |

### Return type

[**GetRolePipelines200**](GetRolePipelines200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

