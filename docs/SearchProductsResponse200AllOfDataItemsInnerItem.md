# OpenPipette::SearchProductsResponse200AllOfDataItemsInnerItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product | [optional] |
| **type** | **String** | The type of the item | [optional] |
| **name** | **String** | The name of the product | [optional] |
| **code** | **Integer** | The code of the product | [optional] |
| **visible_to** | **Integer** | The visibility of the product | [optional] |
| **owner** | [**SearchProductsResponse200AllOfDataItemsInnerItemOwner**](SearchProductsResponse200AllOfDataItemsInnerItemOwner.md) |  | [optional] |
| **custom_fields** | **Array&lt;String&gt;** | The custom fields | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchProductsResponse200AllOfDataItemsInnerItem.new(
  id: null,
  type: null,
  name: null,
  code: null,
  visible_to: null,
  owner: null,
  custom_fields: null
)
```

