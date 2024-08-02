# OpenPipette::AddChannel400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** | The error description | [optional] |
| **error_info** | **String** |  | [optional] |
| **additional_data** | [**AddChannel400ResponseAdditionalData**](AddChannel400ResponseAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddChannel400Response.new(
  success: false,
  error: Expected { name: string; avatar_url?: string; provider_channel_id: string; }, but was incompatible,
  error_info: Please check the reference docs in https://developers.pipedrive.com/docs/api/v1,
  additional_data: null
)
```

