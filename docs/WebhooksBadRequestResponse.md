# OpenPipette::WebhooksBadRequestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **status** | **String** | The status of the response | [optional] |
| **errors** | **Object** | List of errors | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::WebhooksBadRequestResponse.new(
  success: null,
  status: null,
  errors: null
)
```

