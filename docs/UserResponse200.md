# OpenPipette::UserResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**GetRecentsResponse200DataInnerAnyOf11Data**](GetRecentsResponse200DataInnerAnyOf11Data.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UserResponse200.new(
  success: null,
  data: null
)
```

