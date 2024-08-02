# OpenPipette::FailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **error** | **String** | The error message | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::FailResponse.new(
  success: null,
  error: null
)
```

