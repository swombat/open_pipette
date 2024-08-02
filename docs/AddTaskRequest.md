# OpenPipette::AddTaskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the task |  |
| **project_id** | **Float** | The ID of a project |  |
| **description** | **String** | The description of the task | [optional] |
| **parent_task_id** | **Float** | The ID of a parent task. Can not be ID of a task which is already a subtask. | [optional] |
| **assignee_id** | **Float** | The ID of the user who will be the assignee of the task | [optional] |
| **done** | **Float** |  | [optional] |
| **due_date** | **Date** | The due date of the task. Format: YYYY-MM-DD. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddTaskRequest.new(
  title: null,
  project_id: null,
  description: null,
  parent_task_id: null,
  assignee_id: null,
  done: null,
  due_date: null
)
```

