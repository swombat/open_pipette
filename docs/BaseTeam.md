# OpenPipette::BaseTeam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The team ID | [optional] |
| **name** | **String** | The team name | [optional] |
| **description** | **String** | The team description | [optional] |
| **manager_id** | **Integer** | The team manager ID | [optional] |
| **users** | **Array&lt;Integer&gt;** | The list of user IDs | [optional] |
| **active_flag** | **Float** |  | [optional] |
| **deleted_flag** | **Float** |  | [optional] |
| **add_time** | **String** | The team creation time. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **created_by_user_id** | **Integer** | The ID of the user who created the team | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BaseTeam.new(
  id: null,
  name: null,
  description: null,
  manager_id: null,
  users: null,
  active_flag: null,
  deleted_flag: null,
  add_time: null,
  created_by_user_id: null
)
```

