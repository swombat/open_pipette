# OpenPipette::RoleAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_role_id** | **Integer** | The ID of the parent role | [optional] |
| **name** | **String** | The name of the role | [optional] |
| **user_id** | **Integer** | The user ID | [optional] |
| **role_id** | **Integer** | The role ID | [optional] |
| **active_flag** | **Boolean** | Whether the role is active or not | [optional] |
| **type** | **String** | The assignment type | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::RoleAssignment.new(
  parent_role_id: null,
  name: null,
  user_id: null,
  role_id: null,
  active_flag: null,
  type: null
)
```

