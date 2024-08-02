# OpenPipette::OrganizationRelationship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **Integer** | The ID of the base organization for the returned calculated values | [optional] |
| **type** | **String** | The type of organization relationship | [optional] |
| **rel_owner_org_id** | **Integer** | The owner of this relationship. If type is &#x60;parent&#x60;, then the owner is the parent and the linked organization is the daughter. | [optional] |
| **rel_linked_org_id** | **Integer** | The linked organization in this relationship. If type is &#x60;parent&#x60;, then the linked organization is the daughter. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::OrganizationRelationship.new(
  org_id: null,
  type: null,
  rel_owner_org_id: null,
  rel_linked_org_id: null
)
```

