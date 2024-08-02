# OpenPipette::TaskResponseObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the task, generated when the task was created | [optional] |
| **title** | **String** | The title of the task | [optional] |
| **project_id** | **Float** | The ID of the project this task is associated with | [optional] |
| **description** | **String** | The description of the task | [optional] |
| **parent_task_id** | **Float** | The ID of a parent task. Can not be ID of a task which is already a subtask. | [optional] |
| **assignee_id** | **Float** | The ID of the user who will be the assignee of the task | [optional] |
| **done** | **Float** |  | [optional] |
| **due_date** | **Date** | The due date of the task. Format: YYYY-MM-DD. | [optional] |
| **creator_id** | **Float** | The creator of a task | [optional] |
| **add_time** | **String** | The creation date and time of the task in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The update date and time of the task in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **marked_as_done_time** | **String** | The marked as done date and time of the task in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::TaskResponseObject.new(
  id: null,
  title: null,
  project_id: null,
  description: null,
  parent_task_id: null,
  assignee_id: null,
  done: null,
  due_date: null,
  creator_id: null,
  add_time: null,
  update_time: null,
  marked_as_done_time: null
)
```

