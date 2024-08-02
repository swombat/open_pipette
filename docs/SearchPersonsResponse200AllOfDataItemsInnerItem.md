# OpenPipette::SearchPersonsResponse200AllOfDataItemsInnerItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person | [optional] |
| **type** | **String** | The type of the item | [optional] |
| **name** | **String** | The name of the person | [optional] |
| **phones** | **Array&lt;String&gt;** | An array of phone numbers | [optional] |
| **emails** | **Array&lt;String&gt;** | An array of email addresses | [optional] |
| **visible_to** | **Integer** | The visibility of the person | [optional] |
| **owner** | [**SearchPersonsResponse200AllOfDataItemsInnerItemOwner**](SearchPersonsResponse200AllOfDataItemsInnerItemOwner.md) |  | [optional] |
| **organization** | [**SearchPersonsResponse200AllOfDataItemsInnerItemOrganization**](SearchPersonsResponse200AllOfDataItemsInnerItemOrganization.md) |  | [optional] |
| **custom_fields** | **Array&lt;String&gt;** | Custom fields | [optional] |
| **notes** | **Array&lt;String&gt;** | An array of notes | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchPersonsResponse200AllOfDataItemsInnerItem.new(
  id: null,
  type: null,
  name: null,
  phones: null,
  emails: null,
  visible_to: null,
  owner: null,
  organization: null,
  custom_fields: null,
  notes: null
)
```

