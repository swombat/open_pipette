# OpenPipette::SearchLeadsResponse200AllOfDataItemsInnerItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead | [optional] |
| **type** | **String** | The type of the item | [optional] |
| **title** | **String** | The title of the lead | [optional] |
| **owner** | [**SearchLeadsResponse200AllOfDataItemsInnerItemOwner**](SearchLeadsResponse200AllOfDataItemsInnerItemOwner.md) |  | [optional] |
| **person** | [**SearchLeadsResponse200AllOfDataItemsInnerItemPerson**](SearchLeadsResponse200AllOfDataItemsInnerItemPerson.md) |  | [optional] |
| **organization** | [**SearchLeadsResponse200AllOfDataItemsInnerItemOrganization**](SearchLeadsResponse200AllOfDataItemsInnerItemOrganization.md) |  | [optional] |
| **phones** | **Array&lt;String&gt;** |  | [optional] |
| **emails** | **Array&lt;String&gt;** |  | [optional] |
| **custom_fields** | **Array&lt;String&gt;** | Custom fields | [optional] |
| **notes** | **Array&lt;String&gt;** | An array of notes | [optional] |
| **value** | **Integer** | The value of the lead | [optional] |
| **currency** | **String** | The currency of the lead | [optional] |
| **visible_to** | **Integer** | The visibility of the lead | [optional] |
| **is_archived** | **Boolean** | A flag indicating whether the lead is archived or not | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchLeadsResponse200AllOfDataItemsInnerItem.new(
  id: null,
  type: null,
  title: null,
  owner: null,
  person: null,
  organization: null,
  phones: null,
  emails: null,
  custom_fields: null,
  notes: null,
  value: null,
  currency: null,
  visible_to: null,
  is_archived: null
)
```

