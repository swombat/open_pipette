# OpenPipette::ReceiveMessage400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** | The error description | [optional] |
| **error_info** | **String** |  | [optional] |
| **additional_data** | [**ReceiveMessage400ResponseAdditionalData**](ReceiveMessage400ResponseAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ReceiveMessage400Response.new(
  success: false,
  error: Expected { id: string; sender_id: string; conversation_id: string; conversation_link?: string; channel_id: string; created_at: string; message: string; status: unknown; attachments: { id: string; type: string; name: string | null; size: number | null; url: string; preview_url: string | null; }[]; reply_by?: string | null; }, but was incompatible,
  error_info: Please check the reference docs in https://developers.pipedrive.com/docs/api/v1,
  additional_data: null
)
```

