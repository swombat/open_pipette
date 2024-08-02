# OpenPipette::UnathorizedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **error** | **String** | The error message | [optional] |
| **error_code** | **Integer** | The response error code | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UnathorizedResponse.new(
  success: null,
  error: null,
  error_code: null
)
```

