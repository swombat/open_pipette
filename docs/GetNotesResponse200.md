# OpenPipette::GetNotesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;GetNotesResponse200DataInner&gt;**](GetNotesResponse200DataInner.md) | The array of notes | [optional] |
| **additional_data** | [**GetNotesResponse200AdditionalData**](GetNotesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetNotesResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

