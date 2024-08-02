# OpenPipette::GetWebhooksResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **status** | **String** | The status of the response | [optional] |
| **data** | [**Array&lt;GetWebhooksResponse200AllOfDataInner&gt;**](GetWebhooksResponse200AllOfDataInner.md) | The array of Webhooks | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetWebhooksResponse200.new(
  success: null,
  status: null,
  data: null
)
```

