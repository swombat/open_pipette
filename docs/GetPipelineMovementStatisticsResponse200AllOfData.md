# OpenPipette::GetPipelineMovementStatisticsResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **movements_between_stages** | [**GetPipelineMovementStatisticsResponse200AllOfDataMovementsBetweenStages**](GetPipelineMovementStatisticsResponse200AllOfDataMovementsBetweenStages.md) |  | [optional] |
| **new_deals** | [**GetPipelineMovementStatisticsResponse200AllOfDataNewDeals**](GetPipelineMovementStatisticsResponse200AllOfDataNewDeals.md) |  | [optional] |
| **deals_left_open** | [**GetPipelineMovementStatisticsResponse200AllOfDataNewDeals**](GetPipelineMovementStatisticsResponse200AllOfDataNewDeals.md) |  | [optional] |
| **won_deals** | [**GetPipelineMovementStatisticsResponse200AllOfDataNewDeals**](GetPipelineMovementStatisticsResponse200AllOfDataNewDeals.md) |  | [optional] |
| **lost_deals** | [**GetPipelineMovementStatisticsResponse200AllOfDataNewDeals**](GetPipelineMovementStatisticsResponse200AllOfDataNewDeals.md) |  | [optional] |
| **average_age_in_days** | [**GetPipelineMovementStatisticsResponse200AllOfDataAverageAgeInDays**](GetPipelineMovementStatisticsResponse200AllOfDataAverageAgeInDays.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPipelineMovementStatisticsResponse200AllOfData.new(
  movements_between_stages: null,
  new_deals: null,
  deals_left_open: null,
  won_deals: null,
  lost_deals: null,
  average_age_in_days: null
)
```

