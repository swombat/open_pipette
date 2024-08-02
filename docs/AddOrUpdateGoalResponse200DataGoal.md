# OpenPipette::AddOrUpdateGoalResponse200DataGoal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the goal | [optional] |
| **owner_id** | **Integer** | The ID of the creator of the goal | [optional] |
| **title** | **String** | The title of the goal | [optional] |
| **type** | [**AddOrUpdateGoalResponse200DataGoalType**](AddOrUpdateGoalResponse200DataGoalType.md) |  | [optional] |
| **assignee** | [**AddOrUpdateGoalResponse200DataGoalAssignee**](AddOrUpdateGoalResponse200DataGoalAssignee.md) |  | [optional] |
| **interval** | **String** | The interval of the goal | [optional] |
| **duration** | [**AddOrUpdateGoalResponse200DataGoalDuration**](AddOrUpdateGoalResponse200DataGoalDuration.md) |  | [optional] |
| **expected_outcome** | [**AddOrUpdateGoalResponse200DataGoalExpectedOutcome**](AddOrUpdateGoalResponse200DataGoalExpectedOutcome.md) |  | [optional] |
| **is_active** | **Boolean** | Whether the goal is currently active or not | [optional] |
| **report_ids** | **Array&lt;String&gt;** | The IDs of the reports that belong to the goal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddOrUpdateGoalResponse200DataGoal.new(
  id: null,
  owner_id: null,
  title: null,
  type: null,
  assignee: null,
  interval: null,
  duration: null,
  expected_outcome: null,
  is_active: null,
  report_ids: null
)
```

