# OpenPipette::GetPipelineConversionStatisticsResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage_conversions** | [**Array&lt;GetPipelineConversionStatisticsResponse200AllOfDataStageConversionsInner&gt;**](GetPipelineConversionStatisticsResponse200AllOfDataStageConversionsInner.md) | The stage conversions | [optional] |
| **won_conversion** | **Integer** | The won conversion | [optional] |
| **lost_conversion** | **Integer** | The lost conversion | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPipelineConversionStatisticsResponse200AllOfData.new(
  stage_conversions: null,
  won_conversion: null,
  lost_conversion: null
)
```

