# OpenPipette::RelationshipOrganizationInfoItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the organization associated with the item | [optional] |
| **people_count** | **Integer** | The number of people connected with the organization that is associated with the item | [optional] |
| **owner_id** | **Integer** | The ID of the owner of the organization that is associated with the item | [optional] |
| **address** | **String** | The address of the organization | [optional] |
| **cc_email** | **String** | The BCC email of the organization associated with the item | [optional] |
| **value** | **Integer** | The ID of the organization | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::RelationshipOrganizationInfoItem.new(
  name: null,
  people_count: null,
  owner_id: null,
  address: null,
  cc_email: null,
  value: null
)
```

