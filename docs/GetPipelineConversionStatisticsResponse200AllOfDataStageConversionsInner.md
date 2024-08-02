# OpenPipette::GetPipelineConversionStatisticsResponse200AllOfDataStageConversionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_stage_id** | **Integer** | The stage ID from where conversion starts | [optional] |
| **to_stage_id** | **Integer** | The stage ID to where conversion ends | [optional] |
| **conversion_rate** | **Integer** | The conversion rate | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPipelineConversionStatisticsResponse200AllOfDataStageConversionsInner.new(
  from_stage_id: null,
  to_stage_id: null,
  conversion_rate: null
)
```

