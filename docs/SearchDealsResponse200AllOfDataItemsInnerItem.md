# OpenPipette::SearchDealsResponse200AllOfDataItemsInnerItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal | [optional] |
| **type** | **String** | The type of the item | [optional] |
| **title** | **String** | The title of the deal | [optional] |
| **value** | **Integer** | The value of the deal | [optional] |
| **currency** | **String** | The currency of the deal | [optional] |
| **status** | **String** | The status of the deal | [optional] |
| **visible_to** | **Integer** | The visibility of the deal | [optional] |
| **owner** | [**SearchDealsResponse200AllOfDataItemsInnerItemOwner**](SearchDealsResponse200AllOfDataItemsInnerItemOwner.md) |  | [optional] |
| **stage** | [**SearchDealsResponse200AllOfDataItemsInnerItemStage**](SearchDealsResponse200AllOfDataItemsInnerItemStage.md) |  | [optional] |
| **person** | [**SearchDealsResponse200AllOfDataItemsInnerItemPerson**](SearchDealsResponse200AllOfDataItemsInnerItemPerson.md) |  | [optional] |
| **organization** | [**SearchDealsResponse200AllOfDataItemsInnerItemOrganization**](SearchDealsResponse200AllOfDataItemsInnerItemOrganization.md) |  | [optional] |
| **custom_fields** | **Array&lt;String&gt;** | Custom fields | [optional] |
| **notes** | **Array&lt;String&gt;** | An array of notes | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchDealsResponse200AllOfDataItemsInnerItem.new(
  id: null,
  type: null,
  title: null,
  value: null,
  currency: null,
  status: null,
  visible_to: null,
  owner: null,
  stage: null,
  person: null,
  organization: null,
  custom_fields: null,
  notes: null
)
```

