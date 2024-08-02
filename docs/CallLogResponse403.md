# OpenPipette::CallLogResponse403

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

instance = OpenPipette::CallLogResponse403.new(
  success: false,
  error: You don&#39;t have permission to change this resource.,
  error_info: Please check developers.pipedrive.com for more information about Pipedrive API.,
  data: null,
  additional_data: null
)
```

