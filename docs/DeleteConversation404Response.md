# OpenPipette::DeleteConversation404Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** | The error description | [optional] |
| **error_info** | **String** |  | [optional] |
| **additional_data** | [**DeleteConversation404ResponseAdditionalData**](DeleteConversation404ResponseAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DeleteConversation404Response.new(
  success: false,
  error: Channel not found.,
  error_info: Please check the reference docs in https://developers.pipedrive.com/docs/api/v1,
  additional_data: null
)
```

