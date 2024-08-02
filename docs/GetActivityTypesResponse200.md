# OpenPipette::GetActivityTypesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetActivityTypesResponse200AllOfDataInner&gt;**](GetActivityTypesResponse200AllOfDataInner.md) | The array of activity types | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetActivityTypesResponse200.new(
  success: null,
  data: null
)
```

