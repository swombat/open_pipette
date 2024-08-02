# OpenPipette::UpdateLeadLabelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the lead label | [optional] |
| **color** | **String** | The color of the label. Only a subset of colors can be used. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateLeadLabelRequest.new(
  name: null,
  color: null
)
```

