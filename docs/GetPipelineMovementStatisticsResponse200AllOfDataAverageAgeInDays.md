# OpenPipette::GetPipelineMovementStatisticsResponse200AllOfDataAverageAgeInDays

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **across_all_stages** | **Integer** | The moved deals average age across all stages | [optional] |
| **by_stages** | [**Array&lt;GetPipelineMovementStatisticsResponse200AllOfDataAverageAgeInDaysByStagesInner&gt;**](GetPipelineMovementStatisticsResponse200AllOfDataAverageAgeInDaysByStagesInner.md) | The moved deals average age by stages | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPipelineMovementStatisticsResponse200AllOfDataAverageAgeInDays.new(
  across_all_stages: null,
  by_stages: null
)
```

