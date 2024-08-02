# OpenPipette::GetAssociatedFilesResponse2001

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetAssociatedFilesResponse2001AllOfDataInner&gt;**](GetAssociatedFilesResponse2001AllOfDataInner.md) | The array of files | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedFilesResponse2001.new(
  success: null,
  data: null,
  additional_data: null
)
```

