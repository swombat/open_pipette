# OpenPipette::UpdateStageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the stage | [optional] |
| **pipeline_id** | **Integer** | The ID of the pipeline to add stage to | [optional] |
| **deal_probability** | **Integer** | The success probability percentage of the deal. Used/shown when deal weighted values are used. | [optional] |
| **rotten_flag** | **Boolean** | Whether deals in this stage can become rotten | [optional] |
| **rotten_days** | **Integer** | The number of days the deals not updated in this stage would become rotten. Applies only if the &#x60;rotten_flag&#x60; is set. | [optional] |
| **order_nr** | **Integer** | An order number for this stage. Order numbers should be used to order the stages in the pipeline. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateStageRequest.new(
  name: null,
  pipeline_id: null,
  deal_probability: null,
  rotten_flag: null,
  rotten_days: null,
  order_nr: null
)
```

