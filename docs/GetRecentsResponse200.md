# OpenPipette::GetRecentsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetRecentsResponse200DataInner&gt;**](GetRecentsResponse200DataInner.md) |  | [optional] |
| **additional_data** | [**GetRecentsResponse200AdditionalData**](GetRecentsResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRecentsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

