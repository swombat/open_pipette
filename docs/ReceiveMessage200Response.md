# OpenPipette::ReceiveMessage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**ReceiveMessageRequest**](ReceiveMessageRequest.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ReceiveMessage200Response.new(
  success: null,
  data: null
)
```

