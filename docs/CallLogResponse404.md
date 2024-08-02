# OpenPipette::CallLogResponse404

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** | The description of the error | [optional] |
| **error_info** | **String** | A message describing how to solve the problem | [optional] |
| **data** | **Object** |  | [optional] |
| **additional_data** | **Object** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::CallLogResponse404.new(
  success: false,
  error: A resource required for this operation was not found.,
  error_info: Please check developers.pipedrive.com for more information about Pipedrive API.,
  data: null,
  additional_data: null
)
```

