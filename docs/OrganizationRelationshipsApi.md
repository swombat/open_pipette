# OpenPipette::OrganizationRelationshipsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_organization_relationship**](OrganizationRelationshipsApi.md#add_organization_relationship) | **POST** /organizationRelationships | Create an organization relationship |
| [**delete_organization_relationship**](OrganizationRelationshipsApi.md#delete_organization_relationship) | **DELETE** /organizationRelationships/{id} | Delete an organization relationship |
| [**get_organization_relationship**](OrganizationRelationshipsApi.md#get_organization_relationship) | **GET** /organizationRelationships/{id} | Get one organization relationship |
| [**get_organization_relationships**](OrganizationRelationshipsApi.md#get_organization_relationships) | **GET** /organizationRelationships | Get all relationships for organization |
| [**update_organization_relationship**](OrganizationRelationshipsApi.md#update_organization_relationship) | **PUT** /organizationRelationships/{id} | Update an organization relationship |


## add_organization_relationship

> <AddOrganizationRelationshipResponse200> add_organization_relationship(opts)

Create an organization relationship

Creates and returns an organization relationship.

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

api_instance = OpenPipette::OrganizationRelationshipsApi.new
opts = {
  add_organization_relationship_request: OpenPipette::AddOrganizationRelationshipRequest.new({type: 'parent', rel_owner_org_id: 37, rel_linked_org_id: 37}) # AddOrganizationRelationshipRequest | 
}

begin
  # Create an organization relationship
  result = api_instance.add_organization_relationship(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->add_organization_relationship: #{e}"
end
```

#### Using the add_organization_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrganizationRelationshipResponse200>, Integer, Hash)> add_organization_relationship_with_http_info(opts)

```ruby
begin
  # Create an organization relationship
  data, status_code, headers = api_instance.add_organization_relationship_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrganizationRelationshipResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->add_organization_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_organization_relationship_request** | [**AddOrganizationRelationshipRequest**](AddOrganizationRelationshipRequest.md) |  | [optional] |

### Return type

[**AddOrganizationRelationshipResponse200**](AddOrganizationRelationshipResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization_relationship

> <DeleteOrganizationRelationshipResponse200> delete_organization_relationship(id)

Delete an organization relationship

Deletes an organization relationship and returns the deleted ID.

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

api_instance = OpenPipette::OrganizationRelationshipsApi.new
id = 56 # Integer | The ID of the organization relationship

begin
  # Delete an organization relationship
  result = api_instance.delete_organization_relationship(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->delete_organization_relationship: #{e}"
end
```

#### Using the delete_organization_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteOrganizationRelationshipResponse200>, Integer, Hash)> delete_organization_relationship_with_http_info(id)

```ruby
begin
  # Delete an organization relationship
  data, status_code, headers = api_instance.delete_organization_relationship_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteOrganizationRelationshipResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->delete_organization_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization relationship |  |

### Return type

[**DeleteOrganizationRelationshipResponse200**](DeleteOrganizationRelationshipResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_relationship

> <GetOrganizationRelationshipResponse200> get_organization_relationship(id, opts)

Get one organization relationship

Finds and returns an organization relationship from its ID.

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

api_instance = OpenPipette::OrganizationRelationshipsApi.new
id = 56 # Integer | The ID of the organization relationship
opts = {
  org_id: 56 # Integer | The ID of the base organization for the returned calculated values
}

begin
  # Get one organization relationship
  result = api_instance.get_organization_relationship(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->get_organization_relationship: #{e}"
end
```

#### Using the get_organization_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrganizationRelationshipResponse200>, Integer, Hash)> get_organization_relationship_with_http_info(id, opts)

```ruby
begin
  # Get one organization relationship
  data, status_code, headers = api_instance.get_organization_relationship_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrganizationRelationshipResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->get_organization_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization relationship |  |
| **org_id** | **Integer** | The ID of the base organization for the returned calculated values | [optional] |

### Return type

[**GetOrganizationRelationshipResponse200**](GetOrganizationRelationshipResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_relationships

> <GetOrganizationRelationshipsResponse200> get_organization_relationships(org_id)

Get all relationships for organization

Gets all of the relationships for a supplied organization ID.

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

api_instance = OpenPipette::OrganizationRelationshipsApi.new
org_id = 56 # Integer | The ID of the organization to get relationships for

begin
  # Get all relationships for organization
  result = api_instance.get_organization_relationships(org_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->get_organization_relationships: #{e}"
end
```

#### Using the get_organization_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrganizationRelationshipsResponse200>, Integer, Hash)> get_organization_relationships_with_http_info(org_id)

```ruby
begin
  # Get all relationships for organization
  data, status_code, headers = api_instance.get_organization_relationships_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrganizationRelationshipsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->get_organization_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **Integer** | The ID of the organization to get relationships for |  |

### Return type

[**GetOrganizationRelationshipsResponse200**](GetOrganizationRelationshipsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization_relationship

> <UpdateOrganizationRelationshipResponse200> update_organization_relationship(id, opts)

Update an organization relationship

Updates and returns an organization relationship.

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

api_instance = OpenPipette::OrganizationRelationshipsApi.new
id = 56 # Integer | The ID of the organization relationship
opts = {
  organization_relationship: OpenPipette::OrganizationRelationship.new # OrganizationRelationship | 
}

begin
  # Update an organization relationship
  result = api_instance.update_organization_relationship(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->update_organization_relationship: #{e}"
end
```

#### Using the update_organization_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrganizationRelationshipResponse200>, Integer, Hash)> update_organization_relationship_with_http_info(id, opts)

```ruby
begin
  # Update an organization relationship
  data, status_code, headers = api_instance.update_organization_relationship_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrganizationRelationshipResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationRelationshipsApi->update_organization_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization relationship |  |
| **organization_relationship** | [**OrganizationRelationship**](OrganizationRelationship.md) |  | [optional] |

### Return type

[**UpdateOrganizationRelationshipResponse200**](UpdateOrganizationRelationshipResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

