# OpenPipette::AddOrganizationRelationshipRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **Integer** | The ID of the base organization for the returned calculated values | [optional] |
| **type** | **String** | The type of organization relationship |  |
| **rel_owner_org_id** | **Integer** | The owner of the relationship. If type is &#x60;parent&#x60;, then the owner is the parent and the linked organization is the daughter. |  |
| **rel_linked_org_id** | **Integer** | The linked organization in the relationship. If type is &#x60;parent&#x60;, then the linked organization is the daughter. |  |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddOrganizationRelationshipRequest.new(
  org_id: null,
  type: null,
  rel_owner_org_id: null,
  rel_linked_org_id: null
)
```

