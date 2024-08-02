# OpenPipette::ProductsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_product**](ProductsApi.md#add_product) | **POST** /products | Add a product |
| [**add_product_follower**](ProductsApi.md#add_product_follower) | **POST** /products/{id}/followers | Add a follower to a product |
| [**delete_product**](ProductsApi.md#delete_product) | **DELETE** /products/{id} | Delete a product |
| [**delete_product_follower**](ProductsApi.md#delete_product_follower) | **DELETE** /products/{id}/followers/{follower_id} | Delete a follower from a product |
| [**get_product**](ProductsApi.md#get_product) | **GET** /products/{id} | Get one product |
| [**get_product_deals**](ProductsApi.md#get_product_deals) | **GET** /products/{id}/deals | Get deals where a product is attached to |
| [**get_product_files**](ProductsApi.md#get_product_files) | **GET** /products/{id}/files | List files attached to a product |
| [**get_product_followers**](ProductsApi.md#get_product_followers) | **GET** /products/{id}/followers | List followers of a product |
| [**get_product_users**](ProductsApi.md#get_product_users) | **GET** /products/{id}/permittedUsers | List permitted users |
| [**get_products**](ProductsApi.md#get_products) | **GET** /products | Get all products |
| [**search_products**](ProductsApi.md#search_products) | **GET** /products/search | Search products |
| [**update_product**](ProductsApi.md#update_product) | **PUT** /products/{id} | Update a product |


## add_product

> <GetproductResponse200> add_product(opts)

Add a product

Adds a new product to the Products inventory. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-product\" target=\"_blank\" rel=\"noopener noreferrer\">adding a product</a>.

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

api_instance = OpenPipette::ProductsApi.new
opts = {
  add_product_request: OpenPipette::AddProductRequest.new({name: 'name_example'}) # AddProductRequest | 
}

begin
  # Add a product
  result = api_instance.add_product(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->add_product: #{e}"
end
```

#### Using the add_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetproductResponse200>, Integer, Hash)> add_product_with_http_info(opts)

```ruby
begin
  # Add a product
  data, status_code, headers = api_instance.add_product_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetproductResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->add_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_product_request** | [**AddProductRequest**](AddProductRequest.md) |  | [optional] |

### Return type

[**GetproductResponse200**](GetproductResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_product_follower

> <NewFollowerResponse200> add_product_follower(id, opts)

Add a follower to a product

Adds a follower to a product.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product
opts = {
  add_product_follower_request: OpenPipette::AddProductFollowerRequest.new({user_id: 37}) # AddProductFollowerRequest | 
}

begin
  # Add a follower to a product
  result = api_instance.add_product_follower(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->add_product_follower: #{e}"
end
```

#### Using the add_product_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewFollowerResponse200>, Integer, Hash)> add_product_follower_with_http_info(id, opts)

```ruby
begin
  # Add a follower to a product
  data, status_code, headers = api_instance.add_product_follower_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->add_product_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |
| **add_product_follower_request** | [**AddProductFollowerRequest**](AddProductFollowerRequest.md) |  | [optional] |

### Return type

[**NewFollowerResponse200**](NewFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product

> <DeleteProductResponse200> delete_product(id)

Delete a product

Marks a product as deleted. After 30 days, the product will be permanently deleted.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product

begin
  # Delete a product
  result = api_instance.delete_product(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductResponse200>, Integer, Hash)> delete_product_with_http_info(id)

```ruby
begin
  # Delete a product
  data, status_code, headers = api_instance.delete_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |

### Return type

[**DeleteProductResponse200**](DeleteProductResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_product_follower

> <DeleteProductFollowerResponse200> delete_product_follower(id, follower_id)

Delete a follower from a product

Deletes a follower from a product.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product
follower_id = 56 # Integer | The ID of the relationship between the follower and the product

begin
  # Delete a follower from a product
  result = api_instance.delete_product_follower(id, follower_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->delete_product_follower: #{e}"
end
```

#### Using the delete_product_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductFollowerResponse200>, Integer, Hash)> delete_product_follower_with_http_info(id, follower_id)

```ruby
begin
  # Delete a follower from a product
  data, status_code, headers = api_instance.delete_product_follower_with_http_info(id, follower_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->delete_product_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |
| **follower_id** | **Integer** | The ID of the relationship between the follower and the product |  |

### Return type

[**DeleteProductFollowerResponse200**](DeleteProductFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product

> <GetproductResponse200> get_product(id)

Get one product

Returns data about a specific product.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product

begin
  # Get one product
  result = api_instance.get_product(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetproductResponse200>, Integer, Hash)> get_product_with_http_info(id)

```ruby
begin
  # Get one product
  data, status_code, headers = api_instance.get_product_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetproductResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |

### Return type

[**GetproductResponse200**](GetproductResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_deals

> <GetAssociatedDealsResponse200> get_product_deals(id, opts)

Get deals where a product is attached to

Returns data about deals that have a product attached to it.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  status: 'open' # String | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
}

begin
  # Get deals where a product is attached to
  result = api_instance.get_product_deals(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_deals: #{e}"
end
```

#### Using the get_product_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedDealsResponse200>, Integer, Hash)> get_product_deals_with_http_info(id, opts)

```ruby
begin
  # Get deals where a product is attached to
  data, status_code, headers = api_instance.get_product_deals_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **status** | **String** | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included. | [optional][default to &#39;all_not_deleted&#39;] |

### Return type

[**GetAssociatedDealsResponse200**](GetAssociatedDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_files

> <GetAssociatedFilesResponse2001> get_product_files(id, opts)

List files attached to a product

Lists files associated with a product.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field name and sorting mode (`field_name_1 ASC` or `field_name_1 DESC`). Supported fields: `update_time`, `id`.
}

begin
  # List files attached to a product
  result = api_instance.get_product_files(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_files: #{e}"
end
```

#### Using the get_product_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFilesResponse2001>, Integer, Hash)> get_product_files_with_http_info(id, opts)

```ruby
begin
  # List files attached to a product
  data, status_code, headers = api_instance.get_product_files_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFilesResponse2001>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field name and sorting mode (&#x60;field_name_1 ASC&#x60; or &#x60;field_name_1 DESC&#x60;). Supported fields: &#x60;update_time&#x60;, &#x60;id&#x60;. | [optional] |

### Return type

[**GetAssociatedFilesResponse2001**](GetAssociatedFilesResponse2001.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_followers

> <GetProductFollowersResponseSuccess> get_product_followers(id, opts)

List followers of a product

Lists the followers of a product.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List followers of a product
  result = api_instance.get_product_followers(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_followers: #{e}"
end
```

#### Using the get_product_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductFollowersResponseSuccess>, Integer, Hash)> get_product_followers_with_http_info(id, opts)

```ruby
begin
  # List followers of a product
  data, status_code, headers = api_instance.get_product_followers_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductFollowersResponseSuccess>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetProductFollowersResponseSuccess**](GetProductFollowersResponseSuccess.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_users

> <UserIds> get_product_users(id)

List permitted users

Lists users permitted to access a product.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product

begin
  # List permitted users
  result = api_instance.get_product_users(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_users: #{e}"
end
```

#### Using the get_product_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIds>, Integer, Hash)> get_product_users_with_http_info(id)

```ruby
begin
  # List permitted users
  data, status_code, headers = api_instance.get_product_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIds>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_product_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |

### Return type

[**UserIds**](UserIds.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> <GetProductsResponse200> get_products(opts)

Get all products

Returns data about all products.

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

api_instance = OpenPipette::ProductsApi.new
opts = {
  user_id: 56, # Integer | If supplied, only products owned by the given user will be returned
  filter_id: 56, # Integer | The ID of the filter to use
  ids: [37], # Array<Integer> | An array of integers with the IDs of the products that should be returned in the response
  first_char: 'first_char_example', # String | If supplied, only products whose name starts with the specified letter will be returned (case-insensitive)
  get_summary: true, # Boolean | If supplied, the response will return the total numbers of products in the `additional_data.summary.total_count` property
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all products
  result = api_instance.get_products(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_products: #{e}"
end
```

#### Using the get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductsResponse200>, Integer, Hash)> get_products_with_http_info(opts)

```ruby
begin
  # Get all products
  data, status_code, headers = api_instance.get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | If supplied, only products owned by the given user will be returned | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use | [optional] |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | An array of integers with the IDs of the products that should be returned in the response | [optional] |
| **first_char** | **String** | If supplied, only products whose name starts with the specified letter will be returned (case-insensitive) | [optional] |
| **get_summary** | **Boolean** | If supplied, the response will return the total numbers of products in the &#x60;additional_data.summary.total_count&#x60; property | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetProductsResponse200**](GetProductsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_products

> <SearchProductsResponse200> search_products(term, opts)

Search products

Searches all products by name, code and/or custom fields. This endpoint is a wrapper of <a href=\"https://developers.pipedrive.com/docs/api/v1/ItemSearch#searchItem\">/v1/itemSearch</a> with a narrower OAuth scope.

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

api_instance = OpenPipette::ProductsApi.new
term = 'term_example' # String | The search term to look for. Minimum 2 characters (or 1 if using `exact_match`). Please note that the search term has to be URL encoded.
opts = {
  fields: 'code', # String | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: `address`, `varchar`, `text`, `varchar_auto`, `double`, `monetary` and `phone`. Read more about searching by custom fields <a href=\"https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.
  exact_match: true, # Boolean | When enabled, only full exact matches against the given term are returned. It is <b>not</b> case sensitive.
  include_fields: 'product.price', # String | Supports including optional fields in the results which are not provided by default
  start: 56, # Integer | Pagination start. Note that the pagination is based on main results and does not include related items when using `search_for_related_items` parameter.
  limit: 56 # Integer | Items shown per page
}

begin
  # Search products
  result = api_instance.search_products(term, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->search_products: #{e}"
end
```

#### Using the search_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchProductsResponse200>, Integer, Hash)> search_products_with_http_info(term, opts)

```ruby
begin
  # Search products
  data, status_code, headers = api_instance.search_products_with_http_info(term, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchProductsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->search_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The search term to look for. Minimum 2 characters (or 1 if using &#x60;exact_match&#x60;). Please note that the search term has to be URL encoded. |  |
| **fields** | **String** | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: &#x60;address&#x60;, &#x60;varchar&#x60;, &#x60;text&#x60;, &#x60;varchar_auto&#x60;, &#x60;double&#x60;, &#x60;monetary&#x60; and &#x60;phone&#x60;. Read more about searching by custom fields &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;. | [optional] |
| **exact_match** | **Boolean** | When enabled, only full exact matches against the given term are returned. It is &lt;b&gt;not&lt;/b&gt; case sensitive. | [optional] |
| **include_fields** | **String** | Supports including optional fields in the results which are not provided by default | [optional] |
| **start** | **Integer** | Pagination start. Note that the pagination is based on main results and does not include related items when using &#x60;search_for_related_items&#x60; parameter. | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**SearchProductsResponse200**](SearchProductsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <UpdateProductResponse200> update_product(id, opts)

Update a product

Updates product data.

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

api_instance = OpenPipette::ProductsApi.new
id = 56 # Integer | The ID of the product
opts = {
  update_product_request: OpenPipette::UpdateProductRequest.new # UpdateProductRequest | 
}

begin
  # Update a product
  result = api_instance.update_product(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateProductResponse200>, Integer, Hash)> update_product_with_http_info(id, opts)

```ruby
begin
  # Update a product
  data, status_code, headers = api_instance.update_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateProductResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product |  |
| **update_product_request** | [**UpdateProductRequest**](UpdateProductRequest.md) |  | [optional] |

### Return type

[**UpdateProductResponse200**](UpdateProductResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

