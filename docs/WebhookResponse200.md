# OpenPipette::WebhookResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **status** | **String** | The status of the response | [optional] |
| **data** | [**GetWebhooksResponse200AllOfDataInner**](GetWebhooksResponse200AllOfDataInner.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::WebhookResponse200.new(
  success: null,
  status: null,
  data: null
)
```

