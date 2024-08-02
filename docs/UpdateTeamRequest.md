# OpenPipette::UpdateTeamRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The team name | [optional] |
| **description** | **String** | The team description | [optional] |
| **manager_id** | **Integer** | The team manager ID | [optional] |
| **users** | **Array&lt;Integer&gt;** | The list of user IDs | [optional] |
| **active_flag** | **Float** |  | [optional] |
| **deleted_flag** | **Float** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateTeamRequest.new(
  name: null,
  description: null,
  manager_id: null,
  users: null,
  active_flag: null,
  deleted_flag: null
)
```

