# OpenPipette::GetCommentsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;GetCommentsResponse200DataInner&gt;**](GetCommentsResponse200DataInner.md) | The array of comments | [optional] |
| **additional_data** | [**GetNotesResponse200AdditionalData**](GetNotesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetCommentsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

