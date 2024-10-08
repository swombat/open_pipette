# OpenPipette::ProjectResponseObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the project, generated when the task was created | [optional] |
| **title** | **String** | The title of the project | [optional] |
| **board_id** | **Float** | The ID of the board this project is associated with | [optional] |
| **phase_id** | **Float** | The ID of the phase this project is associated with | [optional] |
| **description** | **String** | The description of the project | [optional] |
| **status** | **String** | The status of the project | [optional] |
| **owner_id** | **Float** | The ID of a project owner | [optional] |
| **start_date** | **Date** | The start date of the project. Format: YYYY-MM-DD. | [optional] |
| **end_date** | **Date** | The end date of the project. Format: YYYY-MM-DD. | [optional] |
| **deal_ids** | **Array&lt;Integer&gt;** | An array of IDs of the deals this project is associated with | [optional] |
| **org_id** | **Float** | The ID of the organization this project is associated with | [optional] |
| **person_id** | **Float** | The ID of the person this project is associated with | [optional] |
| **labels** | **Array&lt;Integer&gt;** | An array of IDs of the labels this project has | [optional] |
| **add_time** | **String** | The creation date and time of the project in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The update date and time of the project in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **status_change_time** | **String** | The status changed date and time of the project in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **archive_time** | **String** | The archived date and time of the project in UTC. Format: YYYY-MM-DD HH:MM:SS. If not archived then &#39;null&#39;. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ProjectResponseObject.new(
  id: null,
  title: null,
  board_id: null,
  phase_id: null,
  description: null,
  status: null,
  owner_id: null,
  start_date: null,
  end_date: null,
  deal_ids: null,
  org_id: null,
  person_id: null,
  labels: null,
  add_time: null,
  update_time: null,
  status_change_time: null,
  archive_time: null
)
```

