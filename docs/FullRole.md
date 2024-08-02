# OpenPipette::FullRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_role_id** | **Integer** | The ID of the parent role | [optional] |
| **name** | **String** | The name of the role | [optional] |
| **id** | **Integer** | The ID of the role | [optional] |
| **active_flag** | **Boolean** | Whether the role is active or not | [optional] |
| **assignment_count** | **String** | The number of users assigned to this role | [optional] |
| **sub_role_count** | **String** | The number of sub-roles | [optional] |
| **level** | **Integer** | The level of role in the role hierarchy | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::FullRole.new(
  parent_role_id: null,
  name: null,
  id: null,
  active_flag: null,
  assignment_count: null,
  sub_role_count: null,
  level: null
)
```

