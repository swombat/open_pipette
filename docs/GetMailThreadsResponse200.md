# OpenPipette::GetMailThreadsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;BaseMailThread&gt;**](BaseMailThread.md) | The array of mail threads | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetMailThreadsResponse200.new(
  success: null,
  data: null
)
```

