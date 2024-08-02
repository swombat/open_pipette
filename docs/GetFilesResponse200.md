# OpenPipette::GetFilesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;GetFilesResponse200DataInner&gt;**](GetFilesResponse200DataInner.md) | The array of all uploaded files | [optional] |
| **additional_data** | [**GetFilesResponse200AdditionalData**](GetFilesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetFilesResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

