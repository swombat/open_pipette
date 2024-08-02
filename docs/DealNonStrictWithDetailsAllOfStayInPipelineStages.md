# OpenPipette::DealNonStrictWithDetailsAllOfStayInPipelineStages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **times_in_stages** | **Object** | The number of seconds a deal has been in each stage of the pipeline | [optional] |
| **order_of_stages** | **Array&lt;Integer&gt;** | The order of the deal progression through the pipeline stages | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DealNonStrictWithDetailsAllOfStayInPipelineStages.new(
  times_in_stages: null,
  order_of_stages: null
)
```

