# OpenPipette::UsersApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_user**](UsersApi.md#add_user) | **POST** /users | Add a new user |
| [**find_users_by_name**](UsersApi.md#find_users_by_name) | **GET** /users/find | Find users by name |
| [**get_current_user**](UsersApi.md#get_current_user) | **GET** /users/me | Get current user data |
| [**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get one user |
| [**get_user_followers**](UsersApi.md#get_user_followers) | **GET** /users/{id}/followers | List followers of a user |
| [**get_user_permissions**](UsersApi.md#get_user_permissions) | **GET** /users/{id}/permissions | List user permissions |
| [**get_user_role_assignments**](UsersApi.md#get_user_role_assignments) | **GET** /users/{id}/roleAssignments | List role assignments |
| [**get_user_role_settings**](UsersApi.md#get_user_role_settings) | **GET** /users/{id}/roleSettings | List user role settings |
| [**get_users**](UsersApi.md#get_users) | **GET** /users | Get all users |
| [**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update user details |


## add_user

> <UserResponse200> add_user(opts)

Add a new user

Adds a new user to the company, returns the ID upon success.

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

api_instance = OpenPipette::UsersApi.new
opts = {
  add_user_request: OpenPipette::AddUserRequest.new({email: 'email_example'}) # AddUserRequest | 
}

begin
  # Add a new user
  result = api_instance.add_user(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->add_user: #{e}"
end
```

#### Using the add_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse200>, Integer, Hash)> add_user_with_http_info(opts)

```ruby
begin
  # Add a new user
  data, status_code, headers = api_instance.add_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->add_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_user_request** | [**AddUserRequest**](AddUserRequest.md) |  | [optional] |

### Return type

[**UserResponse200**](UserResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_users_by_name

> <UsersResponse200> find_users_by_name(term, opts)

Find users by name

Finds users by their name.

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

api_instance = OpenPipette::UsersApi.new
term = 'term_example' # String | The search term to look for
opts = {
  search_by_email: 0 # Float | When enabled, the term will only be matched against email addresses of users. Default: `false`.
}

begin
  # Find users by name
  result = api_instance.find_users_by_name(term, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->find_users_by_name: #{e}"
end
```

#### Using the find_users_by_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse200>, Integer, Hash)> find_users_by_name_with_http_info(term, opts)

```ruby
begin
  # Find users by name
  data, status_code, headers = api_instance.find_users_by_name_with_http_info(term, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->find_users_by_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The search term to look for |  |
| **search_by_email** | **Float** | When enabled, the term will only be matched against email addresses of users. Default: &#x60;false&#x60;. | [optional][default to 0] |

### Return type

[**UsersResponse200**](UsersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_user

> <GetCurrentUserResponse200> get_current_user

Get current user data

Returns data about an authorized user within the company with bound company data: company ID, company name, and domain. Note that the `locale` property means 'Date/number format' in the Pipedrive account settings, not the chosen language.

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

api_instance = OpenPipette::UsersApi.new

begin
  # Get current user data
  result = api_instance.get_current_user
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_current_user: #{e}"
end
```

#### Using the get_current_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCurrentUserResponse200>, Integer, Hash)> get_current_user_with_http_info

```ruby
begin
  # Get current user data
  data, status_code, headers = api_instance.get_current_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCurrentUserResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_current_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCurrentUserResponse200**](GetCurrentUserResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <UserResponse200> get_user(id)

Get one user

Returns data about a specific user within the company.

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

api_instance = OpenPipette::UsersApi.new
id = 56 # Integer | The ID of the user

begin
  # Get one user
  result = api_instance.get_user(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse200>, Integer, Hash)> get_user_with_http_info(id)

```ruby
begin
  # Get one user
  data, status_code, headers = api_instance.get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |

### Return type

[**UserResponse200**](UserResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_followers

> <UserIds> get_user_followers(id)

List followers of a user

Lists the followers of a specific user.

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

api_instance = OpenPipette::UsersApi.new
id = 56 # Integer | The ID of the user

begin
  # List followers of a user
  result = api_instance.get_user_followers(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_followers: #{e}"
end
```

#### Using the get_user_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIds>, Integer, Hash)> get_user_followers_with_http_info(id)

```ruby
begin
  # List followers of a user
  data, status_code, headers = api_instance.get_user_followers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIds>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |

### Return type

[**UserIds**](UserIds.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_permissions

> <GetUserPermissionsResponse200> get_user_permissions(id)

List user permissions

Lists aggregated permissions over all assigned permission sets for a user.

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

api_instance = OpenPipette::UsersApi.new
id = 56 # Integer | The ID of the user

begin
  # List user permissions
  result = api_instance.get_user_permissions(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_permissions: #{e}"
end
```

#### Using the get_user_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserPermissionsResponse200>, Integer, Hash)> get_user_permissions_with_http_info(id)

```ruby
begin
  # List user permissions
  data, status_code, headers = api_instance.get_user_permissions_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserPermissionsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |

### Return type

[**GetUserPermissionsResponse200**](GetUserPermissionsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_role_assignments

> <GetUserRoleAssignmentsResponse200> get_user_role_assignments(id, opts)

List role assignments

Lists role assignments for a user.

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

api_instance = OpenPipette::UsersApi.new
id = 56 # Integer | The ID of the user
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List role assignments
  result = api_instance.get_user_role_assignments(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_role_assignments: #{e}"
end
```

#### Using the get_user_role_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserRoleAssignmentsResponse200>, Integer, Hash)> get_user_role_assignments_with_http_info(id, opts)

```ruby
begin
  # List role assignments
  data, status_code, headers = api_instance.get_user_role_assignments_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserRoleAssignmentsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_role_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetUserRoleAssignmentsResponse200**](GetUserRoleAssignmentsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_role_settings

> <GetRoleSettingsResponse200> get_user_role_settings(id)

List user role settings

Lists the settings of user's assigned role.

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

api_instance = OpenPipette::UsersApi.new
id = 56 # Integer | The ID of the user

begin
  # List user role settings
  result = api_instance.get_user_role_settings(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_role_settings: #{e}"
end
```

#### Using the get_user_role_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRoleSettingsResponse200>, Integer, Hash)> get_user_role_settings_with_http_info(id)

```ruby
begin
  # List user role settings
  data, status_code, headers = api_instance.get_user_role_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRoleSettingsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_user_role_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |

### Return type

[**GetRoleSettingsResponse200**](GetRoleSettingsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <UsersResponse200> get_users

Get all users

Returns data about all users within the company.

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

api_instance = OpenPipette::UsersApi.new

begin
  # Get all users
  result = api_instance.get_users
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponse200>, Integer, Hash)> get_users_with_http_info

```ruby
begin
  # Get all users
  data, status_code, headers = api_instance.get_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->get_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UsersResponse200**](UsersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <UserResponse200> update_user(id, opts)

Update user details

Updates the properties of a user. Currently, only `active_flag` can be updated.

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

api_instance = OpenPipette::UsersApi.new
id = 56 # Integer | The ID of the user
opts = {
  update_user_request: OpenPipette::UpdateUserRequest.new({active_flag: false}) # UpdateUserRequest | 
}

begin
  # Update user details
  result = api_instance.update_user(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse200>, Integer, Hash)> update_user_with_http_info(id, opts)

```ruby
begin
  # Update user details
  data, status_code, headers = api_instance.update_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |
| **update_user_request** | [**UpdateUserRequest**](UpdateUserRequest.md) |  | [optional] |

### Return type

[**UserResponse200**](UserResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

