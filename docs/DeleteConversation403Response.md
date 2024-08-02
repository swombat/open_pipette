# OpenPipette::DeleteConversation403Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** | The error description | [optional] |
| **error_info** | **String** |  | [optional] |
| **additional_data** | [**DeleteConversation403ResponseAdditionalData**](DeleteConversation403ResponseAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DeleteConversation403Response.new(
  success: false,
  error: Only the app owner can delete conversations,
  error_info: Please check the reference docs in https://developers.pipedrive.com/docs/api/v1,
  additional_data: null
)
```

