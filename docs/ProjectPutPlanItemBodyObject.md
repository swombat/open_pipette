# OpenPipette::ProjectPutPlanItemBodyObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phase_id** | **Float** | The ID of a phase on a project board | [optional] |
| **group_id** | **Float** | The ID of a group on a project board | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ProjectPutPlanItemBodyObject.new(
  phase_id: null,
  group_id: null
)
```

