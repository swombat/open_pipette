# OpenPipette::GetPipelineMovementStatisticsResponse200AllOfDataNewDeals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The count of the deals | [optional] |
| **deals_ids** | **Array&lt;Integer&gt;** | The IDs of the deals that have been moved | [optional] |
| **values** | [**GetPipelineMovementStatisticsResponse200AllOfDataNewDealsValues**](GetPipelineMovementStatisticsResponse200AllOfDataNewDealsValues.md) |  | [optional] |
| **formatted_values** | [**GetPipelineMovementStatisticsResponse200AllOfDataNewDealsFormattedValues**](GetPipelineMovementStatisticsResponse200AllOfDataNewDealsFormattedValues.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPipelineMovementStatisticsResponse200AllOfDataNewDeals.new(
  count: null,
  deals_ids: null,
  values: null,
  formatted_values: null
)
```

