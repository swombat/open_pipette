# OpenPipette::GetProjectPlanResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **Float** | ID of plan item (either activity or task ID) | [optional] |
| **item_type** | **String** | Type of a plan item (task / activity) | [optional] |
| **phase_id** | **Float** | The ID of the board this project is associated with. If null then plan item is not in any phase. | [optional] |
| **group_id** | **Float** | The ID of the board this project is associated with. If null then plan item is not in any group. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetProjectPlanResponse200DataInner.new(
  item_id: null,
  item_type: null,
  phase_id: null,
  group_id: null
)
```

