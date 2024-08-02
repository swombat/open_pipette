# OpenPipette::GetStagesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;GetStagesResponse200DataInner&gt;**](GetStagesResponse200DataInner.md) | The array of stages | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetStagesResponse200.new(
  success: null,
  data: null
)
```

