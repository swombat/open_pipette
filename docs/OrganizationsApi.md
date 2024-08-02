# OpenPipette::OrganizationsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_organization**](OrganizationsApi.md#add_organization) | **POST** /organizations | Add an organization |
| [**add_organization_follower**](OrganizationsApi.md#add_organization_follower) | **POST** /organizations/{id}/followers | Add a follower to an organization |
| [**delete_organization**](OrganizationsApi.md#delete_organization) | **DELETE** /organizations/{id} | Delete an organization |
| [**delete_organization_follower**](OrganizationsApi.md#delete_organization_follower) | **DELETE** /organizations/{id}/followers/{follower_id} | Delete a follower from an organization |
| [**delete_organizations**](OrganizationsApi.md#delete_organizations) | **DELETE** /organizations | Delete multiple organizations in bulk |
| [**get_organization**](OrganizationsApi.md#get_organization) | **GET** /organizations/{id} | Get details of an organization |
| [**get_organization_activities**](OrganizationsApi.md#get_organization_activities) | **GET** /organizations/{id}/activities | List activities associated with an organization |
| [**get_organization_changelog**](OrganizationsApi.md#get_organization_changelog) | **GET** /organizations/{id}/changelog | List updates about organization field values |
| [**get_organization_deals**](OrganizationsApi.md#get_organization_deals) | **GET** /organizations/{id}/deals | List deals associated with an organization |
| [**get_organization_files**](OrganizationsApi.md#get_organization_files) | **GET** /organizations/{id}/files | List files attached to an organization |
| [**get_organization_followers**](OrganizationsApi.md#get_organization_followers) | **GET** /organizations/{id}/followers | List followers of an organization |
| [**get_organization_mail_messages**](OrganizationsApi.md#get_organization_mail_messages) | **GET** /organizations/{id}/mailMessages | List mail messages associated with an organization |
| [**get_organization_persons**](OrganizationsApi.md#get_organization_persons) | **GET** /organizations/{id}/persons | List persons of an organization |
| [**get_organization_updates**](OrganizationsApi.md#get_organization_updates) | **GET** /organizations/{id}/flow | List updates about an organization |
| [**get_organization_users**](OrganizationsApi.md#get_organization_users) | **GET** /organizations/{id}/permittedUsers | List permitted users |
| [**get_organizations**](OrganizationsApi.md#get_organizations) | **GET** /organizations | Get all organizations |
| [**get_organizations_collection**](OrganizationsApi.md#get_organizations_collection) | **GET** /organizations/collection | Get all organizations (BETA) |
| [**merge_organizations**](OrganizationsApi.md#merge_organizations) | **PUT** /organizations/{id}/merge | Merge two organizations |
| [**search_organization**](OrganizationsApi.md#search_organization) | **GET** /organizations/search | Search organizations |
| [**update_organization**](OrganizationsApi.md#update_organization) | **PUT** /organizations/{id} | Update an organization |


## add_organization

> <AddOrganizationResponse200> add_organization(opts)

Add an organization

Adds a new organization. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the organizationFields and look for `key` values. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-an-organization\" target=\"_blank\" rel=\"noopener noreferrer\">adding an organization</a>.

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

api_instance = OpenPipette::OrganizationsApi.new
opts = {
  add_organization_request: OpenPipette::AddOrganizationRequest.new({name: 'name_example'}) # AddOrganizationRequest | 
}

begin
  # Add an organization
  result = api_instance.add_organization(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->add_organization: #{e}"
end
```

#### Using the add_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrganizationResponse200>, Integer, Hash)> add_organization_with_http_info(opts)

```ruby
begin
  # Add an organization
  data, status_code, headers = api_instance.add_organization_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrganizationResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->add_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_organization_request** | [**AddOrganizationRequest**](AddOrganizationRequest.md) |  | [optional] |

### Return type

[**AddOrganizationResponse200**](AddOrganizationResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_organization_follower

> <AddOrganizationFollowerResponse200> add_organization_follower(id, opts)

Add a follower to an organization

Adds a follower to an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  add_organization_follower_request: OpenPipette::AddOrganizationFollowerRequest.new({user_id: 37}) # AddOrganizationFollowerRequest | 
}

begin
  # Add a follower to an organization
  result = api_instance.add_organization_follower(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->add_organization_follower: #{e}"
end
```

#### Using the add_organization_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrganizationFollowerResponse200>, Integer, Hash)> add_organization_follower_with_http_info(id, opts)

```ruby
begin
  # Add a follower to an organization
  data, status_code, headers = api_instance.add_organization_follower_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrganizationFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->add_organization_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **add_organization_follower_request** | [**AddOrganizationFollowerRequest**](AddOrganizationFollowerRequest.md) |  | [optional] |

### Return type

[**AddOrganizationFollowerResponse200**](AddOrganizationFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization

> <DeleteOrganizationResponse200> delete_organization(id)

Delete an organization

Marks an organization as deleted. After 30 days, the organization will be permanently deleted.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization

begin
  # Delete an organization
  result = api_instance.delete_organization(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization: #{e}"
end
```

#### Using the delete_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteOrganizationResponse200>, Integer, Hash)> delete_organization_with_http_info(id)

```ruby
begin
  # Delete an organization
  data, status_code, headers = api_instance.delete_organization_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteOrganizationResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |

### Return type

[**DeleteOrganizationResponse200**](DeleteOrganizationResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_organization_follower

> <DeleteOrganizationFollowerResponse200> delete_organization_follower(id, follower_id)

Delete a follower from an organization

Deletes a follower from an organization. You can retrieve the `follower_id` from the <a href=\"https://developers.pipedrive.com/docs/api/v1/Organizations#getOrganizationFollowers\">List followers of an organization</a> endpoint.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
follower_id = 56 # Integer | The ID of the follower

begin
  # Delete a follower from an organization
  result = api_instance.delete_organization_follower(id, follower_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization_follower: #{e}"
end
```

#### Using the delete_organization_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteOrganizationFollowerResponse200>, Integer, Hash)> delete_organization_follower_with_http_info(id, follower_id)

```ruby
begin
  # Delete a follower from an organization
  data, status_code, headers = api_instance.delete_organization_follower_with_http_info(id, follower_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteOrganizationFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **follower_id** | **Integer** | The ID of the follower |  |

### Return type

[**DeleteOrganizationFollowerResponse200**](DeleteOrganizationFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_organizations

> <DeleteOrganizationsResponse200> delete_organizations(ids)

Delete multiple organizations in bulk

Marks multiple organizations as deleted. After 30 days, the organizations will be permanently deleted.

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

api_instance = OpenPipette::OrganizationsApi.new
ids = 'ids_example' # String | The comma-separated IDs that will be deleted

begin
  # Delete multiple organizations in bulk
  result = api_instance.delete_organizations(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organizations: #{e}"
end
```

#### Using the delete_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteOrganizationsResponse200>, Integer, Hash)> delete_organizations_with_http_info(ids)

```ruby
begin
  # Delete multiple organizations in bulk
  data, status_code, headers = api_instance.delete_organizations_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteOrganizationsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated IDs that will be deleted |  |

### Return type

[**DeleteOrganizationsResponse200**](DeleteOrganizationsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization

> <GetOrganizationResponse200> get_organization(id)

Get details of an organization

Returns the details of an organization. Note that this also returns some additional fields which are not present when asking for all organizations. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the `key` value of organizationFields.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization

begin
  # Get details of an organization
  result = api_instance.get_organization(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization: #{e}"
end
```

#### Using the get_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrganizationResponse200>, Integer, Hash)> get_organization_with_http_info(id)

```ruby
begin
  # Get details of an organization
  data, status_code, headers = api_instance.get_organization_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrganizationResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |

### Return type

[**GetOrganizationResponse200**](GetOrganizationResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_activities

> <GetAssociatedActivitiesResponse200> get_organization_activities(id, opts)

List activities associated with an organization

Lists activities associated with an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  done: 0, # Float | Whether the activity is done or not. 0 = Not done, 1 = Done. If omitted returns both Done and Not done activities.
  exclude: 'exclude_example' # String | A comma-separated string of activity IDs to exclude from result
}

begin
  # List activities associated with an organization
  result = api_instance.get_organization_activities(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_activities: #{e}"
end
```

#### Using the get_organization_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedActivitiesResponse200>, Integer, Hash)> get_organization_activities_with_http_info(id, opts)

```ruby
begin
  # List activities associated with an organization
  data, status_code, headers = api_instance.get_organization_activities_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedActivitiesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **done** | **Float** | Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted returns both Done and Not done activities. | [optional] |
| **exclude** | **String** | A comma-separated string of activity IDs to exclude from result | [optional] |

### Return type

[**GetAssociatedActivitiesResponse200**](GetAssociatedActivitiesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_changelog

> <GetChangelogResponse200> get_organization_changelog(id, opts)

List updates about organization field values

Lists updates about field values of an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 56 # Integer | Items shown per page
}

begin
  # List updates about organization field values
  result = api_instance.get_organization_changelog(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_changelog: #{e}"
end
```

#### Using the get_organization_changelog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChangelogResponse200>, Integer, Hash)> get_organization_changelog_with_http_info(id, opts)

```ruby
begin
  # List updates about organization field values
  data, status_code, headers = api_instance.get_organization_changelog_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChangelogResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_changelog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetChangelogResponse200**](GetChangelogResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_deals

> <GetAssociatedDealsResponse200> get_organization_deals(id, opts)

List deals associated with an organization

Lists deals associated with an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  status: 'open', # String | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
  sort: 'sort_example', # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys).
  only_primary_association: 0 # Float | If set, only deals that are directly associated to the organization are fetched. If not set (default), all deals are fetched that are either directly or indirectly related to the organization. Indirect relations include relations through custom, organization-type fields and through persons of the given organization.
}

begin
  # List deals associated with an organization
  result = api_instance.get_organization_deals(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_deals: #{e}"
end
```

#### Using the get_organization_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedDealsResponse200>, Integer, Hash)> get_organization_deals_with_http_info(id, opts)

```ruby
begin
  # List deals associated with an organization
  data, status_code, headers = api_instance.get_organization_deals_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **status** | **String** | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included. | [optional][default to &#39;all_not_deleted&#39;] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). | [optional] |
| **only_primary_association** | **Float** | If set, only deals that are directly associated to the organization are fetched. If not set (default), all deals are fetched that are either directly or indirectly related to the organization. Indirect relations include relations through custom, organization-type fields and through persons of the given organization. | [optional] |

### Return type

[**GetAssociatedDealsResponse200**](GetAssociatedDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_files

> <GetAssociatedFilesResponse200> get_organization_files(id, opts)

List files attached to an organization

Lists files associated with an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys). Supported fields: `id`, `user_id`, `deal_id`, `person_id`, `org_id`, `product_id`, `add_time`, `update_time`, `file_name`, `file_type`, `file_size`, `comment`.
}

begin
  # List files attached to an organization
  result = api_instance.get_organization_files(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_files: #{e}"
end
```

#### Using the get_organization_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFilesResponse200>, Integer, Hash)> get_organization_files_with_http_info(id, opts)

```ruby
begin
  # List files attached to an organization
  data, status_code, headers = api_instance.get_organization_files_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFilesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
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


## get_organization_followers

> <GetAssociatedFollowersResponse2001> get_organization_followers(id)

List followers of an organization

Lists the followers of an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization

begin
  # List followers of an organization
  result = api_instance.get_organization_followers(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_followers: #{e}"
end
```

#### Using the get_organization_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFollowersResponse2001>, Integer, Hash)> get_organization_followers_with_http_info(id)

```ruby
begin
  # List followers of an organization
  data, status_code, headers = api_instance.get_organization_followers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFollowersResponse2001>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |

### Return type

[**GetAssociatedFollowersResponse2001**](GetAssociatedFollowersResponse2001.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_mail_messages

> <GetAssociatedMailMessagesResponse200> get_organization_mail_messages(id, opts)

List mail messages associated with an organization

Lists mail messages associated with an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List mail messages associated with an organization
  result = api_instance.get_organization_mail_messages(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_mail_messages: #{e}"
end
```

#### Using the get_organization_mail_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedMailMessagesResponse200>, Integer, Hash)> get_organization_mail_messages_with_http_info(id, opts)

```ruby
begin
  # List mail messages associated with an organization
  data, status_code, headers = api_instance.get_organization_mail_messages_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedMailMessagesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_mail_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetAssociatedMailMessagesResponse200**](GetAssociatedMailMessagesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_persons

> <ListPersonsResponse200> get_organization_persons(id, opts)

List persons of an organization

Lists persons associated with an organization.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the `data.marketing_status` field.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List persons of an organization
  result = api_instance.get_organization_persons(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_persons: #{e}"
end
```

#### Using the get_organization_persons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPersonsResponse200>, Integer, Hash)> get_organization_persons_with_http_info(id, opts)

```ruby
begin
  # List persons of an organization
  data, status_code, headers = api_instance.get_organization_persons_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPersonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_persons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**ListPersonsResponse200**](ListPersonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_updates

> <GetAssociatedUpdatesResponse200> get_organization_updates(id, opts)

List updates about an organization

Lists updates about an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  all_changes: 'all_changes_example', # String | Whether to show custom field updates or not. 1 = Include custom field changes. If omitted, returns changes without custom field updates.
  items: 'items_example' # String | A comma-separated string for filtering out item specific updates. (Possible values - activity, plannedActivity, note, file, change, deal, follower, participant, mailMessage, mailMessageWithAttachment, invoice, activityFile, document).
}

begin
  # List updates about an organization
  result = api_instance.get_organization_updates(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_updates: #{e}"
end
```

#### Using the get_organization_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedUpdatesResponse200>, Integer, Hash)> get_organization_updates_with_http_info(id, opts)

```ruby
begin
  # List updates about an organization
  data, status_code, headers = api_instance.get_organization_updates_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedUpdatesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_updates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **all_changes** | **String** | Whether to show custom field updates or not. 1 &#x3D; Include custom field changes. If omitted, returns changes without custom field updates. | [optional] |
| **items** | **String** | A comma-separated string for filtering out item specific updates. (Possible values - activity, plannedActivity, note, file, change, deal, follower, participant, mailMessage, mailMessageWithAttachment, invoice, activityFile, document). | [optional] |

### Return type

[**GetAssociatedUpdatesResponse200**](GetAssociatedUpdatesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_users

> <ListPermittedUsersResponse2001> get_organization_users(id)

List permitted users

List users permitted to access an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization

begin
  # List permitted users
  result = api_instance.get_organization_users(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_users: #{e}"
end
```

#### Using the get_organization_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPermittedUsersResponse2001>, Integer, Hash)> get_organization_users_with_http_info(id)

```ruby
begin
  # List permitted users
  data, status_code, headers = api_instance.get_organization_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPermittedUsersResponse2001>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |

### Return type

[**ListPermittedUsersResponse2001**](ListPermittedUsersResponse2001.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizations

> <GetOrganizationsResponse200> get_organizations(opts)

Get all organizations

Returns all organizations.

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

api_instance = OpenPipette::OrganizationsApi.new
opts = {
  user_id: 56, # Integer | If supplied, only organizations owned by the given user will be returned. However, `filter_id` takes precedence over `user_id` when both are supplied.
  filter_id: 56, # Integer | The ID of the filter to use
  first_char: 'first_char_example', # String | If supplied, only organizations whose name starts with the specified letter will be returned (case-insensitive)
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys).
}

begin
  # Get all organizations
  result = api_instance.get_organizations(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organizations: #{e}"
end
```

#### Using the get_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrganizationsResponse200>, Integer, Hash)> get_organizations_with_http_info(opts)

```ruby
begin
  # Get all organizations
  data, status_code, headers = api_instance.get_organizations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrganizationsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | If supplied, only organizations owned by the given user will be returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;user_id&#x60; when both are supplied. | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use | [optional] |
| **first_char** | **String** | If supplied, only organizations whose name starts with the specified letter will be returned (case-insensitive) | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). | [optional] |

### Return type

[**GetOrganizationsResponse200**](GetOrganizationsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizations_collection

> <GetOrganizationsCollection200Response> get_organizations_collection(opts)

Get all organizations (BETA)

Returns all organizations. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions <a href=\"https://support.pipedrive.com/en/article/global-user-management\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.

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

api_instance = OpenPipette::OrganizationsApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
  since: 'since_example', # String | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  _until: '_until_example', # String | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  owner_id: 56, # Integer | If supplied, only organizations owned by the given user will be returned
  first_char: 'first_char_example' # String | If supplied, only organizations whose name starts with the specified letter will be returned (case-insensitive)
}

begin
  # Get all organizations (BETA)
  result = api_instance.get_organizations_collection(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organizations_collection: #{e}"
end
```

#### Using the get_organizations_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrganizationsCollection200Response>, Integer, Hash)> get_organizations_collection_with_http_info(opts)

```ruby
begin
  # Get all organizations (BETA)
  data, status_code, headers = api_instance.get_organizations_collection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrganizationsCollection200Response>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->get_organizations_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed. | [optional] |
| **since** | **String** | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **_until** | **String** | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **owner_id** | **Integer** | If supplied, only organizations owned by the given user will be returned | [optional] |
| **first_char** | **String** | If supplied, only organizations whose name starts with the specified letter will be returned (case-insensitive) | [optional] |

### Return type

[**GetOrganizationsCollection200Response**](GetOrganizationsCollection200Response.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_organizations

> <MergeOrganizationsResponse200> merge_organizations(id, opts)

Merge two organizations

Merges an organization with another organization. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/merging-two-organizations\" target=\"_blank\" rel=\"noopener noreferrer\">merging two organizations</a>.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  merge_organizations_request: OpenPipette::MergeOrganizationsRequest.new({merge_with_id: 37}) # MergeOrganizationsRequest | 
}

begin
  # Merge two organizations
  result = api_instance.merge_organizations(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->merge_organizations: #{e}"
end
```

#### Using the merge_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MergeOrganizationsResponse200>, Integer, Hash)> merge_organizations_with_http_info(id, opts)

```ruby
begin
  # Merge two organizations
  data, status_code, headers = api_instance.merge_organizations_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MergeOrganizationsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->merge_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **merge_organizations_request** | [**MergeOrganizationsRequest**](MergeOrganizationsRequest.md) |  | [optional] |

### Return type

[**MergeOrganizationsResponse200**](MergeOrganizationsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_organization

> <SearchOrganizationResponse200> search_organization(term, opts)

Search organizations

Searches all organizations by name, address, notes and/or custom fields. This endpoint is a wrapper of <a href=\"https://developers.pipedrive.com/docs/api/v1/ItemSearch#searchItem\">/v1/itemSearch</a> with a narrower OAuth scope.

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

api_instance = OpenPipette::OrganizationsApi.new
term = 'term_example' # String | The search term to look for. Minimum 2 characters (or 1 if using `exact_match`). Please note that the search term has to be URL encoded.
opts = {
  fields: 'address', # String | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: `address`, `varchar`, `text`, `varchar_auto`, `double`, `monetary` and `phone`. Read more about searching by custom fields <a href=\"https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.
  exact_match: true, # Boolean | When enabled, only full exact matches against the given term are returned. It is <b>not</b> case sensitive.
  start: 56, # Integer | Pagination start. Note that the pagination is based on main results and does not include related items when using `search_for_related_items` parameter.
  limit: 56 # Integer | Items shown per page
}

begin
  # Search organizations
  result = api_instance.search_organization(term, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->search_organization: #{e}"
end
```

#### Using the search_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchOrganizationResponse200>, Integer, Hash)> search_organization_with_http_info(term, opts)

```ruby
begin
  # Search organizations
  data, status_code, headers = api_instance.search_organization_with_http_info(term, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchOrganizationResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->search_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The search term to look for. Minimum 2 characters (or 1 if using &#x60;exact_match&#x60;). Please note that the search term has to be URL encoded. |  |
| **fields** | **String** | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: &#x60;address&#x60;, &#x60;varchar&#x60;, &#x60;text&#x60;, &#x60;varchar_auto&#x60;, &#x60;double&#x60;, &#x60;monetary&#x60; and &#x60;phone&#x60;. Read more about searching by custom fields &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;. | [optional] |
| **exact_match** | **Boolean** | When enabled, only full exact matches against the given term are returned. It is &lt;b&gt;not&lt;/b&gt; case sensitive. | [optional] |
| **start** | **Integer** | Pagination start. Note that the pagination is based on main results and does not include related items when using &#x60;search_for_related_items&#x60; parameter. | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**SearchOrganizationResponse200**](SearchOrganizationResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization

> <UpdateOrganizationResponse200> update_organization(id, opts)

Update an organization

Updates the properties of an organization.

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

api_instance = OpenPipette::OrganizationsApi.new
id = 56 # Integer | The ID of the organization
opts = {
  update_organization_request: OpenPipette::UpdateOrganizationRequest.new # UpdateOrganizationRequest | 
}

begin
  # Update an organization
  result = api_instance.update_organization(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization: #{e}"
end
```

#### Using the update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrganizationResponse200>, Integer, Hash)> update_organization_with_http_info(id, opts)

```ruby
begin
  # Update an organization
  data, status_code, headers = api_instance.update_organization_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrganizationResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization |  |
| **update_organization_request** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md) |  | [optional] |

### Return type

[**UpdateOrganizationResponse200**](UpdateOrganizationResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

