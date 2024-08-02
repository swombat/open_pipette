# OpenPipette::AddProjectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the project |  |
| **board_id** | **Float** | The ID of a project board |  |
| **phase_id** | **Float** | The ID of a phase on a project board |  |
| **description** | **String** | The description of the project | [optional] |
| **status** | **String** | The status of the project | [optional] |
| **owner_id** | **Float** | The ID of a project owner | [optional] |
| **start_date** | **Date** | The start date of the project. Format: YYYY-MM-DD. | [optional] |
| **end_date** | **Date** | The end date of the project. Format: YYYY-MM-DD. | [optional] |
| **deal_ids** | **Array&lt;Integer&gt;** | An array of IDs of the deals this project is associated with | [optional] |
| **org_id** | **Float** | The ID of the organization this project is associated with | [optional] |
| **person_id** | **Float** | The ID of the person this project is associated with | [optional] |
| **labels** | **Array&lt;Integer&gt;** | An array of IDs of the labels this project has | [optional] |
| **template_id** | **Float** | The ID of the template the project will be based on | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddProjectRequest.new(
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
  template_id: null
)
```

