# OpenPipette::AddLeadLabelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the lead label |  |
| **color** | **String** | The color of the label. Only a subset of colors can be used. |  |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddLeadLabelRequest.new(
  name: null,
  color: null
)
```

