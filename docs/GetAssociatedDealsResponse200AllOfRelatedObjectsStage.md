# OpenPipette::GetAssociatedDealsResponse200AllOfRelatedObjectsStage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the stage | [optional] |
| **order_nr** | **Integer** | Defines the order of the stage | [optional] |
| **name** | **String** | The name of the stage | [optional] |
| **active_flag** | **Boolean** | Whether the stage is active or deleted | [optional] |
| **deal_probability** | **Integer** | The success probability percentage of the deal. Used/shown when the deal weighted values are used. | [optional] |
| **pipeline_id** | **Integer** | The ID of the pipeline to add the stage to | [optional] |
| **rotten_flag** | **Boolean** | Whether deals in this stage can become rotten | [optional] |
| **rotten_days** | **Integer** | The number of days the deals not updated in this stage would become rotten. Applies only if the &#x60;rotten_flag&#x60; is set. | [optional] |
| **add_time** | **String** | The stage creation time. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The stage update time. Format: YYYY-MM-DD HH:MM:SS. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedDealsResponse200AllOfRelatedObjectsStage.new(
  id: null,
  order_nr: null,
  name: null,
  active_flag: null,
  deal_probability: null,
  pipeline_id: null,
  rotten_flag: null,
  rotten_days: null,
  add_time: null,
  update_time: null
)
```

