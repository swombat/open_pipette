# OpenPipette::UpdatePipelineResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline | [optional] |
| **name** | **String** | The name of the pipeline | [optional] |
| **url_title** | **String** | The pipeline title displayed in the URL | [optional] |
| **order_nr** | **Integer** | Defines the order of pipelines. First order (&#x60;order_nr&#x3D;0&#x60;) is the default pipeline. | [optional] |
| **active** | **Boolean** | Whether this pipeline will be made inactive (hidden) or active | [optional] |
| **deal_probability** | **Boolean** | Whether deal probability is disabled or enabled for this pipeline | [optional] |
| **add_time** | **String** | The pipeline creation time. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The pipeline update time. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **selected** | **Boolean** | A boolean that shows if the pipeline is selected from a filter or not | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdatePipelineResponse200AllOfData.new(
  id: null,
  name: null,
  url_title: null,
  order_nr: null,
  active: null,
  deal_probability: null,
  add_time: null,
  update_time: null,
  selected: null
)
```

