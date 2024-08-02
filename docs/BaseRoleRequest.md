# OpenPipette::BaseRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_role_id** | **Integer** | The ID of the parent role | [optional] |
| **name** | **String** | The name of the role | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BaseRoleRequest.new(
  parent_role_id: null,
  name: null
)
```

