# OpenPipette::AddOrUpdateGoalResponse200DataGoalTypeParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **Array&lt;Integer&gt;** | The IDs of pipelines of the goal | [optional] |
| **activity_type_id** | **Array&lt;Integer&gt;** | The IDs of activity types of the goal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddOrUpdateGoalResponse200DataGoalTypeParams.new(
  pipeline_id: null,
  activity_type_id: null
)
```

