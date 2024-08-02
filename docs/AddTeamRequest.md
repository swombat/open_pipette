# OpenPipette::AddTeamRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The team name |  |
| **description** | **String** | The team description | [optional] |
| **manager_id** | **Integer** | The team manager ID |  |
| **users** | **Array&lt;Integer&gt;** | The list of user IDs | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddTeamRequest.new(
  name: null,
  description: null,
  manager_id: null,
  users: null
)
```

