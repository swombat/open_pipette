# OpenPipette::TemplateResponseObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | The ID of a template | [optional] |
| **title** | **String** | The title of a template | [optional] |
| **description** | **String** | The description of a template | [optional] |
| **projects_board_id** | **Float** | The ID of the project board this template is associated with | [optional] |
| **owner_id** | **Float** | The ID of a template owner | [optional] |
| **add_time** | **String** | The creation date and time of the template in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The update date and time of the template in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::TemplateResponseObject.new(
  id: null,
  title: null,
  description: null,
  projects_board_id: null,
  owner_id: null,
  add_time: null,
  update_time: null
)
```

