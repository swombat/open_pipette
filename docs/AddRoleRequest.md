# OpenPipette::AddRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the role |  |
| **parent_role_id** | **Integer** | The ID of the parent role | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddRoleRequest.new(
  name: null,
  parent_role_id: null
)
```

