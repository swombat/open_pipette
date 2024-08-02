# OpenPipette::LegacyTeamsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_team**](LegacyTeamsApi.md#add_team) | **POST** /legacyTeams | Add a new team |
| [**add_team_user**](LegacyTeamsApi.md#add_team_user) | **POST** /legacyTeams/{id}/users | Add users to a team |
| [**delete_team_user**](LegacyTeamsApi.md#delete_team_user) | **DELETE** /legacyTeams/{id}/users | Delete users from a team |
| [**get_team**](LegacyTeamsApi.md#get_team) | **GET** /legacyTeams/{id} | Get a single team |
| [**get_team_users**](LegacyTeamsApi.md#get_team_users) | **GET** /legacyTeams/{id}/users | Get all users in a team |
| [**get_teams**](LegacyTeamsApi.md#get_teams) | **GET** /legacyTeams | Get all teams |
| [**get_user_teams**](LegacyTeamsApi.md#get_user_teams) | **GET** /legacyTeams/user/{id} | Get all teams of a user |
| [**update_team**](LegacyTeamsApi.md#update_team) | **PUT** /legacyTeams/{id} | Update a team |


## add_team

> <TeamResponse200> add_team(opts)

Add a new team

Adds a new team to the company and returns the created object.

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

api_instance = OpenPipette::LegacyTeamsApi.new
opts = {
  add_team_request: OpenPipette::AddTeamRequest.new({name: 'name_example', manager_id: 37}) # AddTeamRequest | 
}

begin
  # Add a new team
  result = api_instance.add_team(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->add_team: #{e}"
end
```

#### Using the add_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamResponse200>, Integer, Hash)> add_team_with_http_info(opts)

```ruby
begin
  # Add a new team
  data, status_code, headers = api_instance.add_team_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->add_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_team_request** | [**AddTeamRequest**](AddTeamRequest.md) |  | [optional] |

### Return type

[**TeamResponse200**](TeamResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_team_user

> <UserIds> add_team_user(id, opts)

Add users to a team

Adds users to an existing team.

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

api_instance = OpenPipette::LegacyTeamsApi.new
id = 56 # Integer | The ID of the team
opts = {
  add_team_user_request: OpenPipette::AddTeamUserRequest.new({users: [37]}) # AddTeamUserRequest | 
}

begin
  # Add users to a team
  result = api_instance.add_team_user(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->add_team_user: #{e}"
end
```

#### Using the add_team_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIds>, Integer, Hash)> add_team_user_with_http_info(id, opts)

```ruby
begin
  # Add users to a team
  data, status_code, headers = api_instance.add_team_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIds>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->add_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the team |  |
| **add_team_user_request** | [**AddTeamUserRequest**](AddTeamUserRequest.md) |  | [optional] |

### Return type

[**UserIds**](UserIds.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_user

> <UserIds> delete_team_user(id, opts)

Delete users from a team

Deletes users from an existing team.

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

api_instance = OpenPipette::LegacyTeamsApi.new
id = 56 # Integer | The ID of the team
opts = {
  delete_team_user_request: OpenPipette::DeleteTeamUserRequest.new({users: [37]}) # DeleteTeamUserRequest | 
}

begin
  # Delete users from a team
  result = api_instance.delete_team_user(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->delete_team_user: #{e}"
end
```

#### Using the delete_team_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIds>, Integer, Hash)> delete_team_user_with_http_info(id, opts)

```ruby
begin
  # Delete users from a team
  data, status_code, headers = api_instance.delete_team_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIds>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->delete_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the team |  |
| **delete_team_user_request** | [**DeleteTeamUserRequest**](DeleteTeamUserRequest.md) |  | [optional] |

### Return type

[**UserIds**](UserIds.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_team

> <TeamResponse200> get_team(id, opts)

Get a single team

Returns data about a specific team.

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

api_instance = OpenPipette::LegacyTeamsApi.new
id = 56 # Integer | The ID of the team
opts = {
  skip_users: 0 # Float | When enabled, the teams will not include IDs of member users
}

begin
  # Get a single team
  result = api_instance.get_team(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamResponse200>, Integer, Hash)> get_team_with_http_info(id, opts)

```ruby
begin
  # Get a single team
  data, status_code, headers = api_instance.get_team_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the team |  |
| **skip_users** | **Float** | When enabled, the teams will not include IDs of member users | [optional][default to 0] |

### Return type

[**TeamResponse200**](TeamResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team_users

> <UserIds> get_team_users(id)

Get all users in a team

Returns a list of all user IDs within a team.

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

api_instance = OpenPipette::LegacyTeamsApi.new
id = 56 # Integer | The ID of the team

begin
  # Get all users in a team
  result = api_instance.get_team_users(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_team_users: #{e}"
end
```

#### Using the get_team_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIds>, Integer, Hash)> get_team_users_with_http_info(id)

```ruby
begin
  # Get all users in a team
  data, status_code, headers = api_instance.get_team_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIds>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_team_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the team |  |

### Return type

[**UserIds**](UserIds.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_teams

> <TeamsResponse200> get_teams(opts)

Get all teams

Returns data about teams within the company.

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

api_instance = OpenPipette::LegacyTeamsApi.new
opts = {
  order_by: 'id', # String | The field name to sort returned teams by
  skip_users: 0 # Float | When enabled, the teams will not include IDs of member users
}

begin
  # Get all teams
  result = api_instance.get_teams(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_teams: #{e}"
end
```

#### Using the get_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamsResponse200>, Integer, Hash)> get_teams_with_http_info(opts)

```ruby
begin
  # Get all teams
  data, status_code, headers = api_instance.get_teams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_by** | **String** | The field name to sort returned teams by | [optional][default to &#39;id&#39;] |
| **skip_users** | **Float** | When enabled, the teams will not include IDs of member users | [optional][default to 0] |

### Return type

[**TeamsResponse200**](TeamsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_teams

> <TeamsResponse200> get_user_teams(id, opts)

Get all teams of a user

Returns data about all teams which have the specified user as a member.

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

api_instance = OpenPipette::LegacyTeamsApi.new
id = 56 # Integer | The ID of the user
opts = {
  order_by: 'id', # String | The field name to sort returned teams by
  skip_users: 0 # Float | When enabled, the teams will not include IDs of member users
}

begin
  # Get all teams of a user
  result = api_instance.get_user_teams(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_user_teams: #{e}"
end
```

#### Using the get_user_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamsResponse200>, Integer, Hash)> get_user_teams_with_http_info(id, opts)

```ruby
begin
  # Get all teams of a user
  data, status_code, headers = api_instance.get_user_teams_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->get_user_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user |  |
| **order_by** | **String** | The field name to sort returned teams by | [optional][default to &#39;id&#39;] |
| **skip_users** | **Float** | When enabled, the teams will not include IDs of member users | [optional][default to 0] |

### Return type

[**TeamsResponse200**](TeamsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> <TeamResponse200> update_team(id, opts)

Update a team

Updates an existing team and returns the updated object.

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

api_instance = OpenPipette::LegacyTeamsApi.new
id = 56 # Integer | The ID of the team
opts = {
  update_team_request: OpenPipette::UpdateTeamRequest.new # UpdateTeamRequest | 
}

begin
  # Update a team
  result = api_instance.update_team(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamResponse200>, Integer, Hash)> update_team_with_http_info(id, opts)

```ruby
begin
  # Update a team
  data, status_code, headers = api_instance.update_team_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LegacyTeamsApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the team |  |
| **update_team_request** | [**UpdateTeamRequest**](UpdateTeamRequest.md) |  | [optional] |

### Return type

[**TeamResponse200**](TeamResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

