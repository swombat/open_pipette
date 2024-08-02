# OpenPipette::GetLeadLabelsResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the lead label | [optional] |
| **name** | **String** | The name of the lead label | [optional] |
| **color** | **String** | The color of the label. Only a subset of colors can be used. | [optional] |
| **add_time** | **Time** | The date and time of when the lead label was created. In ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **update_time** | **Time** | The date and time of when the lead label was last updated. In ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetLeadLabelsResponse200DataInner.new(
  id: null,
  name: null,
  color: null,
  add_time: null,
  update_time: null
)
```

