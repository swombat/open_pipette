# OpenPipette::SearchOrganizationResponse200AllOfDataItemsInnerItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization | [optional] |
| **type** | **String** | The type of the item | [optional] |
| **name** | **String** | The name of the organization | [optional] |
| **address** | **String** | The address of the organization | [optional] |
| **visible_to** | **Integer** | The visibility of the organization | [optional] |
| **owner** | [**SearchDealsResponse200AllOfDataItemsInnerItemOwner**](SearchDealsResponse200AllOfDataItemsInnerItemOwner.md) |  | [optional] |
| **custom_fields** | **Array&lt;String&gt;** | Custom fields | [optional] |
| **notes** | **Array&lt;String&gt;** | An array of notes | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchOrganizationResponse200AllOfDataItemsInnerItem.new(
  id: null,
  type: null,
  name: null,
  address: null,
  visible_to: null,
  owner: null,
  custom_fields: null,
  notes: null
)
```

