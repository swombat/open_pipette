# OpenPipette::PipelineRequest1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the pipeline | [optional] |
| **deal_probability** | **Float** |  | [optional] |
| **order_nr** | **Integer** | Defines the order of pipelines. First order (&#x60;order_nr&#x3D;0&#x60;) is the default pipeline. | [optional] |
| **active** | **Float** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PipelineRequest1.new(
  name: null,
  deal_probability: null,
  order_nr: null,
  active: null
)
```

