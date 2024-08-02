# OpenPipette::DealsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_deal**](DealsApi.md#add_deal) | **POST** /deals | Add a deal |
| [**add_deal_follower**](DealsApi.md#add_deal_follower) | **POST** /deals/{id}/followers | Add a follower to a deal |
| [**add_deal_participant**](DealsApi.md#add_deal_participant) | **POST** /deals/{id}/participants | Add a participant to a deal |
| [**add_deal_product**](DealsApi.md#add_deal_product) | **POST** /deals/{id}/products | Add a product to a deal |
| [**delete_deal**](DealsApi.md#delete_deal) | **DELETE** /deals/{id} | Delete a deal |
| [**delete_deal_follower**](DealsApi.md#delete_deal_follower) | **DELETE** /deals/{id}/followers/{follower_id} | Delete a follower from a deal |
| [**delete_deal_participant**](DealsApi.md#delete_deal_participant) | **DELETE** /deals/{id}/participants/{deal_participant_id} | Delete a participant from a deal |
| [**delete_deal_product**](DealsApi.md#delete_deal_product) | **DELETE** /deals/{id}/products/{product_attachment_id} | Delete an attached product from a deal |
| [**delete_deals**](DealsApi.md#delete_deals) | **DELETE** /deals | Delete multiple deals in bulk |
| [**duplicate_deal**](DealsApi.md#duplicate_deal) | **POST** /deals/{id}/duplicate | Duplicate deal |
| [**get_deal**](DealsApi.md#get_deal) | **GET** /deals/{id} | Get details of a deal |
| [**get_deal_activities**](DealsApi.md#get_deal_activities) | **GET** /deals/{id}/activities | List activities associated with a deal |
| [**get_deal_changelog**](DealsApi.md#get_deal_changelog) | **GET** /deals/{id}/changelog | List updates about deal field values |
| [**get_deal_files**](DealsApi.md#get_deal_files) | **GET** /deals/{id}/files | List files attached to a deal |
| [**get_deal_followers**](DealsApi.md#get_deal_followers) | **GET** /deals/{id}/followers | List followers of a deal |
| [**get_deal_mail_messages**](DealsApi.md#get_deal_mail_messages) | **GET** /deals/{id}/mailMessages | List mail messages associated with a deal |
| [**get_deal_participants**](DealsApi.md#get_deal_participants) | **GET** /deals/{id}/participants | List participants of a deal |
| [**get_deal_participants_changelog**](DealsApi.md#get_deal_participants_changelog) | **GET** /deals/{id}/participantsChangelog | List updates about participants of a deal |
| [**get_deal_persons**](DealsApi.md#get_deal_persons) | **GET** /deals/{id}/persons | List all persons associated with a deal |
| [**get_deal_products**](DealsApi.md#get_deal_products) | **GET** /deals/{id}/products | List products attached to a deal |
| [**get_deal_updates**](DealsApi.md#get_deal_updates) | **GET** /deals/{id}/flow | List updates about a deal |
| [**get_deal_users**](DealsApi.md#get_deal_users) | **GET** /deals/{id}/permittedUsers | List permitted users |
| [**get_deals**](DealsApi.md#get_deals) | **GET** /deals | Get all deals |
| [**get_deals_collection**](DealsApi.md#get_deals_collection) | **GET** /deals/collection | Get all deals (BETA) |
| [**get_deals_summary**](DealsApi.md#get_deals_summary) | **GET** /deals/summary | Get deals summary |
| [**get_deals_timeline**](DealsApi.md#get_deals_timeline) | **GET** /deals/timeline | Get deals timeline |
| [**merge_deals**](DealsApi.md#merge_deals) | **PUT** /deals/{id}/merge | Merge two deals |
| [**search_deals**](DealsApi.md#search_deals) | **GET** /deals/search | Search deals |
| [**update_deal**](DealsApi.md#update_deal) | **PUT** /deals/{id} | Update a deal |
| [**update_deal_product**](DealsApi.md#update_deal_product) | **PUT** /deals/{id}/products/{product_attachment_id} | Update the product attached to a deal |


## add_deal

> <DealResponse200> add_deal(opts)

Add a deal

Adds a new deal. All deals created through the Pipedrive API will have a `origin` set to `API`. Note that you can supply additional custom fields along with the request that are not described here. These custom fields are different for each Pipedrive account and can be recognized by long hashes as keys. To determine which custom fields exists, fetch the dealFields and look for `key` values. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/creating-a-deal\" target=\"_blank\" rel=\"noopener noreferrer\">adding a deal</a>.

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

api_instance = OpenPipette::DealsApi.new
opts = {
  add_deal_request: OpenPipette::AddDealRequest.new({title: 'title_example'}) # AddDealRequest | 
}

begin
  # Add a deal
  result = api_instance.add_deal(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal: #{e}"
end
```

#### Using the add_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DealResponse200>, Integer, Hash)> add_deal_with_http_info(opts)

```ruby
begin
  # Add a deal
  data, status_code, headers = api_instance.add_deal_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DealResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_deal_request** | [**AddDealRequest**](AddDealRequest.md) |  | [optional] |

### Return type

[**DealResponse200**](DealResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_deal_follower

> <AddDealFollowerResponse200> add_deal_follower(id, opts)

Add a follower to a deal

Adds a follower to a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  add_deal_follower_request: OpenPipette::AddDealFollowerRequest.new({user_id: 37}) # AddDealFollowerRequest | 
}

begin
  # Add a follower to a deal
  result = api_instance.add_deal_follower(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_follower: #{e}"
end
```

#### Using the add_deal_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddDealFollowerResponse200>, Integer, Hash)> add_deal_follower_with_http_info(id, opts)

```ruby
begin
  # Add a follower to a deal
  data, status_code, headers = api_instance.add_deal_follower_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddDealFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **add_deal_follower_request** | [**AddDealFollowerRequest**](AddDealFollowerRequest.md) |  | [optional] |

### Return type

[**AddDealFollowerResponse200**](AddDealFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_deal_participant

> <AddDealParticipantResponse200> add_deal_participant(id, opts)

Add a participant to a deal

Adds a participant to a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  add_deal_participant_request: OpenPipette::AddDealParticipantRequest.new({person_id: 37}) # AddDealParticipantRequest | 
}

begin
  # Add a participant to a deal
  result = api_instance.add_deal_participant(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_participant: #{e}"
end
```

#### Using the add_deal_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddDealParticipantResponse200>, Integer, Hash)> add_deal_participant_with_http_info(id, opts)

```ruby
begin
  # Add a participant to a deal
  data, status_code, headers = api_instance.add_deal_participant_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddDealParticipantResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **add_deal_participant_request** | [**AddDealParticipantRequest**](AddDealParticipantRequest.md) |  | [optional] |

### Return type

[**AddDealParticipantResponse200**](AddDealParticipantResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_deal_product

> <GetAddProductAttachementResponse200> add_deal_product(id, opts)

Add a product to a deal

Adds a product to a deal, creating a new item called a deal-product.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  add_deal_product_request: OpenPipette::AddDealProductRequest.new({product_id: 37, item_price: 3.56, quantity: 37}) # AddDealProductRequest | 
}

begin
  # Add a product to a deal
  result = api_instance.add_deal_product(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_product: #{e}"
end
```

#### Using the add_deal_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddProductAttachementResponse200>, Integer, Hash)> add_deal_product_with_http_info(id, opts)

```ruby
begin
  # Add a product to a deal
  data, status_code, headers = api_instance.add_deal_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddProductAttachementResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->add_deal_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **add_deal_product_request** | [**AddDealProductRequest**](AddDealProductRequest.md) |  | [optional] |

### Return type

[**GetAddProductAttachementResponse200**](GetAddProductAttachementResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_deal

> <DeleteDealResponse200> delete_deal(id)

Delete a deal

Marks a deal as deleted. After 30 days, the deal will be permanently deleted.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal

begin
  # Delete a deal
  result = api_instance.delete_deal(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal: #{e}"
end
```

#### Using the delete_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDealResponse200>, Integer, Hash)> delete_deal_with_http_info(id)

```ruby
begin
  # Delete a deal
  data, status_code, headers = api_instance.delete_deal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDealResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |

### Return type

[**DeleteDealResponse200**](DeleteDealResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_deal_follower

> <DeleteDealFollowerResponse200> delete_deal_follower(id, follower_id)

Delete a follower from a deal

Deletes a follower from a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
follower_id = 56 # Integer | The ID of the follower

begin
  # Delete a follower from a deal
  result = api_instance.delete_deal_follower(id, follower_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_follower: #{e}"
end
```

#### Using the delete_deal_follower_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDealFollowerResponse200>, Integer, Hash)> delete_deal_follower_with_http_info(id, follower_id)

```ruby
begin
  # Delete a follower from a deal
  data, status_code, headers = api_instance.delete_deal_follower_with_http_info(id, follower_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDealFollowerResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_follower_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **follower_id** | **Integer** | The ID of the follower |  |

### Return type

[**DeleteDealFollowerResponse200**](DeleteDealFollowerResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_deal_participant

> <DeleteDealParticipantResponse200> delete_deal_participant(id, deal_participant_id)

Delete a participant from a deal

Deletes a participant from a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
deal_participant_id = 56 # Integer | The ID of the participant of the deal

begin
  # Delete a participant from a deal
  result = api_instance.delete_deal_participant(id, deal_participant_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_participant: #{e}"
end
```

#### Using the delete_deal_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDealParticipantResponse200>, Integer, Hash)> delete_deal_participant_with_http_info(id, deal_participant_id)

```ruby
begin
  # Delete a participant from a deal
  data, status_code, headers = api_instance.delete_deal_participant_with_http_info(id, deal_participant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDealParticipantResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **deal_participant_id** | **Integer** | The ID of the participant of the deal |  |

### Return type

[**DeleteDealParticipantResponse200**](DeleteDealParticipantResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_deal_product

> <DeleteDealProductResponse200> delete_deal_product(id, product_attachment_id)

Delete an attached product from a deal

Deletes a product attachment from a deal, using the `product_attachment_id`.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
product_attachment_id = 56 # Integer | The product attachment ID

begin
  # Delete an attached product from a deal
  result = api_instance.delete_deal_product(id, product_attachment_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_product: #{e}"
end
```

#### Using the delete_deal_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDealProductResponse200>, Integer, Hash)> delete_deal_product_with_http_info(id, product_attachment_id)

```ruby
begin
  # Delete an attached product from a deal
  data, status_code, headers = api_instance.delete_deal_product_with_http_info(id, product_attachment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDealProductResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deal_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **product_attachment_id** | **Integer** | The product attachment ID |  |

### Return type

[**DeleteDealProductResponse200**](DeleteDealProductResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_deals

> <DeleteDealsResponse200> delete_deals(ids)

Delete multiple deals in bulk

Marks multiple deals as deleted. After 30 days, the deals will be permanently deleted.

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

api_instance = OpenPipette::DealsApi.new
ids = 'ids_example' # String | The comma-separated IDs that will be deleted

begin
  # Delete multiple deals in bulk
  result = api_instance.delete_deals(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deals: #{e}"
end
```

#### Using the delete_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDealsResponse200>, Integer, Hash)> delete_deals_with_http_info(ids)

```ruby
begin
  # Delete multiple deals in bulk
  data, status_code, headers = api_instance.delete_deals_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->delete_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated IDs that will be deleted |  |

### Return type

[**DeleteDealsResponse200**](DeleteDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## duplicate_deal

> <DuplicateDealResponse200> duplicate_deal(id)

Duplicate deal

Duplicates a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal

begin
  # Duplicate deal
  result = api_instance.duplicate_deal(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->duplicate_deal: #{e}"
end
```

#### Using the duplicate_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateDealResponse200>, Integer, Hash)> duplicate_deal_with_http_info(id)

```ruby
begin
  # Duplicate deal
  data, status_code, headers = api_instance.duplicate_deal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateDealResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->duplicate_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |

### Return type

[**DuplicateDealResponse200**](DuplicateDealResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal

> <GetDealResponse200> get_deal(id)

Get details of a deal

Returns the details of a specific deal. Note that this also returns some additional fields which are not present when asking for all deals – such as deal age and stay in pipeline stages. Also note that custom fields appear as long hashes in the resulting data. These hashes can be mapped against the `key` value of dealFields. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/getting-details-of-a-deal\" target=\"_blank\" rel=\"noopener noreferrer\">getting details of a deal</a>.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal

begin
  # Get details of a deal
  result = api_instance.get_deal(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal: #{e}"
end
```

#### Using the get_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealResponse200>, Integer, Hash)> get_deal_with_http_info(id)

```ruby
begin
  # Get details of a deal
  data, status_code, headers = api_instance.get_deal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |

### Return type

[**GetDealResponse200**](GetDealResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_activities

> <GetDealActivitiesResponse200> get_deal_activities(id, opts)

List activities associated with a deal

Lists activities associated with a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  done: 0, # Float | Whether the activity is done or not. 0 = Not done, 1 = Done. If omitted, returns both Done and Not done activities.
  exclude: 'exclude_example' # String | A comma-separated string of activity IDs to exclude from result
}

begin
  # List activities associated with a deal
  result = api_instance.get_deal_activities(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_activities: #{e}"
end
```

#### Using the get_deal_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealActivitiesResponse200>, Integer, Hash)> get_deal_activities_with_http_info(id, opts)

```ruby
begin
  # List activities associated with a deal
  data, status_code, headers = api_instance.get_deal_activities_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealActivitiesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **done** | **Float** | Whether the activity is done or not. 0 &#x3D; Not done, 1 &#x3D; Done. If omitted, returns both Done and Not done activities. | [optional] |
| **exclude** | **String** | A comma-separated string of activity IDs to exclude from result | [optional] |

### Return type

[**GetDealActivitiesResponse200**](GetDealActivitiesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_changelog

> <GetChangelogResponse200> get_deal_changelog(id, opts)

List updates about deal field values

Lists updates about field values of a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 56 # Integer | Items shown per page
}

begin
  # List updates about deal field values
  result = api_instance.get_deal_changelog(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_changelog: #{e}"
end
```

#### Using the get_deal_changelog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChangelogResponse200>, Integer, Hash)> get_deal_changelog_with_http_info(id, opts)

```ruby
begin
  # List updates about deal field values
  data, status_code, headers = api_instance.get_deal_changelog_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChangelogResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_changelog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetChangelogResponse200**](GetChangelogResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_files

> <GetAssociatedFilesResponse200> get_deal_files(id, opts)

List files attached to a deal

Lists files associated with a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example' # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys). Supported fields: `id`, `user_id`, `deal_id`, `person_id`, `org_id`, `product_id`, `add_time`, `update_time`, `file_name`, `file_type`, `file_size`, `comment`.
}

begin
  # List files attached to a deal
  result = api_instance.get_deal_files(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_files: #{e}"
end
```

#### Using the get_deal_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFilesResponse200>, Integer, Hash)> get_deal_files_with_http_info(id, opts)

```ruby
begin
  # List files attached to a deal
  data, status_code, headers = api_instance.get_deal_files_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFilesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
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


## get_deal_followers

> <GetAssociatedFollowersResponse200> get_deal_followers(id)

List followers of a deal

Lists the followers of a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal

begin
  # List followers of a deal
  result = api_instance.get_deal_followers(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_followers: #{e}"
end
```

#### Using the get_deal_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedFollowersResponse200>, Integer, Hash)> get_deal_followers_with_http_info(id)

```ruby
begin
  # List followers of a deal
  data, status_code, headers = api_instance.get_deal_followers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedFollowersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |

### Return type

[**GetAssociatedFollowersResponse200**](GetAssociatedFollowersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_mail_messages

> <GetAssociatedMailMessagesResponse200> get_deal_mail_messages(id, opts)

List mail messages associated with a deal

Lists mail messages associated with a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List mail messages associated with a deal
  result = api_instance.get_deal_mail_messages(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_mail_messages: #{e}"
end
```

#### Using the get_deal_mail_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssociatedMailMessagesResponse200>, Integer, Hash)> get_deal_mail_messages_with_http_info(id, opts)

```ruby
begin
  # List mail messages associated with a deal
  data, status_code, headers = api_instance.get_deal_mail_messages_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssociatedMailMessagesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_mail_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetAssociatedMailMessagesResponse200**](GetAssociatedMailMessagesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_participants

> <GetDealParticipantsResponse200> get_deal_participants(id, opts)

List participants of a deal

Lists the participants associated with a deal.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the `data.marketing_status` field.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List participants of a deal
  result = api_instance.get_deal_participants(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_participants: #{e}"
end
```

#### Using the get_deal_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealParticipantsResponse200>, Integer, Hash)> get_deal_participants_with_http_info(id, opts)

```ruby
begin
  # List participants of a deal
  data, status_code, headers = api_instance.get_deal_participants_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealParticipantsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetDealParticipantsResponse200**](GetDealParticipantsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_participants_changelog

> <GetParticipantsChangelog200> get_deal_participants_changelog(id, opts)

List updates about participants of a deal

List updates about participants of a deal. This is a cursor-paginated endpoint. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  limit: 56, # Integer | Items shown per page
  cursor: 'cursor_example' # String | For pagination, the marker (an opaque string value) representing the first item on the next page
}

begin
  # List updates about participants of a deal
  result = api_instance.get_deal_participants_changelog(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_participants_changelog: #{e}"
end
```

#### Using the get_deal_participants_changelog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetParticipantsChangelog200>, Integer, Hash)> get_deal_participants_changelog_with_http_info(id, opts)

```ruby
begin
  # List updates about participants of a deal
  data, status_code, headers = api_instance.get_deal_participants_changelog_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetParticipantsChangelog200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_participants_changelog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **limit** | **Integer** | Items shown per page | [optional] |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |

### Return type

[**GetParticipantsChangelog200**](GetParticipantsChangelog200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_persons

> <ListPersonsResponse200> get_deal_persons(id, opts)

List all persons associated with a deal

Lists all persons associated with a deal, regardless of whether the person is the primary contact of the deal, or added as a participant.<br>If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the `data.marketing_status` field.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List all persons associated with a deal
  result = api_instance.get_deal_persons(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_persons: #{e}"
end
```

#### Using the get_deal_persons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPersonsResponse200>, Integer, Hash)> get_deal_persons_with_http_info(id, opts)

```ruby
begin
  # List all persons associated with a deal
  data, status_code, headers = api_instance.get_deal_persons_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPersonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_persons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**ListPersonsResponse200**](ListPersonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_products

> <ListProductsResponse200> get_deal_products(id, opts)

List products attached to a deal

Lists products attached to a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  include_product_data: 0 # Float | Whether to fetch product data along with each attached product (1) or not (0, default)
}

begin
  # List products attached to a deal
  result = api_instance.get_deal_products(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_products: #{e}"
end
```

#### Using the get_deal_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductsResponse200>, Integer, Hash)> get_deal_products_with_http_info(id, opts)

```ruby
begin
  # List products attached to a deal
  data, status_code, headers = api_instance.get_deal_products_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **include_product_data** | **Float** | Whether to fetch product data along with each attached product (1) or not (0, default) | [optional] |

### Return type

[**ListProductsResponse200**](ListProductsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_updates

> <GetDealUpdatesResponse200> get_deal_updates(id, opts)

List updates about a deal

Lists updates about a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  all_changes: 'all_changes_example', # String | Whether to show custom field updates or not. 1 = Include custom field changes. If omitted returns changes without custom field updates.
  items: 'items_example' # String | A comma-separated string for filtering out item specific updates. (Possible values - call, activity, plannedActivity, change, note, deal, file, dealChange, personChange, organizationChange, follower, dealFollower, personFollower, organizationFollower, participant, comment, mailMessage, mailMessageWithAttachment, invoice, document, marketing_campaign_stat, marketing_status_change).
}

begin
  # List updates about a deal
  result = api_instance.get_deal_updates(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_updates: #{e}"
end
```

#### Using the get_deal_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealUpdatesResponse200>, Integer, Hash)> get_deal_updates_with_http_info(id, opts)

```ruby
begin
  # List updates about a deal
  data, status_code, headers = api_instance.get_deal_updates_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealUpdatesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_updates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **all_changes** | **String** | Whether to show custom field updates or not. 1 &#x3D; Include custom field changes. If omitted returns changes without custom field updates. | [optional] |
| **items** | **String** | A comma-separated string for filtering out item specific updates. (Possible values - call, activity, plannedActivity, change, note, deal, file, dealChange, personChange, organizationChange, follower, dealFollower, personFollower, organizationFollower, participant, comment, mailMessage, mailMessageWithAttachment, invoice, document, marketing_campaign_stat, marketing_status_change). | [optional] |

### Return type

[**GetDealUpdatesResponse200**](GetDealUpdatesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_users

> <ListPermittedUsersResponse200> get_deal_users(id)

List permitted users

Lists the users permitted to access a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal

begin
  # List permitted users
  result = api_instance.get_deal_users(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_users: #{e}"
end
```

#### Using the get_deal_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPermittedUsersResponse200>, Integer, Hash)> get_deal_users_with_http_info(id)

```ruby
begin
  # List permitted users
  data, status_code, headers = api_instance.get_deal_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPermittedUsersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deal_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |

### Return type

[**ListPermittedUsersResponse200**](ListPermittedUsersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deals

> <GetDealsResponse200> get_deals(opts)

Get all deals

Returns all deals. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/getting-all-deals\" target=\"_blank\" rel=\"noopener noreferrer\">getting all deals</a>.

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

api_instance = OpenPipette::DealsApi.new
opts = {
  user_id: 56, # Integer | If supplied, only deals matching the given user will be returned. However, `filter_id` and `owned_by_you` takes precedence over `user_id` when supplied.
  filter_id: 56, # Integer | The ID of the filter to use
  stage_id: 56, # Integer | If supplied, only deals within the given stage will be returned
  status: 'open', # String | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  sort: 'sort_example', # String | The field names and sorting mode separated by a comma (`field_name_1 ASC`, `field_name_2 DESC`). Only first-level field keys are supported (no nested keys).
  owned_by_you: 0 # Float | When supplied, only deals owned by you are returned. However, `filter_id` takes precedence over `owned_by_you` when both are supplied.
}

begin
  # Get all deals
  result = api_instance.get_deals(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals: #{e}"
end
```

#### Using the get_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealsResponse200>, Integer, Hash)> get_deals_with_http_info(opts)

```ruby
begin
  # Get all deals
  data, status_code, headers = api_instance.get_deals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | If supplied, only deals matching the given user will be returned. However, &#x60;filter_id&#x60; and &#x60;owned_by_you&#x60; takes precedence over &#x60;user_id&#x60; when supplied. | [optional] |
| **filter_id** | **Integer** | The ID of the filter to use | [optional] |
| **stage_id** | **Integer** | If supplied, only deals within the given stage will be returned | [optional] |
| **status** | **String** | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included. | [optional][default to &#39;all_not_deleted&#39;] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **sort** | **String** | The field names and sorting mode separated by a comma (&#x60;field_name_1 ASC&#x60;, &#x60;field_name_2 DESC&#x60;). Only first-level field keys are supported (no nested keys). | [optional] |
| **owned_by_you** | **Float** | When supplied, only deals owned by you are returned. However, &#x60;filter_id&#x60; takes precedence over &#x60;owned_by_you&#x60; when both are supplied. | [optional] |

### Return type

[**GetDealsResponse200**](GetDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deals_collection

> <GetDealsCollectionResponse200> get_deals_collection(opts)

Get all deals (BETA)

Returns all deals. This is a cursor-paginated endpoint that is currently in BETA. For more information, please refer to our documentation on <a href=\"https://pipedrive.readme.io/docs/core-api-concepts-pagination\" target=\"_blank\" rel=\"noopener noreferrer\">pagination</a>. Please note that only global admins (those with global permissions) can access these endpoints. Users with regular permissions will receive a 403 response. Read more about global permissions <a href=\"https://support.pipedrive.com/en/article/global-user-management\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.

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

api_instance = OpenPipette::DealsApi.new
opts = {
  cursor: 'cursor_example', # String | For pagination, the marker (an opaque string value) representing the first item on the next page
  limit: 100, # Integer | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed.
  since: 'since_example', # String | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  _until: '_until_example', # String | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the `update_time` field.
  user_id: 56, # Integer | If supplied, only deals matching the given user will be returned
  stage_id: 56, # Integer | If supplied, only deals within the given stage will be returned
  status: 'open' # String | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included.
}

begin
  # Get all deals (BETA)
  result = api_instance.get_deals_collection(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_collection: #{e}"
end
```

#### Using the get_deals_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealsCollectionResponse200>, Integer, Hash)> get_deals_collection_with_http_info(opts)

```ruby
begin
  # Get all deals (BETA)
  data, status_code, headers = api_instance.get_deals_collection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealsCollectionResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | For pagination, the marker (an opaque string value) representing the first item on the next page | [optional] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. If not provided, 100 items will be returned. Please note that a maximum value of 500 is allowed. | [optional] |
| **since** | **String** | The time boundary that points to the start of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **_until** | **String** | The time boundary that points to the end of the range of data. Datetime in ISO 8601 format. E.g. 2022-11-01 08:55:59. Operates on the &#x60;update_time&#x60; field. | [optional] |
| **user_id** | **Integer** | If supplied, only deals matching the given user will be returned | [optional] |
| **stage_id** | **Integer** | If supplied, only deals within the given stage will be returned | [optional] |
| **status** | **String** | Only fetch deals with a specific status. If omitted, all not deleted deals are returned. If set to deleted, deals that have been deleted up to 30 days ago will be included. | [optional] |

### Return type

[**GetDealsCollectionResponse200**](GetDealsCollectionResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deals_summary

> <GetDealsSummaryResponse200> get_deals_summary(opts)

Get deals summary

Returns a summary of all the deals.

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

api_instance = OpenPipette::DealsApi.new
opts = {
  status: 'open', # String | Only fetch deals with a specific status. open = Open, won = Won, lost = Lost.
  filter_id: 56, # Integer | <code>user_id</code> will not be considered. Only deals matching the given filter will be returned.
  user_id: 56, # Integer | Only deals matching the given user will be returned. `user_id` will not be considered if you use `filter_id`.
  stage_id: 56 # Integer | Only deals within the given stage will be returned
}

begin
  # Get deals summary
  result = api_instance.get_deals_summary(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_summary: #{e}"
end
```

#### Using the get_deals_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealsSummaryResponse200>, Integer, Hash)> get_deals_summary_with_http_info(opts)

```ruby
begin
  # Get deals summary
  data, status_code, headers = api_instance.get_deals_summary_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealsSummaryResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Only fetch deals with a specific status. open &#x3D; Open, won &#x3D; Won, lost &#x3D; Lost. | [optional] |
| **filter_id** | **Integer** | &lt;code&gt;user_id&lt;/code&gt; will not be considered. Only deals matching the given filter will be returned. | [optional] |
| **user_id** | **Integer** | Only deals matching the given user will be returned. &#x60;user_id&#x60; will not be considered if you use &#x60;filter_id&#x60;. | [optional] |
| **stage_id** | **Integer** | Only deals within the given stage will be returned | [optional] |

### Return type

[**GetDealsSummaryResponse200**](GetDealsSummaryResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deals_timeline

> <GetDealsTimelineResponse200> get_deals_timeline(start_date, interval, amount, field_key, opts)

Get deals timeline

Returns open and won deals, grouped by a defined interval of time set in a date-type dealField (`field_key`) — e.g. when month is the chosen interval, and 3 months are asked starting from January 1st, 2012, deals are returned grouped into 3 groups — January, February and March — based on the value of the given `field_key`.

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

api_instance = OpenPipette::DealsApi.new
start_date = Date.parse('2013-10-20') # Date | The date when the first interval starts. Format: YYYY-MM-DD.
interval = 'day' # String | The type of the interval<table><tr><th>Value</th><th>Description</th></tr><tr><td>`day`</td><td>Day</td></tr><tr><td>`week`</td><td>A full week (7 days) starting from `start_date`</td></tr><tr><td>`month`</td><td>A full month (depending on the number of days in given month) starting from `start_date`</td></tr><tr><td>`quarter`</td><td>A full quarter (3 months) starting from `start_date`</td></tr></table>
amount = 56 # Integer | The number of given intervals, starting from `start_date`, to fetch. E.g. 3 (months).
field_key = 'field_key_example' # String | The date field key which deals will be retrieved from
opts = {
  user_id: 56, # Integer | If supplied, only deals matching the given user will be returned
  pipeline_id: 56, # Integer | If supplied, only deals matching the given pipeline will be returned
  filter_id: 56, # Integer | If supplied, only deals matching the given filter will be returned
  exclude_deals: 0, # Float | Whether to exclude deals list (1) or not (0). Note that when deals are excluded, the timeline summary (counts and values) is still returned.
  totals_convert_currency: 'totals_convert_currency_example' # String | The 3-letter currency code of any of the supported currencies. When supplied, `totals_converted` is returned per each interval which contains the currency-converted total amounts in the given currency. You may also set this parameter to `default_currency` in which case the user's default currency is used.
}

begin
  # Get deals timeline
  result = api_instance.get_deals_timeline(start_date, interval, amount, field_key, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_timeline: #{e}"
end
```

#### Using the get_deals_timeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDealsTimelineResponse200>, Integer, Hash)> get_deals_timeline_with_http_info(start_date, interval, amount, field_key, opts)

```ruby
begin
  # Get deals timeline
  data, status_code, headers = api_instance.get_deals_timeline_with_http_info(start_date, interval, amount, field_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDealsTimelineResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->get_deals_timeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | The date when the first interval starts. Format: YYYY-MM-DD. |  |
| **interval** | **String** | The type of the interval&lt;table&gt;&lt;tr&gt;&lt;th&gt;Value&lt;/th&gt;&lt;th&gt;Description&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;day&#x60;&lt;/td&gt;&lt;td&gt;Day&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;week&#x60;&lt;/td&gt;&lt;td&gt;A full week (7 days) starting from &#x60;start_date&#x60;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;month&#x60;&lt;/td&gt;&lt;td&gt;A full month (depending on the number of days in given month) starting from &#x60;start_date&#x60;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;quarter&#x60;&lt;/td&gt;&lt;td&gt;A full quarter (3 months) starting from &#x60;start_date&#x60;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt; |  |
| **amount** | **Integer** | The number of given intervals, starting from &#x60;start_date&#x60;, to fetch. E.g. 3 (months). |  |
| **field_key** | **String** | The date field key which deals will be retrieved from |  |
| **user_id** | **Integer** | If supplied, only deals matching the given user will be returned | [optional] |
| **pipeline_id** | **Integer** | If supplied, only deals matching the given pipeline will be returned | [optional] |
| **filter_id** | **Integer** | If supplied, only deals matching the given filter will be returned | [optional] |
| **exclude_deals** | **Float** | Whether to exclude deals list (1) or not (0). Note that when deals are excluded, the timeline summary (counts and values) is still returned. | [optional] |
| **totals_convert_currency** | **String** | The 3-letter currency code of any of the supported currencies. When supplied, &#x60;totals_converted&#x60; is returned per each interval which contains the currency-converted total amounts in the given currency. You may also set this parameter to &#x60;default_currency&#x60; in which case the user&#39;s default currency is used. | [optional] |

### Return type

[**GetDealsTimelineResponse200**](GetDealsTimelineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_deals

> <MergeDealsResponse200> merge_deals(id, opts)

Merge two deals

Merges a deal with another deal. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/merging-two-deals\" target=\"_blank\" rel=\"noopener noreferrer\">merging two deals</a>.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  merge_deals_request: OpenPipette::MergeDealsRequest.new({merge_with_id: 37}) # MergeDealsRequest | 
}

begin
  # Merge two deals
  result = api_instance.merge_deals(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->merge_deals: #{e}"
end
```

#### Using the merge_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MergeDealsResponse200>, Integer, Hash)> merge_deals_with_http_info(id, opts)

```ruby
begin
  # Merge two deals
  data, status_code, headers = api_instance.merge_deals_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MergeDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->merge_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **merge_deals_request** | [**MergeDealsRequest**](MergeDealsRequest.md) |  | [optional] |

### Return type

[**MergeDealsResponse200**](MergeDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_deals

> <SearchDealsResponse200> search_deals(term, opts)

Search deals

Searches all deals by title, notes and/or custom fields. This endpoint is a wrapper of <a href=\"https://developers.pipedrive.com/docs/api/v1/ItemSearch#searchItem\">/v1/itemSearch</a> with a narrower OAuth scope. Found deals can be filtered by the person ID and the organization ID.

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

api_instance = OpenPipette::DealsApi.new
term = 'term_example' # String | The search term to look for. Minimum 2 characters (or 1 if using `exact_match`). Please note that the search term has to be URL encoded.
opts = {
  fields: 'custom_fields', # String | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: `address`, `varchar`, `text`, `varchar_auto`, `double`, `monetary` and `phone`. Read more about searching by custom fields <a href=\"https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>.
  exact_match: true, # Boolean | When enabled, only full exact matches against the given term are returned. It is <b>not</b> case sensitive.
  person_id: 56, # Integer | Will filter deals by the provided person ID. The upper limit of found deals associated with the person is 2000.
  organization_id: 56, # Integer | Will filter deals by the provided organization ID. The upper limit of found deals associated with the organization is 2000.
  status: 'open', # String | Will filter deals by the provided specific status. open = Open, won = Won, lost = Lost. The upper limit of found deals associated with the status is 2000.
  include_fields: 'deal.cc_email', # String | Supports including optional fields in the results which are not provided by default
  start: 56, # Integer | Pagination start. Note that the pagination is based on main results and does not include related items when using `search_for_related_items` parameter.
  limit: 56 # Integer | Items shown per page
}

begin
  # Search deals
  result = api_instance.search_deals(term, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->search_deals: #{e}"
end
```

#### Using the search_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchDealsResponse200>, Integer, Hash)> search_deals_with_http_info(term, opts)

```ruby
begin
  # Search deals
  data, status_code, headers = api_instance.search_deals_with_http_info(term, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->search_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | The search term to look for. Minimum 2 characters (or 1 if using &#x60;exact_match&#x60;). Please note that the search term has to be URL encoded. |  |
| **fields** | **String** | A comma-separated string array. The fields to perform the search from. Defaults to all of them. Only the following custom field types are searchable: &#x60;address&#x60;, &#x60;varchar&#x60;, &#x60;text&#x60;, &#x60;varchar_auto&#x60;, &#x60;double&#x60;, &#x60;monetary&#x60; and &#x60;phone&#x60;. Read more about searching by custom fields &lt;a href&#x3D;\&quot;https://support.pipedrive.com/en/article/search-finding-what-you-need#searching-by-custom-fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;here&lt;/a&gt;. | [optional] |
| **exact_match** | **Boolean** | When enabled, only full exact matches against the given term are returned. It is &lt;b&gt;not&lt;/b&gt; case sensitive. | [optional] |
| **person_id** | **Integer** | Will filter deals by the provided person ID. The upper limit of found deals associated with the person is 2000. | [optional] |
| **organization_id** | **Integer** | Will filter deals by the provided organization ID. The upper limit of found deals associated with the organization is 2000. | [optional] |
| **status** | **String** | Will filter deals by the provided specific status. open &#x3D; Open, won &#x3D; Won, lost &#x3D; Lost. The upper limit of found deals associated with the status is 2000. | [optional] |
| **include_fields** | **String** | Supports including optional fields in the results which are not provided by default | [optional] |
| **start** | **Integer** | Pagination start. Note that the pagination is based on main results and does not include related items when using &#x60;search_for_related_items&#x60; parameter. | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**SearchDealsResponse200**](SearchDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_deal

> <DealResponse200> update_deal(id, opts)

Update a deal

Updates the properties of a deal. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/updating-a-deal\" target=\"_blank\" rel=\"noopener noreferrer\">updating a deal</a>.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
opts = {
  update_deal_request: OpenPipette::UpdateDealRequest.new # UpdateDealRequest | 
}

begin
  # Update a deal
  result = api_instance.update_deal(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->update_deal: #{e}"
end
```

#### Using the update_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DealResponse200>, Integer, Hash)> update_deal_with_http_info(id, opts)

```ruby
begin
  # Update a deal
  data, status_code, headers = api_instance.update_deal_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DealResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->update_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **update_deal_request** | [**UpdateDealRequest**](UpdateDealRequest.md) |  | [optional] |

### Return type

[**DealResponse200**](DealResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_deal_product

> <GetProductAttachementResponse200> update_deal_product(id, product_attachment_id, opts)

Update the product attached to a deal

Updates the details of the product that has been attached to a deal.

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

api_instance = OpenPipette::DealsApi.new
id = 56 # Integer | The ID of the deal
product_attachment_id = 56 # Integer | The ID of the deal-product (the ID of the product attached to the deal)
opts = {
  update_deal_product_request: OpenPipette::UpdateDealProductRequest.new # UpdateDealProductRequest | 
}

begin
  # Update the product attached to a deal
  result = api_instance.update_deal_product(id, product_attachment_id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->update_deal_product: #{e}"
end
```

#### Using the update_deal_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductAttachementResponse200>, Integer, Hash)> update_deal_product_with_http_info(id, product_attachment_id, opts)

```ruby
begin
  # Update the product attached to a deal
  data, status_code, headers = api_instance.update_deal_product_with_http_info(id, product_attachment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductAttachementResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealsApi->update_deal_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal |  |
| **product_attachment_id** | **Integer** | The ID of the deal-product (the ID of the product attached to the deal) |  |
| **update_deal_product_request** | [**UpdateDealProductRequest**](UpdateDealProductRequest.md) |  | [optional] |

### Return type

[**GetProductAttachementResponse200**](GetProductAttachementResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

