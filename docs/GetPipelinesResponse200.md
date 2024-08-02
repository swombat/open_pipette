# OpenPipette::GetPipelinesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;BasePipelineWithSelectedFlag&gt;**](BasePipelineWithSelectedFlag.md) | Pipelines array | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPipelinesResponse200.new(
  success: null,
  data: null
)
```

