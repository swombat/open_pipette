# OpenPipette::AddOrganizationRelationshipResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization relationship | [optional] |
| **type** | **String** | The type of the relationship | [optional] |
| **rel_owner_org_id** | [**RelationshipOrganizationInfoItem**](RelationshipOrganizationInfoItem.md) |  | [optional] |
| **rel_linked_org_id** | [**RelationshipOrganizationInfoItem**](RelationshipOrganizationInfoItem.md) |  | [optional] |
| **add_time** | **String** | The creation date and time of the relationship | [optional] |
| **update_time** | **String** | The last updated date and time of the relationship | [optional] |
| **active_flag** | **String** | Whether the relationship is active or not | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddOrganizationRelationshipResponse200AllOfData.new(
  id: null,
  type: null,
  rel_owner_org_id: null,
  rel_linked_org_id: null,
  add_time: null,
  update_time: null,
  active_flag: null
)
```

