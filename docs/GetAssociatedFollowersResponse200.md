# OpenPipette::GetAssociatedFollowersResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetAssociatedFollowersResponse200AllOfDataInner&gt;**](GetAssociatedFollowersResponse200AllOfDataInner.md) | The list of followers | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedFollowersResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

