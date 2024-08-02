# OpenPipette::AddActivityResponse200RelatedObjectsOrganizationORGANIZATIONID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_flag** | **Boolean** | Whether the associated organization is active or not | [optional] |
| **id** | **Integer** | The ID of the organization associated with the item | [optional] |
| **name** | **String** | The name of the organization associated with the item | [optional] |
| **people_count** | **Integer** | The number of people connected with the organization that is associated with the item | [optional] |
| **owner_id** | **Integer** | The ID of the owner of the organization that is associated with the item | [optional] |
| **address** | **String** | The address of the organization | [optional] |
| **cc_email** | **String** | The BCC email of the organization associated with the item | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddActivityResponse200RelatedObjectsOrganizationORGANIZATIONID.new(
  active_flag: null,
  id: null,
  name: null,
  people_count: null,
  owner_id: null,
  address: null,
  cc_email: null
)
```

