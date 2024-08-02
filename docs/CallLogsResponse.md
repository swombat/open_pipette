# OpenPipette::CallLogsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;ResponseCallLogObject&gt;**](ResponseCallLogObject.md) |  | [optional] |
| **additional_data** | [**CallLogsResponseAdditionalData**](CallLogsResponseAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::CallLogsResponse.new(
  success: null,
  data: null,
  additional_data: null
)
```

