# OpenPipette::LeadsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_lead**](LeadsApi.md#add_lead) | **POST** /leads | Add a lead |
| [**delete_lead**](LeadsApi.md#delete_lead) | **DELETE** /leads/{id} | Delete a lead |
| [**get_lead**](LeadsApi.md#get_lead) | **GET** /leads/{id} | Get one lead |
| [**get_lead_users**](LeadsApi.md#get_lead_users) | **GET** /leads/{id}/permittedUsers | List permitted users |
| [**get_leads**](LeadsApi.md#get_leads) | **GET** /leads | Get all leads |
| [**search_leads**](LeadsApi.md#search_leads) | **GET** /leads/search | Search leads |
| [**update_lead**](LeadsApi.md#update_lead) | **PATCH** /leads/{id} | Update a lead |


## add_lead

> <OneLeadResponse200> add_lead(opts)

Add a lead

Creates a lead. A lead always has to be linked to a person or an organization or both. All leads created through the Pipedrive API will have a lead source and origin set to `API`. Here's the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-lead\" target=\"_blank\" rel=\"noopener noreferrer\">adding a lead</a>. If a lead contains custom fields, the fields' values will be included in the response in the same format as with the `Deals` endpoints. If a custom field's value hasn't been set for the lead, it won't appear in the response. Please note that leads do not have a separate set of custom fields, instead they inherit the custom fields' structure from deals. See an example given in the <a href=\"https://pipedrive.readme.io/docs/updating-custom-field-value\" target=\"_blank\" rel=\"noopener noreferrer\">updating custom fields' values tutorial</a>.

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

api_instance = OpenPipette::LeadsApi.new
opts = {
  add_lead_request: OpenPipette::AddLeadRequest.new({title: 'title_example'}) # AddLeadRequest | 
}

begin
  # Add a lead
  result = api_instance.add_lead(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->add_lead: #{e}"
end
```

#### Using the add_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneLeadResponse200>, Integer, Hash)> add_lead_with_http_info(opts)

```ruby
begin
  # Add a lead
  data, status_code, headers = api_instance.add_lead_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneLeadResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->add_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_lead_request** | [**AddLeadRequest**](AddLeadRequest.md) |  | [optional] |

### Return type

[**OneLeadResponse200**](OneLeadResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_lead

> <LeadIdResponse200> delete_lead(id)

Delete a lead

Deletes a specific lead.

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

api_instance = OpenPipette::LeadsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the lead

begin
  # Delete a lead
  result = api_instance.delete_lead(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->delete_lead: #{e}"
end
```

#### Using the delete_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeadIdResponse200>, Integer, Hash)> delete_lead_with_http_info(id)

```ruby
begin
  # Delete a lead
  data, status_code, headers = api_instance.delete_lead_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeadIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->delete_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead |  |

### Return type

[**LeadIdResponse200**](LeadIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead

> <OneLeadResponse200> get_lead(id)

Get one lead

Returns details of a specific lead. If a lead contains custom fields, the fields' values will be included in the response in the same format as with the `Deals` endpoints. If a custom field's value hasn't been set for the lead, it won't appear in the response. Please note that leads do not have a separate set of custom fields, instead they inherit the custom fields’ structure from deals.

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

api_instance = OpenPipette::LeadsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the lead

begin
  # Get one lead
  result = api_instance.get_lead(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->get_lead: #{e}"
end
```

#### Using the get_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneLeadResponse200>, Integer, Hash)> get_lead_with_http_info(id)

```ruby
begin
  # Get one lead
  data, status_code, headers = api_instance.get_lead_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneLeadResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->get_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead |  |

### Return type

[**OneLeadResponse200**](OneLeadResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead_users

> <UserIds> get_lead_users(id)

List permitted users

Lists the users permitted to access a lead.

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

api_instance = OpenPipette::LeadsApi.new
id = 'id_example' # String | The ID of the lead

begin
  # List permitted users
  result = api_instance.get_lead_users(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->get_lead_users: #{e}"
end
```

#### Using the get_lead_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIds>, Integer, Hash)> get_lead_users_with_http_info(id)

```ruby
begin
  # List permitted users
  data, status_code, headers = api_instance.get_lead_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIds>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->get_lead_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead |  |

### Return type

[**UserIds**](UserIds.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_leads

> <GetLeadsResponse200> get_leads(opts)

Get all leads

Returns multiple leads. Leads are sorted by the time they were created, from oldest to newest. Pagination can be controlled using `limit` and `start` query parameters. If a lead contains custom fields, the fields' values will be included in the response in the same format as with the `Deals` endpoints. If a custom field's value hasn't been set for the lead, it won't appear in the response. Please note that leads do not have a separate set of custom fields, instead they inherit the custom fields' structure from deals. 

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

api_instance = OpenPipette::LeadsApi.new
opts = {
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned.
  start: 0, # Integer | For pagination, the position that represents the first result for the page
  archived_status: 'archived', # String | Filtering based on the archived status of a lead. If not provided, `All` is used.
  owner_id: 1, # Integer | If supplied, only leads matching the given user will be returned. However, `filter_id` takes precedence over `owner_id` when supplied.
  person_id: 1, # Integer | If supplied, only leads matching the given person will be returned. However, `filter_id` takes precedence over `person_id` when supplied.
  organization_id: 1, # Integer | If supplied, only leads matching the given organization will be returned. However, `filter_id` takes precedence over `organization_id` when supplied.
  filter_id: 1, # Integer | The ID of the filter to use
  sort: 'id' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys).
}

begin
  # Get all leads
  result = api_instance.get_leads(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->get_leads: #{e}"
end
```

#### Using the get_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadsResponse200>, Integer, Hash)> get_leads_with_http_info(opts)

```ruby
begin
  # Get all leads
  data, status_code, headers = api_instance.get_leads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->get_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. | [optional] |
| **start** | **Integer** | For pagination, the position that represents the first result for the page | [optional] |
| **archived_status** | **String** | Filtering based on the archived status of a lead. If not provided, &#x60;All&#x60; is used. | [optional] |
| **owner_id** | **Integer** | If supplied, only leads matching the given user will be returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;owner_id&#x60; when supplied. | [optional] |
| **person_id** | **Integer** | If supplied, only leads matching the given person will be returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;person_id&#x60; when supplied. | [optional] |
| **organization_id** | **Integer** | If supplied, only leads matching the given organization will be returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;organization_id&#x60; when supplied. | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). | [optional] |

### Return type

[**GetLeadsResponse200**](GetLeadsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_leads

> <SearchLeadsResponse200> search_leads(term, opts)

Search leads

Searches all leads by title, notes and/or custom fields. This endpoint is a wrapper of <a href=\"https://developers.pipedrive.com/docs/api/v1/ItemSearch#searchItem\">/v1/itemSearch</a> with a narrower OAuth scope. Found leads can be filtered by the person ID and the organization ID.

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

api_instance = OpenPipette::LeadsApi.new
term = 'term_example' # String | The search term to look for. Minimum 2 characters (or 1 if using `exact_match`). Please note that the search term has to be URL encoded.
opts = {
  fields: 'custom_fields', # String | A comma-separated string array. The fields to perform the search from. Defaults to all of them.
  exact_match: true, # Boolean | When enabled, only full exact matches against the given term are returned. It is <b>not</b> case sensitive.
  person_id: 56, # Integer | Will filter leads by the provided person ID. The upper limit of found leads associated with the person is 2000.
  organization_id: 56, # Integer | Will filter leads by the provided organization ID. The upper limit of found leads associated with the organization is 2000.
  include_fields: 'lead.was_seen', # String | Supports including optional fields in the results which are not provided by default
  start: 56, # Integer | Pagination start. Note that the pagination is based on main results and does not include related items when using `search_for_related_items` parameter.
  limit: 56 # Integer | Items shown per page
}

begin
  # Search leads
  result = api_instance.search_leads(term, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->search_leads: #{e}"
end
```

#### Using the search_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchLeadsResponse200>, Integer, Hash)> search_leads_with_http_info(term, opts)

```ruby
begin
  # Search leads
  data, status_code, headers = api_instance.search_leads_with_http_info(term, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchLeadsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->search_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The search term to look for. Minimum 2 characters (or 1 if using &#x60;exact_match&#x60;). Please note that the search term has to be URL encoded. |  |
| **fields** | **String** | A comma-separated string array. The fields to perform the search from. Defaults to all of them. | [optional] |
| **exact_match** | **Boolean** | When enabled, only full exact matches against the given term are returned. It is &lt;b&gt;not&lt;/b&gt; case sensitive. | [optional] |
| **person_id** | **Integer** | Will filter leads by the provided person ID. The upper limit of found leads associated with the person is 2000. | [optional] |
| **organization_id** | **Integer** | Will filter leads by the provided organization ID. The upper limit of found leads associated with the organization is 2000. | [optional] |
| **include_fields** | **String** | Supports including optional fields in the results which are not provided by default | [optional] |
| **start** | **Integer** | Pagination start. Note that the pagination is based on main results and does not include related items when using &#x60;search_for_related_items&#x60; parameter. | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**SearchLeadsResponse200**](SearchLeadsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lead

> <OneLeadResponse200> update_lead(id, opts)

Update a lead

Updates one or more properties of a lead. Only properties included in the request will be updated. Send `null` to unset a property (applicable for example for `value`, `person_id` or `organization_id`). If a lead contains custom fields, the fields' values will be included in the response in the same format as with the `Deals` endpoints. If a custom field's value hasn't been set for the lead, it won't appear in the response. Please note that leads do not have a separate set of custom fields, instead they inherit the custom fields’ structure from deals. See an example given in the <a href=\"https://pipedrive.readme.io/docs/updating-custom-field-value\" target=\"_blank\" rel=\"noopener noreferrer\">updating custom fields’ values tutorial</a>.

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

api_instance = OpenPipette::LeadsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the lead
opts = {
  update_lead_request: OpenPipette::UpdateLeadRequest.new # UpdateLeadRequest | 
}

begin
  # Update a lead
  result = api_instance.update_lead(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->update_lead: #{e}"
end
```

#### Using the update_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OneLeadResponse200>, Integer, Hash)> update_lead_with_http_info(id, opts)

```ruby
begin
  # Update a lead
  data, status_code, headers = api_instance.update_lead_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OneLeadResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadsApi->update_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead |  |
| **update_lead_request** | [**UpdateLeadRequest**](UpdateLeadRequest.md) |  | [optional] |

### Return type

[**OneLeadResponse200**](OneLeadResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

