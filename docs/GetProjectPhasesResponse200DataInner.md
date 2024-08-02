# OpenPipette::GetProjectPhasesResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project phase | [optional] |
| **name** | **String** | Name of a project phase | [optional] |
| **board_id** | **Float** | The ID of the project board this phase is linked to | [optional] |
| **order_nr** | **Float** | The order of a phase | [optional] |
| **add_time** | **String** | The creation date and time of the board in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The update date and time of the board in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetProjectPhasesResponse200DataInner.new(
  id: null,
  name: null,
  board_id: null,
  order_nr: null,
  add_time: null,
  update_time: null
)
```

